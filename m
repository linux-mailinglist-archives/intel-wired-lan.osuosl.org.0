Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 68E8DBB1E64
	for <lists+intel-wired-lan@lfdr.de>; Thu, 02 Oct 2025 00:00:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A4AB1841AA;
	Wed,  1 Oct 2025 22:00:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CeSlG2-Ol7O2; Wed,  1 Oct 2025 22:00:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E257A841A6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1759356031;
	bh=k8/1DhHvR7jTj+hDOJQIFPaCfiGPgsxhEprOHwCTj0U=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=EAVrh9pQowq0se3IF5J/CAk/o23lWheVeZkgYM+t00r9oaesy5xfjh4PSdP6GDrXd
	 XrN8kPN6+aJhGcnDqCEfTHDJQQYFpB2A/C3FvD0Mo6XQZDCQLem0sffrXHotByteY6
	 UsgzwwmDKG7tGVrOfm1fXvVWkAKx9nKCXzbWDI428aU2lGAShFbBR5Ko+ayjvC9U3w
	 UI3DDxVbiYcLs83NUjb1kBZrmcJjMpXmhzTW2Hmk1KUaAq3ELzjjZCz1b2FfSkmarD
	 Mbyxv9A253eLE1VuMdBpjntgbTWlnhNFeu5UbsXiPVjpqep51brii2kmbdPkh0VHsw
	 zfwhMklkzKi7w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id E257A841A6;
	Wed,  1 Oct 2025 22:00:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 448911CE
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Oct 2025 22:00:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 24E4141276
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Oct 2025 22:00:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DFAAm-s6M77J for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 Oct 2025 22:00:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org DD9B04127B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DD9B04127B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DD9B04127B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Oct 2025 22:00:28 +0000 (UTC)
X-CSE-ConnectionGUID: CYycM8NmSYeRYt77dzQy7A==
X-CSE-MsgGUID: ZwGMz00ASFWPGKsY0H7nKg==
X-IronPort-AV: E=McAfee;i="6800,10657,11569"; a="72312265"
X-IronPort-AV: E=Sophos;i="6.18,307,1751266800"; 
 d="asc'?scan'208";a="72312265"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2025 15:00:26 -0700
X-CSE-ConnectionGUID: XvoF2c/CSQCGTcQ7+7d88A==
X-CSE-MsgGUID: w3Gk505WQ+qIc+0/8CO2gQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,307,1751266800"; 
 d="asc'?scan'208";a="184178098"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2025 15:00:26 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 1 Oct 2025 15:00:25 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 1 Oct 2025 15:00:25 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.24) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 1 Oct 2025 15:00:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lr2qSUcDq8JxbU0SNRpaSPcLpo9tusJngRTTQquxTPSq6vqnCep82azhcz0msHEOXo89DYXVU62MSdHmBYeFcdByMb5cLP5onV4elIrpg+p9PBaX4zgANVK7b0IJ/gy1Xq+KeLQ4o0LlekmKbNm94K77fJ+yEob55DkT5FaCklJ9AwZkC0NZAPLrTsNecO9O5Fs1yV0n3J3Tr1w1Bak/lLby0fiDnMoPzG2/m9H4Hdx0hHgOgGoaTqQtlVC47+/y380n3xOjZyGzHt/dKB5QdDKfHXH/1f9zhOWYKAXDxM3lO6X0hJ9FV8d2lEAi4KDYKj4rFom3fi/EgpT+dsWLXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=k8/1DhHvR7jTj+hDOJQIFPaCfiGPgsxhEprOHwCTj0U=;
 b=lV36t/YITaDuQXEHkPYy5Bsa0LYxr5zXuGnpM6IuL5RBWZbmEjBD8MIzs59b1iOrxEunn/nZqSiF2JRLCBTuE2b7fdefwfrB7PPLrKakQh9loHEzcsk4YCCwsfEoeibgiGvUplJ5kHuBN4w0T7Dkr5Bvt7oF8xHQZF5I3sxZI/zfSgntY6cwRU8vlbSW7Jg6f1gGZrgZnP9Q/j7bMJk8xgrKmF6vgoyutRb64TBRaeiWqt8o2J2Bpn5HA7KoTpNUz2v/Q9sft3X5/8mybjCTxL3aX370m1G/cSVXjwQS7tjz1iEyWH8aZZZClmyFFYiAx208ZUPdu7AXLRQYBn+rrQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by DM4PR11MB6165.namprd11.prod.outlook.com (2603:10b6:8:ae::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9160.18; Wed, 1 Oct 2025 22:00:22 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3%4]) with mapi id 15.20.9160.017; Wed, 1 Oct 2025
 22:00:22 +0000
Message-ID: <af7ecd17-0632-41f9-8a79-7277bb396bd8@intel.com>
Date: Wed, 1 Oct 2025 15:00:20 -0700
User-Agent: Mozilla Thunderbird
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>, Haotian Zhang
 <vulab@iscas.ac.cn>, Matthew Wilcox <willy@infradead.org>
CC: Tony Nguyen <anthony.l.nguyen@intel.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "David S . Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>
References: <20250929024855.2037-1-vulab@iscas.ac.cn>
 <20250930015125.617-1-vulab@iscas.ac.cn>
 <ccc138d2-fa93-43f2-9733-e461396db769@intel.com>
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
In-Reply-To: <ccc138d2-fa93-43f2-9733-e461396db769@intel.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------tQKXy5zxutpH3lL91mdOHUTT"
X-ClientProxiedBy: MW4P223CA0020.NAMP223.PROD.OUTLOOK.COM
 (2603:10b6:303:80::25) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|DM4PR11MB6165:EE_
X-MS-Office365-Filtering-Correlation-Id: 62559d3a-6239-453c-70eb-08de0135eb0c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|7416014|376014|7053199007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Z0ZrOUNHWGdvVi9GR1lYNm1PaEhtTnVoQ3R6Vms4NFpoRU8raGhMQ3pMWUtB?=
 =?utf-8?B?SERXbWNkSHhINGFxV1VjN0JFM0o3ZTZGd3FLdXJvNWt3L3diLy9ZUjF6R01y?=
 =?utf-8?B?dS9yNkQzWVJxbVZuc0drK1B6b3VJd3ZKbnhDVXBWSEd4OGx6RHpIUVU3VHYz?=
 =?utf-8?B?alMzUi9TZ2tMejh6elhXM3lSQURKWVN6bDFTTXBpcEIxVkVFNGJhaHNEekxi?=
 =?utf-8?B?QkNiZTAxUEVsSWlpWVZoZlUvTzQrTnM3djRWdVhiR01mb2FkWFRBZGNkTFRD?=
 =?utf-8?B?a0czQzFlWU5nL3VKQ2YzUE9OYmgzWlNOYmZmVGJHemQ0TUo5T1JCeGVCSWZm?=
 =?utf-8?B?OVIzUmZjMjVyWEg1dHp2OFZacllxWkN1RnFRL1V5VGpyckdUT2NFSk9qVzRR?=
 =?utf-8?B?am9JQ0h4ZlUrTWJoSGFwdXE1aGhIbGdleHpJc0VwK3pQa0Y4ZFpMN0U0VlZB?=
 =?utf-8?B?bDlEb085dStxRnh5MEZra1RvSWdOWHJUV2tNeHY0bzFCQUdlWEJEWnJFcVlh?=
 =?utf-8?B?bGp2bGsxMWp3Z1ByMVJsWWYrWnVwdzNCNVdYdEI2TW9RU2pKN0pYTjFGVHVX?=
 =?utf-8?B?TlNVNWxiODRQVk1KMllhSHdzc1pIVTVYczArUVMzM2VkRVN6c1E0bklOcWwr?=
 =?utf-8?B?TlFhMFIwWkVGeVFOaDh2MVJLYzROWTlLNW9wVUZqUHAxTHhDSnhrSFZ6bGwz?=
 =?utf-8?B?S0VBZGhMK3UwemVuMmN3NDBDU0VHVmJzdVoraW1EVWdsNnV3K1A0M2IrNjZZ?=
 =?utf-8?B?S2dxbGljdjlzRHJtMFJ6MjNrb2JVWXZiQldWam5uV3BpY3VGdVdYNFdzS0I3?=
 =?utf-8?B?UlQ1bFEybGc1L0lFQ1JlQksvc3IzSDZuR0ZmTjl0a29aVm9veGZsTVNaOVI2?=
 =?utf-8?B?OUhDVEcxNW9iUlRaak0vL0VJZzU4ZnRKQ08zbjUxaU9DWTZTWVhuclcyaE9P?=
 =?utf-8?B?NFpxbWI0OHZlRlhrQ2treER0ekIrbDdCT1ZQNEtqL243eEhQb1pZU05tUjlI?=
 =?utf-8?B?SkpxQXgwU1l1QUlwUk5IU3BwZlJTZStMOFowOExlTHZCT2w4VzBnUUZEbkJN?=
 =?utf-8?B?ME1kUkRIcm1ZQUswREJXN0I0L1FDblE4YzBNQWhNSWhjcjBxRnZjYlh0MGV0?=
 =?utf-8?B?S01YU3JHUVlEa1hCZGFlNk11bWpSUUtneHZleU5YdVBPOE1CVERvbWpnVkh1?=
 =?utf-8?B?L0xJdFFQQlM4SVpNSFcxODBEMG9EcjJkOW5yQWx5U3Y0NkxucTREelZoVlZo?=
 =?utf-8?B?ZlVCMmpSbThCcDZEMXhTT1VGT2prTVpLczFVNE9qNGxSeWNWNlJPQnovbFhQ?=
 =?utf-8?B?aWw0akVudmVMa1JwdHVhQW1McWFISnFaeVYwS0JPdW1jendCNVc1OEdraTVE?=
 =?utf-8?B?ekZJeFh1V0tYamdHSEw1aWRtTFJGZ3RIRDB2ZGg2L3czWHE4VFo4WFZVKzly?=
 =?utf-8?B?Tnk3cnpEU0o4VGZZZDZHNUk5NEwwNS9iYjZRbFN0anc0b0F3dEJqc3hIZzJ3?=
 =?utf-8?B?V21uNC9zbExYdGNudmkwVHJnV24wdDIwdG5XYnNuWUx3TEZHRlEvYjhQc2hH?=
 =?utf-8?B?WTI0U2lGaHpuSjZNS1E2Wnp4bGxpNW9xMGE2aVUxSlNZMmplMVdIREFVaVNy?=
 =?utf-8?B?bGVOeFdGRnFQUnd1cjJnZTBJRmZYTEFWYUhRaWxCMlFuNnV5blZnVTFmYldI?=
 =?utf-8?B?aDNEK3FFQ3FwUmFxWVY1enYwWmZoUXVhSmxGNWdENWZOeWRKZnQvQi81OWdL?=
 =?utf-8?B?R1BJcC8weE1VeGZ1NHFxeWpBYXd0d1NZMGM4cHhuaXBDTFJYakxGUTY2eHhI?=
 =?utf-8?B?TExvUGZXS1FqbXFxcHEybDQxZXNyVVdxWUZVbU0yWmdKblRIbmZHTU5vR2lX?=
 =?utf-8?B?N1lGZzRpNlA3c3dFZ3BmUlcyajFUaDAxdWR0MVVIOWpRaHI5bkptTzdpUHd5?=
 =?utf-8?Q?I/SiGd3DiuaLkCgBdbJuU1HJYqlptJxp?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(7416014)(376014)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WFE2c1QwZnlKek4vZHhDZzNyUU4wZFduTGRmNjEyWEMrN3ZzaGNnMGFLcWNn?=
 =?utf-8?B?MVJyZ1JoK1hpaG1jMU5waUloRE1jMXg3WUFKTkswbVdVemY5TXd5Q3MyUjNQ?=
 =?utf-8?B?OGtXK0txRm15K1VnYTZWRHJNVDRjL0U1b3dvblVtQVVTU2NZQUxzRTNHM3VW?=
 =?utf-8?B?NDJHd2h5cW9wbUM0dFYza0p0STNwNGxtOFM4bUp0OHlIUE9UUkNhUythZWdK?=
 =?utf-8?B?eDJQeTlERi9Kdld2RWMwRjRRUHJqa092ckpnTUJ5anAzRURnOXFTYjFidlpl?=
 =?utf-8?B?SGVPdW42aGE3N1QxaU84MXJDVjZnTXZGejhEWnF0d0JuQ1llbFVVZU5iaDZH?=
 =?utf-8?B?ektORW5aMmplT1BwRVR1OEE0VkF0YzJGbkNzYnB5NzByMVNkbFZYZDhHUEdZ?=
 =?utf-8?B?a2NsV1VadnRKanN6WmRGcVgyYzQrVWxqYlo1MGtJY0xZRGF1bUM4dEZJNGVJ?=
 =?utf-8?B?VElCVTREa1g2OUtLeGVkY0tTRGg3VmpkcWd0Y3NDdTNwT1NDWE9Ud3ljTHl3?=
 =?utf-8?B?TktpK0JjZEFERitQdE83WTF1STAyZDcvcWZ4SndjYzFNeXFTOEV3Y0FHdSta?=
 =?utf-8?B?dENqaS9hOEduQVptTGZtQ1NPMGxiazVXYkxrWXk2NUd4NHRWOHhQZUJWSjRY?=
 =?utf-8?B?QjdKZjZ6WGdPOG4zOFFDbVNrZkRxcUFwUlFvL3IvclNMOUlBSEFENlZ4cUhj?=
 =?utf-8?B?R1YwZE5kWFlNVEVqR1hEZlREVTNRMzk0NG1HVWNpK2YrT0xkTVZyQXF2SmRt?=
 =?utf-8?B?d0hLMEhOaXFlRTdPS2VvUERFd3VUVXRSYVpWYk1rOVpjdXVXcVF0RmJvQnBn?=
 =?utf-8?B?TmFKWVUyZG5meGpmS3htd2RNemJWNVIvd0g4OXh6RFcyMGlBbHpTOEZPaU04?=
 =?utf-8?B?YlNJZFlFTWhoRkV0SGVxYSs2R1ZxSGdOeVBFRTRlYVNRdzlxcjVuWWpsY0dy?=
 =?utf-8?B?TytvdE1CLzcvT245UHdRclpNUTBhbmJnZEFtTFNVb3pRUFhMMzdtWTNhRmc1?=
 =?utf-8?B?S2tCakFmeVIvaWt6Qyt0OXdjL3lJUEZJR3FOaEZBUGVURjZZaDNlamVrVlMz?=
 =?utf-8?B?QjJKL1ZNSHRaeDNtaWtpY2Fab2JkRUVET05KT0xxVjlENmZJSzVkUEVENzdw?=
 =?utf-8?B?aldSblQ0enNEZXdyd0N3WTM5ZlFGN3VJUXVHOWRFSTFFV1hlOW84MkttZFJp?=
 =?utf-8?B?V0gyY25QOFhTaU1WMitzN0JjcU1rSFNoT01EM1NwT1hpSXlHNEU3VlY3ajdw?=
 =?utf-8?B?d0FWUXhmVDVablJCNWpxdmNhYUZjWTN0aDJqOGxnaUtTSjBtdjhSclJQajdi?=
 =?utf-8?B?UG5LaTVjK3JPUUZ3b01YazMya00wVGhjNnFJZzQ1ZVYyWmcrK1IrV0hnT0dp?=
 =?utf-8?B?OCtSV0hVdGRSaGR6VGNneE5ndkRhcnpSbHBnWHg1QS9udGh6OXk3NGtrYmFH?=
 =?utf-8?B?ekdjZnQ0eUVwcjNHZ2xUVjZwcU9JTllNVW1qK3dURlRxejRxWHp4V1UyVEg5?=
 =?utf-8?B?Si8ydHo2ckQ5dnNxY2EwbVBLaGcyT1NVTVlVM0RBWUxBQU80SnVmWHlSS3Jx?=
 =?utf-8?B?VXVQSlQzSjNWVFc3dXBtb2NmaUR0OGJCWnEyVFFSQ2xpYXpSQldtOGlDWEsw?=
 =?utf-8?B?VUxjTW1HSytZOXFYdzFmY3laMXdWbVdQVDdWUTAzOTRwelBEd1FDSUJWK2xJ?=
 =?utf-8?B?OTV0aENhSzdPcmYwRWpScmlpUmhyZFFsTmx0NWVDYzRRWUtFa2tTSGRVZEFn?=
 =?utf-8?B?dmpScVVsa20vd0MzeXNNbTBLWUc0eGwwMmJmOHR3dVBqWmFuV2tkZXZIeHNw?=
 =?utf-8?B?L2VSN0JxRXg1QU12NXZSWXNSWExLNDhHVVZLb1hCdVh4RGlQNXpST0hsUno3?=
 =?utf-8?B?aXcvNHJnTmc3V2J2M05XUTltajRkcWxEcTlUNFQ5Q3NXa3EzQzFtSUwxWTN3?=
 =?utf-8?B?QUwxVi9BdGk4UVZkR2VsRjgvMTZKbGxRZlYwNElUTlZ5VG9MTUQ3R0ZvNEsv?=
 =?utf-8?B?aHdUL2s0cjNySldqMkxmdW5NYkJtTXlET1pjSEYrOTc2UHN3UFF0RC9va2Nz?=
 =?utf-8?B?aVo4aGNqeTVJbFFVbnJhOWswNjZzVWpjMk4wRHRRWkJMRWoySzI5ZW9MZ1Ay?=
 =?utf-8?B?NVRka1crYWo3V3RSQVdGVGZ3MEJuQkZaNU9yc3haQTRLYnhsck0zdm42Wnpn?=
 =?utf-8?B?Mnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 62559d3a-6239-453c-70eb-08de0135eb0c
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Oct 2025 22:00:22.3129 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7yYP1wAwLkb81XFuZANw//C3uHBKjHa//m+PNoXRf3M1I0VuMPfwCztqRKnKvBc24wskhizjd7AvaLWh1TN3l16IkKzyZvucSoADxSk9Iq0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6165
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759356028; x=1790892028;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:mime-version;
 bh=ksfkr5ilnpDqarEVQUwWjzDTLKCriKz9znc8wJzj/Lg=;
 b=T1l8KG0k/at1Uk45Va510GvUlSV4tvnrGJNXw/grgNHMu5CGoD4SAP2l
 OaIJT/TEU1vQ3QMJAPyrIHOdU9b1X1mTBh8f4XbDCjb3WNqnpTVKD1DwO
 SXIJcurvA51ggcP+9cMOEWYwUCAVMVtBBVnZRT3oHtcb2nRYs1OyLXsen
 KBaPHcxDjBBtd1Llz+rsc0VaG1qiV5hBQchlSyoOYn8LFSF+v75S6WLQe
 kSe4nn19mW8u8FMviJT78Xqjadw9rJrfQNZSLe0jSZq9Sze0dFLbem/ST
 hPyxkzPEFXH1N6D95QYOJ3XkFM/asWaf7oMt9z5lpJBMKMg1VU8+chRx1
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=T1l8KG0k
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2] ice: ice_adapter: release xa entry
 on adapter allocation failure
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

--------------tQKXy5zxutpH3lL91mdOHUTT
Content-Type: multipart/mixed; boundary="------------NiIkCalOWmqM2I01GD0WwoeB";
 protected-headers="v1"
From: Jacob Keller <jacob.e.keller@intel.com>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Haotian Zhang <vulab@iscas.ac.cn>, Matthew Wilcox <willy@infradead.org>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S . Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Message-ID: <af7ecd17-0632-41f9-8a79-7277bb396bd8@intel.com>
Subject: Re: [PATCH v2] ice: ice_adapter: release xa entry on adapter
 allocation failure
References: <20250929024855.2037-1-vulab@iscas.ac.cn>
 <20250930015125.617-1-vulab@iscas.ac.cn>
 <ccc138d2-fa93-43f2-9733-e461396db769@intel.com>
In-Reply-To: <ccc138d2-fa93-43f2-9733-e461396db769@intel.com>

--------------NiIkCalOWmqM2I01GD0WwoeB
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 9/30/2025 10:29 PM, Przemek Kitszel wrote:
> On 9/30/25 03:51, Haotian Zhang wrote:
>> When ice_adapter_new() fails, the reserved XArray entry created by
>> xa_insert() is not released. This causes subsequent insertions at
>> the same index to return -EBUSY, potentially leading to
>> NULL pointer dereferences.
>>
>> Release the reserved entry with xa_release() when adapter allocation
>> fails to prevent this issue.
>>
>> Fixes: 0f0023c649c7 ("ice: do not init struct ice_adapter more times t=
han needed")
>> Suggested-by: Jacob Keller <jacob.e.keller@intel.com>
>> Signed-off-by: Haotian Zhang <vulab@iscas.ac.cn>
>>
>> ---
>> Changes in v2:
>>    - Instead of checking the return value of xa_store(), fix the real =
bug
>>      where a failed ice_adapter_new() would leave a stale entry in the=

>>      XArray.
>>    - Use xa_release() to clean up the reserved entry, as suggested by
>>      Jacob Keller.
>=20
> this is a correct improvement, but please let me propose other options,=

> with 2. being my favorite:
>=20
> 1. (just ice changes)
> change the call order to be:
> (note that it is under a mutex)
> xa_load() // return early if another adapter exists
> xa_reserve() // return early if no mem
> ice_adapter_new() // return early if err

You still have to xa_release() here if we return early, but adding the
call to xa_reserve might be more expressive of the intended behavior vs
using xa_insert was.

> xa_store()
>=20
>=20
> 2. (xarray changes)
> (perhaps I'm biased as the one introducing the error on error path):
> change xa_insert() to return 0 or -EEXIST when used as a reserving call=

> (IOW: caller wanted to reserve, entry is reserved, so return should be =
0
> (or -EEXIST if we really want to differentiate in the callers)).
>=20

If we go this route, I think -EEXIST is the right answer, as it should
only return 0 if *this* call reserved the entry. -EEXIST instead of
-EBUSY could differentiate between "slot is reserved" and "slot is
filled" though.

That would let us fix the issue by having xa_insert differentiate and go
ahead if it fines a reserved entry that was unused. Thats safe for *our*
use case because we know we were under lock and the only way we'd have a
stale reserved entry is if we failed to release it...

I am not certain how other users or maintainer of xarray would feel
about such a change, which makes me think the ice side change is the
best at least initially.

>=20
>> ---
>>   drivers/net/ethernet/intel/ice/ice_adapter.c | 4 +++-
>>   1 file changed, 3 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/net/ethernet/intel/ice/ice_adapter.c b/drivers/ne=
t/ethernet/intel/ice/ice_adapter.c
>> index b53561c34708..9eb100b11439 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_adapter.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_adapter.c
>> @@ -110,8 +110,10 @@ struct ice_adapter *ice_adapter_get(struct pci_de=
v *pdev)
>>   			return ERR_PTR(err);
>>  =20
>>   		adapter =3D ice_adapter_new(pdev);
>> -		if (!adapter)
>> +		if (!adapter) {
>> +			xa_release(&ice_adapters, index);
>>   			return ERR_PTR(-ENOMEM);
>> +		}
>>   		xa_store(&ice_adapters, index, adapter, GFP_KERNEL);
>>   	}
>>   	return adapter;
>=20


--------------NiIkCalOWmqM2I01GD0WwoeB--

--------------tQKXy5zxutpH3lL91mdOHUTT
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQQgQFSp1zOQVirsQx5qll0+bw8o6AUCaN2kdAUDAAAAAAAKCRBqll0+bw8o6MXh
APsGWBVCgnjQnpFqNy20lETy0TzoerK8YJDLTflbfBLzZQEAhWNI/anfbSeG+rpg7sRoH2IowlTB
cd4BZTbc1vC7igM=
=EGSu
-----END PGP SIGNATURE-----

--------------tQKXy5zxutpH3lL91mdOHUTT--
