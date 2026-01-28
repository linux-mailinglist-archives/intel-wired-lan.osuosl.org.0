Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mKFLAv2IemkE7gEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Jan 2026 23:09:01 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C911A9678
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Jan 2026 23:09:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B1984830C5;
	Wed, 28 Jan 2026 22:08:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xc2Q07noNnzz; Wed, 28 Jan 2026 22:08:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CD84F830CD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769638137;
	bh=08mgTEjYrNUMMoyF/8NDAHgCcJUlSRjo+S02XCghXus=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Xyqs0mA3xEQP26Z7yQDdBDh/jC6US17PYKekrMvSKqZVMBRdOMIFItJ8VMk35Zv4Y
	 N8qaSTtBLcRpw2K02T5bX0HTYB6QDPw73SNXT01pOHbYSfQO7wQ6OioTPN2lHCbjRT
	 Dj26dP0zpNlZuzOWVAIbv+3w4j6Wnt4Fegk6d8kuWKqq0xTOYduOOextGo+5/H1Y8E
	 OnDX4/7M4Cp9r+4TPyKLZcgng8YZxtAt9qWFgyN7nfh+BfLYrJEARfAUIs/mwgmX7f
	 +dqxUfLReJBq7NTQEe81T0fv+u9SqUTrfF+ExPtPHKq2bRyzprIRllMLQ4cSnVWNKF
	 +LEwrWfokSfcQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id CD84F830CD;
	Wed, 28 Jan 2026 22:08:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 9BB37118
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 22:08:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8A1F5830C2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 22:08:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MQDQTfdeQJIX for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Jan 2026 22:08:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9B41581329
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9B41581329
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9B41581329
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 22:08:55 +0000 (UTC)
X-CSE-ConnectionGUID: f/4ZGPBhQ/SHlFgYtdHXRg==
X-CSE-MsgGUID: ogpKBoFxQo21vIcUjtRgGg==
X-IronPort-AV: E=McAfee;i="6800,10657,11685"; a="70062859"
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="70062859"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 14:08:55 -0800
X-CSE-ConnectionGUID: Gn8FN9zyRdisaZzFU9RPHQ==
X-CSE-MsgGUID: rI7uF24cQ6iQ3ew7qe98uw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="213355175"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 14:08:55 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 28 Jan 2026 14:08:53 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 28 Jan 2026 14:08:53 -0800
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.54)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 28 Jan 2026 14:08:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fJ4uo+iK3h4kXUUdz0xO7U8iepTgP/gfGNaib8q6XGTZjTQIemTV0OB09zJP03PKJxswLjbbUMTeiwjpOFoYSU7BcpxggwJ3dcSH4ojeNd0hJnMi1bA95UnOnyeuFWxWwOPDjFb55QTOC7z9tJnMstNoqJEJOmHiZ+wn9Pr/TkFZQ2107w2T5w0MkxulFprMzZGHnTzPKuCenAz7LpY9Rn8BWU7ScJjn6p4Y9HM+24h/JxgYOSbdUknSOPWuIArZiBZzGraS97qZ8FNoX34QFNOamSbfQ5hscLXfns/wcdTVpuegPEQHLd8VlIEclXvrouW14l/w7xWfRBvEEW45Yw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=08mgTEjYrNUMMoyF/8NDAHgCcJUlSRjo+S02XCghXus=;
 b=CpYJZzCpKpd9YotuyXn0PPWVId9QFkZaXJ4qt4h3ttZAv/5gOmtJ01EOgfotSvlJ79LYNzaGPl55PsCepqEdK7MwVFM5Df9I6W5O518blF0own1GAM5QoqSlbhvFPDKSRHXr2CWBIb7dlbmpA9L1pC1cb3AHtvyt3AFNwAA8yJAnc1FWlDbcw9we803GgSFMzCzCvnmt/PsIbX/1eAnSQ8bOYkQO03v1MK7cyLYlv3STqN2LoR9zNFn289uSUJEPI4xZU0UT7Z6wCQM35obwvX5tj1K+ESS5AvUHzL0sy8qbN7U05UZ+8sUrd/gP6HZs3drIvISoFoyyTxwSb84r2Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by PH3PPF8C0509479.namprd11.prod.outlook.com (2603:10b6:518:1::d37)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.7; Wed, 28 Jan
 2026 22:08:51 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3%3]) with mapi id 15.20.9542.010; Wed, 28 Jan 2026
 22:08:51 +0000
Message-ID: <09681668-57ca-4294-afa8-95af7eebe630@intel.com>
Date: Wed, 28 Jan 2026 14:08:50 -0800
User-Agent: Mozilla Thunderbird
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
CC: Jonathan Corbet <corbet@lwn.net>, "David S. Miller" <davem@davemloft.net>, 
 Alexander Lobakin <aleksander.lobakin@intel.com>, Alexei Starovoitov
 <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Jakub Kicinski
 <kuba@kernel.org>, Jesper Dangaard Brouer <hawk@kernel.org>, John Fastabend
 <john.fastabend@gmail.com>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Richard Cochran <richardcochran@gmail.com>, <bpf@vger.kernel.org>,
 <intel-wired-lan@lists.osuosl.org>, <linux-doc@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <netdev@vger.kernel.org>, Randy Dunlap
 <rdunlap@infradead.org>, Shuah Khan <skhan@linuxfoundation.org>, "Stanislav
 Fomichev" <sdf@fomichev.me>
References: <cover.1769617841.git.mchehab+huawei@kernel.org>
 <87ecn97ild.fsf@trenco.lwn.net>
 <fced629d-2470-4673-ab0b-80de11f0e4c5@intel.com>
 <20260128230045.781937b5@foz.lan>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20260128230045.781937b5@foz.lan>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0261.namprd03.prod.outlook.com
 (2603:10b6:303:b4::26) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|PH3PPF8C0509479:EE_
X-MS-Office365-Filtering-Correlation-Id: e0560c78-9060-412d-db4b-08de5eb9d1e0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|7416014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TDMxb28xMGxyZGdtaFNKMGk3TXFOWUdjOHhUOTZkUmlUN3I0NUVEZVVTc2tx?=
 =?utf-8?B?M0ZnbzhpVmczbTF5ZS9pMmplbTZLV1J5QmxMaDREdk8wRmd4MEJDTXI0a3pi?=
 =?utf-8?B?eWl1aXJwRzJoTTE5NitSRnlJVkhEYUxCUnlLay81RUNSN1d0VS9DZ1ljVnJt?=
 =?utf-8?B?WEdaalE5NlV0TlcrK0xna05ZWE96WVNiYUdkdnVOdXpMbXl3bXlET3htaG8v?=
 =?utf-8?B?ZFlKTXJSVHRpWVhYM1lxNWYzV2p5V3VZVEtnak5ockZlU0xqTGJxY1dNaVpj?=
 =?utf-8?B?RHZsb1FkM3Q3Y2NWYTZ2WXgrcnVpOURuQUo2Q28ySHluQkVheFIxOUxyYlFV?=
 =?utf-8?B?V1loaUZWd00yU2ttbTc0b0M5NTN4RExQV20vVTNuSUhOdWNWQkxLKzlTdDZY?=
 =?utf-8?B?VldONUw0Vys5VHZNdHlwMG9Db1JwLzRtaXpvdWtKcTJxKzFnSkJaOFZXZStU?=
 =?utf-8?B?NEtWVE5YMDFrUFpkRytibjZYM2NVRFJUWG5Gc1VFbkR0MkV6WVBZZHBTUDJx?=
 =?utf-8?B?VHp1RGIxZFBEc0dnR1ZWamd1NExDRjN0enNCbWVYTFhRdlVtVm5iU0hNUFJN?=
 =?utf-8?B?YnVXczZvWGpUZ1RFdlFGS3UyTFpLVGRuUjJaVDhkbmlYMTZyaXlMejdhUW9I?=
 =?utf-8?B?UHhsR01LazNFT25rRW40ejhKYUY3RnUxam8xUkdha0poR3BYdU41K0tORUlS?=
 =?utf-8?B?aHphRHdoYk1RaVhzeFFWYnBzMTgvSGFTS1ZrS2s1MXFaZk03YXVZN0FzbEZt?=
 =?utf-8?B?NHVqNFhVQ2FORVNEdXRrQjNMK1FpdC9ZYmxkakpRR1JYY0RPVGV0b29OSG04?=
 =?utf-8?B?NlRaNzJxWDJ4eXRWbEV3MGhwTWs2WVpVSTlFRktuMTB4a0Z6NnhZeWFFUzAx?=
 =?utf-8?B?WDdlNExtWlVqY3VmTTVUYzR2MU9aTGlhOEREc25la2lCQ05kK08rNjVOMW81?=
 =?utf-8?B?MUdTOCtxeHphbVBuYk85MzliOVFhd0t4anRUSkxjOXJLbXEzRzRGQTVnZThq?=
 =?utf-8?B?anRrVU93RzlLUmxtWE9FSHpKUFh3Mm81NitxcTZxa3FxS24zamVLZmZiQ2lP?=
 =?utf-8?B?eFpkZm5mVU5oZktBY3VpN05sS3dkamxKVGtaSnNJNXNHOHBVZXVPTkt3Qlhi?=
 =?utf-8?B?NXkwcnhOZjBGeFRXUGJ2dWZZK0lJa0JWS010RGFiL0UzKysraHh4SlViaVBB?=
 =?utf-8?B?UCtIVThHTEhUcHBKNmtIcHJHU3dOd0VuZ0dhS1FQbmNSaTQzbUttbGxNT0Zi?=
 =?utf-8?B?SFZBWDh5c05CcWF0QmZ1eTBPWCs1L0ZhVi9vWDArOThIakt0ZUxLYkRTV08r?=
 =?utf-8?B?N2tpNkpSWkpGcUN0QTZ5UTRFU2RLanZzM1ZxVEZvWTVpNjNzRlJqMFpPQnVL?=
 =?utf-8?B?VG41Nkk4czBJUUk4R0dUMFV5RmtTa3BGR2NJME5NMGg4bHhaaWpxVlpjOUNx?=
 =?utf-8?B?RGVFZ2xQTnBWV3RtUXJhMjhPSkJuUkxWK1RwTmovRmt3dFB6Ky9PSmVwYWdy?=
 =?utf-8?B?OEh1ZS9QazdaaXU2bUd6SVlDeVM3TjJMYzNjUVVRbmtMN3laRmRFNFh6UTdR?=
 =?utf-8?B?N1FnN2xqem1kbzVhQ3dJZnZqc3IxT3E1U203U2RjeitXbHBneDl6Umtici9Z?=
 =?utf-8?B?SzltM1kxVlEzY2xxbTVIc1ZTSmxIL0xoQnRtajBxdlFObFhMSVdDQ2JzOVRj?=
 =?utf-8?B?OEpWK3FsUU00dzJpMmhpS2h3WElIKzllSUJBVkloVFdqazB1S1UzQW5RVDFQ?=
 =?utf-8?B?NkJQM1c1UXZrMXRFaFNDenJWTzRnR3RtU20ybDB4TDRmTkpvbWdGREFiVkZ0?=
 =?utf-8?B?akMvUExoREZzSVVLeDllL21ibzZYSzhkM3lzU3NZd2xVbGgrSExWYjlETnFV?=
 =?utf-8?B?eDY5NzFuc2JRM1NwVDdKUjBTOThLekVhVS81Y2ptaVFsZXJjT21pRC9EalNQ?=
 =?utf-8?B?OW5YdzdtU0xQZ2JMRUVPZnVVWE55TUJPVU9LQncrSCs1MS9RQ2dDNVN1b1dV?=
 =?utf-8?B?WHM1S2lUc1llVHdydjFVclhSUEtqN2NhTzdmOTdaeXlzL3c0ZUgvL2w4aXJv?=
 =?utf-8?B?ZEU0MDQ2YThCK2RBN2c4eGtiZnlVU3VvYTZNNUU4WWVwOSswRE8wSFdDcktF?=
 =?utf-8?Q?tvCc=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TjNKbDFwUzdYOG1SWDhUZGo4cEluc0VsUWphMDB5WnlyN3JKTjZjS2dVVEYv?=
 =?utf-8?B?VVR2RVN5ekJEQWptMm4yeVNTcExmTVcxSGJZSFM5RHl0VDllSUtJak9JWnNN?=
 =?utf-8?B?NFBGL2o3d2pReWtIQXpQTEJRdTN6L05zQ0xXLzBTaEpzRlRYYXpReklkU2RP?=
 =?utf-8?B?R1FhZnFoM0VTK1ZsaU13c0d1UE9xN254Nk5RcHViUlIrNWtjZmRTSG9YazFm?=
 =?utf-8?B?TG92b2czbWRFdkJILzBIdjFIYTM3RG5TMFN0REk0SkltTUc5VG9keWllODNR?=
 =?utf-8?B?ci9uUGcwOVloZlV3WjlIVTYvRkFKU0JlVis5RHdBTk93bHViOVNUZ0N6bVFI?=
 =?utf-8?B?cE5tOFVRYzVMbkN6bXNKNEJSSVVPNUdMdFYxS3J3OHZkQmtwNzlhZTlPRUdW?=
 =?utf-8?B?YVJMbnpqNlJZNjc3RHYvbUJ6dENzWW9ndGhoYnFKREd6TjlOellRVlU3K05x?=
 =?utf-8?B?c1dkSGIyZ1ZjWk9SMXVqaXYxOVluanRFRE9lUmZjNG52OGRHVzNFbWQwTWV3?=
 =?utf-8?B?NHdLa3RSNE01M3d5dGc3ZWtIdDdxSy8ya1FXODhzU1hNQkxkUTBZc2Z4eC9T?=
 =?utf-8?B?NEZlam1BSmRycGNPNzlTVVB0ejQ5d1ZqcC91dEp2dmx5VnhzZnNLaWh2UHp5?=
 =?utf-8?B?S3dNTWhPUCtpUW5wRUxSWmtDYlFsUjRNYmx3di9LZXhSRDQ5dDl6ZW04Z3Ir?=
 =?utf-8?B?SE40eStKSHpqRmYzb2k2dFd4b0VDKzE0Y0hDYStPcWo5WE5KdmwxMVBkS3pY?=
 =?utf-8?B?LzNBWHJnMGZCNzI3eS9BRXM2RTdTYlBIS3E0UWNXMkRqVUVkLzJ1aklhdWpY?=
 =?utf-8?B?Sm9JL0U1N0xjcGx0elpveExXRlNTTzEyQUFEdk9tYUlqVEtDdjN4TGNYYzFu?=
 =?utf-8?B?NXE5TnkyaGdLQjZCMkk0ZjJzN3JVYXJnUWxKZ0RrcFNTQU9UVisxejdncGdJ?=
 =?utf-8?B?TjNEWDZuSVMrRkl5SzRpUmpNcmZNbDlycEMyeDhQRXBXVjVuZlJicEh0dW1J?=
 =?utf-8?B?clBMSm5wQTlsek9lVjRwaVhVRmV6SUtQNk9MKzhYNmNOMnBEKzAwb2xyUDkz?=
 =?utf-8?B?Umg4S1JxaVlLTkZoM3M3MG45SHp5bDltWXRleEVXOG9LZzlpaGJla0MxSWxr?=
 =?utf-8?B?dHdBYktkdzl1QVpUYjg5ZHpJMUE3bzFTVmNnMmFESit3UkFNcENUSGxoQnpv?=
 =?utf-8?B?MzFzbGlBVmExYmZIVVRHYVcvN0txSnV0ZHZrZjhrMlM0S2ZDcW5RK2l4Wnpj?=
 =?utf-8?B?UlFCMUptdzJsUzlaWXBYVCtvTXJUZWNEd05GdmhhYndOTmxHUDV6SHlVMlNP?=
 =?utf-8?B?UGZZWGp6UmNEb1cwL2drekd2OTZKSHdldHdBV2JHUG82eUdmSEdEZitBMjRH?=
 =?utf-8?B?dHZuRFdSRU5zSzg1Qk5iUVFoK0NwR0RPa0R6RjNQekZWYzdRTGV3eDVBQjMz?=
 =?utf-8?B?MGRMdEpSOFRYNTRSRHZ3Ny93dlI0ZXpnbHFvRHFheFlwVXFWYVMydFpuc290?=
 =?utf-8?B?T09oU3VxeStPTThTeE51NHIyNWcyWUREYjNqUmwzQTdEaHlNU29KSHh4Ny9L?=
 =?utf-8?B?V0llMEl1cTdtbWF5MXlhN1Z0US9BU1VTQ3BVT3dTKy9Uc0dvdmdNeTRpZVp6?=
 =?utf-8?B?SGpaM2xZb1cweVZlVllKakNLTHkxZWZkellRTUxoQVZ0RmFQT2lEaVNKbXZB?=
 =?utf-8?B?QVkzeWxHUUlQMm96UGFkSEM1dzJHSGZXS2RRVHlWczlNL0tIeTd0Q0R4dnN5?=
 =?utf-8?B?RXRKYXNOMFh1V3R1L1FtL0FnWnlaYjI2d1JBcXp0T2s5NUZzMGJEWnRzQzVJ?=
 =?utf-8?B?SjBsc21zVC9qV3gvM1hwdC9YdTFQNVBjblppZWFpNEtDTHNjK2F0T3N0QnV4?=
 =?utf-8?B?SXpsU1MzR0JaakpIUFJjZlRtSmlySGdUeS9YRDRCaVFvRDhwL1BZUG1teE03?=
 =?utf-8?B?VFRpbnkremtuYkd2WGkvMWR0MERMQnhacG1IdzBxQjhQNTlIRnNJVkJPRWFx?=
 =?utf-8?B?eGRldnhZL3JXTHNBV3prcmxGZWZkZ3l1U2t6VE5lMTNiTnpJWGxDS04xa3Qw?=
 =?utf-8?B?cEZJYUN3cFZuckhDQ2ZOWnlhYW5YUDJDR1kzVGlXbEsrUXhCbnRZUXV5VUNz?=
 =?utf-8?B?czNMNkg5YmR5UE1oYmJOUVl4NnFOVWVYUXM3TUhLYlk3bFpKUjJWazlJM0Jt?=
 =?utf-8?B?MGFITHlwMjVUZ1JDdUg2K3p1VG5pNXNlOEpRNXBhV3Y2bURsa1BHM1RBQXY4?=
 =?utf-8?B?Z3hZb3pPWXFaNzQvcG9Rd1JyZEZCQWdPQkhrSXlVaUZNQWhwdmtRekpSMEU4?=
 =?utf-8?B?N0w1cTFZU1JFM1pCR2ZYUTBUTGxjWG9iZHZYSEhNdU82aEdqS0NyT3VQRzhr?=
 =?utf-8?Q?pUxzkQSvPxo6dado=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e0560c78-9060-412d-db4b-08de5eb9d1e0
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jan 2026 22:08:51.7281 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: eiAowgpjIx8NboJ5b7Pwc0nkR8MtkU4GOgftXouvigRcLj1OXWhY38LdCg0f8S3QFNYkBx852EQZ/PpB0D+YDriHfdXPq4V/gDsFwHqhDOo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPF8C0509479
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769638136; x=1801174136;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=8wGAvdtC3MyoD2/aKnb7gz9dL/XitCua8FZSiF3OyJ8=;
 b=I8RcQ8tSG1TosrFBnoeRHKU3AJJtvowI6McmgRAsa7SS1Ji/6kLYrorf
 Ne3w5ouvhGNO43/zTSISRpPEwIFLN6nkvQdVtlDg6XrxG83PKviUGToKw
 eZ9+EJXP77lzX9PCHxyRnw/7WwT7M0dodW6+ah8/68ImcMrqyP1edEmIx
 QxmDdpL5IfAUjQq0ybAV5ABQRZ0bsfBt3d9sC9rcXDrRbz97o8cUwmsBK
 b4LNjK/fomBnF2w+p2KaxLHT+ItoZLqrdO1nPt6I992HGHD3qge6CEkvd
 tLvAUTIH1N/7WmYLncCMI3zJUXtfbOWxaz1fNcAuqdEGOgWSXEORD4FL4
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=I8RcQ8tS
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 00/25] kernel-doc: make it parse
 new functions and structs
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:mchehab+huawei@kernel.org,m:corbet@lwn.net,m:davem@davemloft.net,m:aleksander.lobakin@intel.com,m:ast@kernel.org,m:daniel@iogearbox.net,m:kuba@kernel.org,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:mchehab@kernel.org,m:richardcochran@gmail.com,m:bpf@vger.kernel.org,m:linux-doc@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:rdunlap@infradead.org,m:skhan@linuxfoundation.org,m:sdf@fomichev.me,m:johnfastabend@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[lwn.net,davemloft.net,intel.com,kernel.org,iogearbox.net,gmail.com,vger.kernel.org,lists.osuosl.org,infradead.org,linuxfoundation.org,fomichev.me];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,huawei];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:email,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,osuosl.org:dkim]
X-Rspamd-Queue-Id: 4C911A9678
X-Rspamd-Action: no action



On 1/28/2026 2:00 PM, Mauro Carvalho Chehab wrote:
> On Wed, 28 Jan 2026 10:15:51 -0800
> Jacob Keller <jacob.e.keller@intel.com> wrote:
>> On 1/28/2026 9:27 AM, Jonathan Corbet wrote:
>>> Do we really need another unit-testing setup in the kernel?  I can't say
>>> I'm familiar enough with kunit to say whether it would work for
>>> non-kernel code; have you looked and verified that it isn't suitable?
>>>    
>>
>> I'm not sure kunit would be suitable here, since its meant for running
>> kernel code and does a lot of stuff to make that possible. It might be
>> able to be extended, but.. this is python code. Why *shouldn't* we use
>> one of the python unit test frameworks for it?
> 
> This is not using kunit. It is using standard "import unittest" from
> Python internal lib.
> 

Right. I think it makes perfect sense to use unittest for python files. 
That was the point of my reply above :D

>> We have other python code in tree. Does any of that code have unit tests?
> 
> Good question. On a quick grep, it sounds so:
> 
> 	$ git grep "import unittest" tools scripts
> 	scripts/rust_is_available_test.py:import unittest
> 	tools/crypto/ccp/test_dbc.py:import unittest
> 	tools/perf/pmu-events/metric_test.py:import unittest
> 	tools/testing/kunit/kunit_tool_test.py:import unittest
> 	tools/testing/selftests/bpf/test_bpftool.py:import unittest
> 	tools/testing/selftests/tpm2/tpm2.py:import unittest
> 	tools/testing/selftests/tpm2/tpm2_tests.py:import unittest
> 
>> I agree that it doesn't make sense to build new bespoke unit tests
>> different or unique per each python module, so if we want to adopt
>> python unit tests we should try to pick something that works for the
>> python tools in the kernel.
>>
>> Perhaps finding a way to integrate this with kunit so that you can use
>> "kunit run" and get python tests executed as well would make sense?
>> But.. then again this isn't kernel code so I'm not sure it makes sense
>> to conflate the tests with kernel unit tests.
> 
> It shouldn't be hard to add it there - or to have a separate script
> to run python unittests.
> 

Right. Some way to have all unit tests run is nice so that its easy to 
hook up into various CI processes. Sounds like you have a solid idea on 
that.

> That's said, some integration with kunit can be interesting
> to have it producing a KTAP output if needed by some CI.
> 
That could also be interesting, as it would make it easier for other 
tooling to work with all the tests.

Personally I am not sure how useful that would be vs just making use of 
the unittest stuff provided as-is with python.
