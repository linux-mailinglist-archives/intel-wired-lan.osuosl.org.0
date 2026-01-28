Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4DR7FaNLemkp5AEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Jan 2026 18:47:15 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id ACE48A721E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Jan 2026 18:47:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5875F826D6;
	Wed, 28 Jan 2026 17:47:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FppLMBZOqvRO; Wed, 28 Jan 2026 17:47:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ACB92824F4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769622432;
	bh=GBLHrzBjWB15BKqt2vWpgpkecWucmAMjyeQvaaLMp58=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=P1Rde22QsrtV88UAWfu2sFmJjqDCgbKLHWosOF1M6GGkh91NBnHlc8E4XfAHCH4gn
	 kzkgsNCCWbSkXe6Mfwn6fVf3+isRhZizRmArhKeWtYKB8N92+EtO+/VvDlFhSVmvXj
	 HaOVOFg4v1R7AXq80j7gBIDAq4VrIOsxy++ZwtuZgwgLPpGFevNNs2+iTcTKivfbPT
	 aFDo2l5PDnWLfs9NHK5A0mJ98rq87barmcBZ50g2SjvF6T+MB+MdZtD184jogFxdPr
	 6JeW0gHzIaDjv0FFdLtjj3M8bFlBzI3EUhI+MUOCz2EFwrgrhm97ejggI2F84UGSBy
	 sKgq3GdY7HYHQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id ACB92824F4;
	Wed, 28 Jan 2026 17:47:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id D498B118
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 17:47:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B7E1440642
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 17:47:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LSfVu3vy44H0 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Jan 2026 17:47:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B18C34060B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B18C34060B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B18C34060B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 17:47:09 +0000 (UTC)
X-CSE-ConnectionGUID: UpeA1A+wSpO20G/BEMWrbg==
X-CSE-MsgGUID: iBB48XygTMSo7nNQPoEyaw==
X-IronPort-AV: E=McAfee;i="6800,10657,11685"; a="70897883"
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="70897883"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 09:47:09 -0800
X-CSE-ConnectionGUID: 0/KlY4CZTfm8OLhoMMfBow==
X-CSE-MsgGUID: Yg827oYeRuyWDRDgZO2PgQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="213196774"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 09:47:09 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 28 Jan 2026 09:47:08 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 28 Jan 2026 09:47:08 -0800
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.26) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 28 Jan 2026 09:47:07 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FhsYet1+eQc5L6F7uk7tr+HZE1awq+pN+g4loNMPtOibVVxu8jgStVHpVbr9kdjMbiNDjd0uKyHfQDcochmXe07DYc7gtJ8T7xgOrXYjuBCJBdpFBB2keLTwJM6qz85jMMJuciVi4UoNISK9tOtf+57rwZ/42pg4aRrSn0C6nuFqbOEO/R9VO23z1MHSsklQHaV5rPJLEoEv/3Crng3aDMp8Gl99rb+Qp+jCuONnfPLiZdPS+XziHdsCMfTWOplYvb4JtqBieeOc1wqXxCusuDBadJCjKVlhDm2RDX8BGpbPYM+wNBFwgr0ZCtjqvVmfgPb5TdcjL+2XvsrgZtTUmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GBLHrzBjWB15BKqt2vWpgpkecWucmAMjyeQvaaLMp58=;
 b=Us/0Q7uQQTIEo+pBUgaDR00I+L1PbagFCws8ktNbKDsZTSLqLjXScjxVvHf04wHL0w4tpVMycFydVJG9O6JDBPQZNJN7DGAwxnU8mGMgIWCst7s4SObx0+jP7N5ISJhGLdDMv/xnIKRUR0Pe8wvaqsAXYjS6609laR21n77nn4SXxCjaDer5eXKPB/XWqJ8/5w9tDoErLrP0h3jgL9ifNlF8cSUkMlSCwT/lKv8cK3u2t2CjXoqnyyTTyNrKPNo9cn/3DZFJ7ARKCr4jq/HgqsJ0R+2VXopF3nUF5m3LZxsDS0agBUwSvVHcjk9jiwYNxWXN1KlCnrdi44DYaiarYg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SA1PR11MB6991.namprd11.prod.outlook.com (2603:10b6:806:2b8::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.7; Wed, 28 Jan
 2026 17:47:04 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9542.010; Wed, 28 Jan 2026
 17:47:04 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, Jonathan Corbet
 <corbet@lwn.net>, Linux Doc Mailing List <linux-doc@vger.kernel.org>
CC: "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Peter Zijlstra
 <peterz@infradead.org>, Randy Dunlap <rdunlap@infradead.org>, "Stephen
 Rothwell" <sfr@canb.auug.org.au>
Thread-Topic: [Intel-wired-lan] [PATCH v2 11/25] docs: kdoc_parser: fix parser
 to support multi-word types
Thread-Index: AQHckHZQ0KAB563JNE6s+Brwkgcm0bVn20OA
Date: Wed, 28 Jan 2026 17:47:03 +0000
Message-ID: <IA3PR11MB8986BCF5F3B31F51458FE568E591A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <cover.1769617841.git.mchehab+huawei@kernel.org>
 <ab5e7c447c49dd000d7bb32788e434d23569c46d.1769617841.git.mchehab+huawei@kernel.org>
In-Reply-To: <ab5e7c447c49dd000d7bb32788e434d23569c46d.1769617841.git.mchehab+huawei@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SA1PR11MB6991:EE_
x-ms-office365-filtering-correlation-id: 799564c6-925c-4610-31d1-08de5e953f62
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|7416014|366016|376014|1800799024|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?cGJlM2NsRng0YnAzMnQxSys2aFdjb3dheVA4M2lodDlEWDBuR0toK29XV3hL?=
 =?utf-8?B?aTJnalhyNy9DRmhWam54NWtHQVdLSC9mNG9PMXRubnZwT05CVk1CdHpIWFZ5?=
 =?utf-8?B?TE5lQTZvZERXeUIrMDc0ZUYva1VNLzQvc1pNcE5PVVhkekx3ZnE4VkJpcmN2?=
 =?utf-8?B?VFR6TTJ1Y2JFbUtrTFQ3V2dEMllQYWFNaDZPOTZLVnQxSzc5K0pHaFd0dFhq?=
 =?utf-8?B?NGpNWlFLaDVtZFY1V1hLNUFaR2R6a1RHdmlRS0ozbU1vZVdDbFBsb25mSWc3?=
 =?utf-8?B?OTNRWlZPNGtxVFpLSldqeHNldTY0UEhRWHRYN044VllqNWdvWUdWNTh3T3Nx?=
 =?utf-8?B?K2VGdjhENWFYUmxHSVNVMXBZczREcGgzaUc5ajRDb1F6bUNGallSUlJQY1dL?=
 =?utf-8?B?MVRvWUZ5YzUxT01tZXRITmRPRE12MGpkQUU1NitRcTRleVA1R2MyaWdVVW5x?=
 =?utf-8?B?cnMwRUllYWVRdzNZc3k1RitBQUtvdllIcFJpZjEyb0FUSHM4SXphR0h3UmNw?=
 =?utf-8?B?VDVjdS9NSHh2RXovN210MmdiM05BY2t6cjloT0o0MVp4V0F0eFBvRnorM2Vt?=
 =?utf-8?B?MkFjaXRpSHJ1eXo0REUrYjNKZHdoL2VYNlJPRCszUnhadU56ZUQ5S1JHRlRh?=
 =?utf-8?B?ZThQbGEydFg1aEJQVGVpOHNvOElSeDc4dXJ3VWNNcE5pM2ZsdlEzaE9jc2s2?=
 =?utf-8?B?V3dZSDFQTUdrRDQwSXVxWFo0Tmk2U1dwb3c1ZGhPbWQzS3NrMHBuSS8rTC84?=
 =?utf-8?B?YTRNMVJOUFJod3MyUGgxYUtLQU1sZllvWWM5aTRzd3lKcGlneWxMZW1MZWl3?=
 =?utf-8?B?QWZrejRVVmVaZXQvclFlYWxmNUdIdE4wdTJBa0dzV1JRTWtVY2NvcnZyaUFj?=
 =?utf-8?B?T0IrWkxHV1Vid2t6Zitudk9pL0VLcThLbnFhdFVaQnBFMklPK1R6WlZjcHd6?=
 =?utf-8?B?WVZsVTY2SzlXTFgrd21lSm0zU1E5b04wamtScGlUcVFWYm94YThERWxYWjNt?=
 =?utf-8?B?QlNnajlaOG11aS85SEVxYlpUbWVTWm5tVGdqaGtCN0xsd0lDVTNvbW1HOHdY?=
 =?utf-8?B?d2VpQXlreUhubGl5eWswUit0YlNLSXVCUjQ0TTBxVy9FcEJudDczRUYycHFh?=
 =?utf-8?B?cEVMUVA0VXU3NzRPYUdwYkhKamhlNW5XOXVvYnBSQkFuMmZKSGZGdmtXeTkw?=
 =?utf-8?B?MWVoVmJwSnQxY0N2b1FXK29DdXF4VHVVbnhWS1ZMSmdUMi96SVNJSTIwSVND?=
 =?utf-8?B?MlZneEc1UjhQZ0J2R2pBbGNPZTNUYkY5V3Nxd2JpKzFONUloNDd5THpScnVi?=
 =?utf-8?B?SFRCVS9XNHpCUXJqMHI4V0ROOGxpckhhbFRDK1R3MWhBa2haNHUxMFFkWGJJ?=
 =?utf-8?B?WHRPK0RQVXJkWEI0SFg1WThPbmsvbnAycmZsQW90cHAxbThIdDV1c2I4elpV?=
 =?utf-8?B?M2pxYXIwTk94aDAra1RXck5aYTBReXU0WnJXYk0vU3FmUUhjL3JOd1hOckVr?=
 =?utf-8?B?K1Q2RGRKRy9TNkFkYXlrMnJNelBCWUUvZ3M4dDhrRWdtcXd6d20vbnNPamlp?=
 =?utf-8?B?ekVEMkpHcmQ2SGIySk4wYU13T3pKKzdQclh1eGFoTEtLRkZKd2IrblZxdEJp?=
 =?utf-8?B?T2IvWVlnOWFCNldPZDhXUGFZMVZaS0lYMUY5NEVLSG96cFVWaGpQaFZTTHdK?=
 =?utf-8?B?dGRCUnJPMmhxN28xTmtVZG9La284UmVJOStSdUhMeDFkR2ZBUDgvM3BkWkhy?=
 =?utf-8?B?a2JHZHlwVEZ2UzJIakhUcTFFeWRlbjBzd3dpei95ZjZhUGhNL0lTUDMzWUVG?=
 =?utf-8?B?Z3IwZGZOZDBvZEdhcGlhSm5ZSWk5TlJYeGd3TkdwdHBXQWgvNkFzdERtRHJ5?=
 =?utf-8?B?NCtJbG9mYnJqMjUvanNsUGFsMnVMQy85a2ozUXE1WjJsOVRJUU9zaG1OOWJh?=
 =?utf-8?B?ME4xSk5XRjMvWnZOeTRpSmZET0MvdzRkWnNsMU8yK1FtTzVlK2dQMTVpUzBO?=
 =?utf-8?B?OHgybVBVakxiQWFjNE1QTXJWQWwvcUxFNG40aDgxclBZbXh5UHVzMjlLNE54?=
 =?utf-8?B?QUtsczZudE1aZTdZUFlwdFdRVncwSSs4OVNCT0gyTU9rbkdnaTE0VjNrT3o4?=
 =?utf-8?B?dXJpdUpaV0lvNlNhOFlZZTNwanEwVUZqWml3M0N3bEQ2ckFwTnhSUDZsQm5C?=
 =?utf-8?Q?KQO5egrZp3VOjKBuB2MyH9c=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(366016)(376014)(1800799024)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?KzdyN3VheC9QMFNIK2ZBc2hLbGtrblMwTDZWVmhLdUFpWmQrSWcxYytJbzVv?=
 =?utf-8?B?TXprOUdKWng4Z1hnQTdmRGN6YnRKbGJsZC80SjRtcndnVURPQ0tSempHS3Jk?=
 =?utf-8?B?M3VaOHl5aHNxVVJMZjF3SnpPTzBhT3h1RGFlbWQvazdlRTRUY1FTeHUxd0VF?=
 =?utf-8?B?WTBzNEJpVEFRanI5V2llakRVRHBVZXRaR3o3TmRNNVdKeGlEclhSUEF1QlFN?=
 =?utf-8?B?RkdHK3U0NjNYSGlYSWpteDczVmMwTjlSQ2VTQWl1QlRzK1lLOHRBb0VpUnBw?=
 =?utf-8?B?VERTamVGTWlhYS9DRHB6cDlVMElyUFROWHYyZzdLckZwNFA3eExXajM1bEFI?=
 =?utf-8?B?d3MzTUlXZDZHQzFPcVNuUVlISlV1R05STFdhS1dNZ0xJMERtVkhvMjIyeE5D?=
 =?utf-8?B?Nm9oTkovbEJxMWcxemYwdDBWQWxFc2hMSDE1TDNUMmQ0L2trRmY4MnBTR3l4?=
 =?utf-8?B?d01ZSGMrS2RyOU5EcHd5VXo3OWpDbWxzakhzY21zaEc3eEJEajl3cm1YM0dn?=
 =?utf-8?B?TDlNb0FPM2RGdGFGQkt3dWtGMFRBR3VFRVV6N1NrcFlFZm1oZDl4bGRkMS85?=
 =?utf-8?B?WlZoQ0JnM0NobFIrOEZyL2JNYTIwWmxMQVFwNmx3RXdBRUowQUlzK0g0WC9m?=
 =?utf-8?B?N0NLRlNyc0tWR2F2dGFlQmN5aVB5dHJXeHZKeXlpbVRQNThuSEJNTmRiMlBi?=
 =?utf-8?B?bzcwOWxaU1Z6a2hvSmZNeEUzVkI3OUpVNnpMTnMvQ21YRXR6VFBtb0k4MGpT?=
 =?utf-8?B?S0hlUTZpeGlHR3R0S3FReVhUM2UyRjlBYjY4cXVoZXZNV1JGWXNDMWFKTnZ2?=
 =?utf-8?B?TEovd0dyc1pYQ1dSVy9telM3Y3ZkOHJDWDFod3YvSjlzcWpiSlZWamZydTl3?=
 =?utf-8?B?YTI5aUg4dDRJZEtnbS91SkJLQjJVOFNSLzJMWnNRVEMvUDY5OWUwc2RTOUFz?=
 =?utf-8?B?cXJpSVA3VCtjNWtQdk1mQzl3cUpyS1EvZWM2QlNTOEFrN3Z2cmVHR2k3VDIv?=
 =?utf-8?B?WFBKYThhV2ZmTkZrR1l5aGR4djZKeStEaFJLcGJZZ0Erc2Izd0s3MjlVT0Js?=
 =?utf-8?B?clJUbGR0bGhXK1FpK1FmQmtPVWtPOVg0Z1lsVi9TREJ6NUhvQXRuRnBLUGxG?=
 =?utf-8?B?K2krY0ZkQWlZdFgrMmxzQzJ1NWt3dDNnbkl1cXFRaUtJUThRNklmYVpaY0lY?=
 =?utf-8?B?L05xTktFNG9aZ1NnME5VKzBVRFFPdWlNZTVZK0kxbi80aURsN2JsTmdWNTB5?=
 =?utf-8?B?L29qSUpwa2pLVjRCTUlNejJKSjYwUFlFd0UzZ1FGaGY4VXBpcEREVWdvVlE1?=
 =?utf-8?B?UGdIcnlmV1BvMEUydXA1aUxzVzA2VDF0UXlYdmtLZUlKczhFVmlFNll3TVEw?=
 =?utf-8?B?dk82cldCS3pSOHdLOVNoTmhEMG1oenNTQmRJaFNneDVDMlNiSUlDRkdIQTNF?=
 =?utf-8?B?OTd4S1MyMFZBcGx0QjNaVmttbFFXelVUWEg5WUk5RlJoSHJPSVIrUGhZR1VP?=
 =?utf-8?B?QTUvaXVHcjhsZ1JBWDc1MGQ2VHJEdlVmQWdTQlFySW9OekNtNTN3Q0N0aE9t?=
 =?utf-8?B?SHZKM0lpa0tFQnFjUWlQMkFORW5sQVc3VWVkSktxN1RDTitIWDlrQUtRNHB0?=
 =?utf-8?B?RXhucWthRUt2aDdvZFVNMkEvRWRYY0xBdUhWb3lva3owV3R3eUtaVUYxc21L?=
 =?utf-8?B?TFhqODc4WDhHdzg5UzZ2SFZ6RlFxU2RqSDNpblVFN2g0czd5azJhZ1R1YVlm?=
 =?utf-8?B?ZE5NZXNXbks0b3dpS0U4MkhwaGwySjNycUVvdmZNQ1gxajluY2ZDbEJ4NFd1?=
 =?utf-8?B?d3hyak9HU0dpN29LM1VVMzFnajB0S0lxY29rd09VUWt1YUhTSDQwYTBKYjJj?=
 =?utf-8?B?UW5zQkVrbWtvWUROVHlFSXpGRjNmVVkvTUVscHlISXMwaG80WEJIK0swejlR?=
 =?utf-8?B?aGdRR3luQ2NHeTlRRGRraW9Iayt5aXRlaThRMFArRzZsWXJJeXhWZk43K2Rr?=
 =?utf-8?B?cDN6a29TdTAzMFNJSjhrcVFITTFrRUJ0YlJBaHlyaldsNW8yOGV0SlhGUmFK?=
 =?utf-8?B?cm1CQXlCQnpzRUpwbThPQW1xMTJZSDNZZ1Q1RFFuNXNLUkFXWWR6V0tSL1Nr?=
 =?utf-8?B?azc5cXFRVm9aV01NL1NTWXE4YWVZcEhXbjdNT21ndWpHZC8yWTZCM0VsV2tz?=
 =?utf-8?B?elVDbmdPL0oraXdhdG1EQUNFdHhweEJkTkJQcjZZZXhmNWhTVVlCc3BWaXdz?=
 =?utf-8?B?SUdhOFh5cE5JbTVWL0V3U2F4bExUVkwvNGZDOENjejk2THhiTDlGOEFwNTB0?=
 =?utf-8?B?NnFVUGpUbXJMUHlJOVhub0FjWXlvdi9QOThOZDFUdzl4Y1BoWEZGeTUzcVA3?=
 =?utf-8?Q?VTD4VRHKD+3G2E+o=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 799564c6-925c-4610-31d1-08de5e953f62
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jan 2026 17:47:03.9439 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vm82LI7V7avPpBrNkdnp8TXskAyc8vMrQGv/vn5N2ZZCU/tzw30IKjA+egDHGw8xr1C2A4fzeblu0nf3U2zaLmsnQsj7EFYwsG/+iD3A7pA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6991
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769622430; x=1801158430;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=GBLHrzBjWB15BKqt2vWpgpkecWucmAMjyeQvaaLMp58=;
 b=m2bzrnMfvBQpX3Z/PvFDGmqiwO/xtVATR7XR3bN71uVaz77SXWpxT+2q
 GFNxHZzfRJd5XuPvEnsYNYLAg3s1xYeZIRHyM+Ch4UmbhQ/NauXaYE7Px
 brrGv92tP2ZcZcdDYujhS6XyHC5O7YJuIcvNWdDvytqaB03NJcK61VCna
 VJEOUtPJf9ge0Q7uPmXz91E3SZEtfYEDbdyltR3RvX7DMwXgC5N5Swtyu
 TpyE5jhslIBht9S4POt/Dqnm8APF5p9FqJvACbNoRJ3aZ5+9jPQZVkeAT
 0erCYYAGQ2pGqjQVdPm82NiYBDzG+txYclFurmBmuUf+qdtX1CDKAhL2x
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=m2bzrnMf
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 11/25] docs: kdoc_parser: fix
 parser to support multi-word types
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
X-Spamd-Result: default: False [2.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:mchehab+huawei@kernel.org,m:corbet@lwn.net,m:linux-doc@vger.kernel.org,m:bpf@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:peterz@infradead.org,m:rdunlap@infradead.org,m:sfr@canb.auug.org.au,m:mchehab@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,huawei];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,infradead.org:email,lwn.net:email,osuosl.org:email,osuosl.org:dkim,IA3PR11MB8986.namprd11.prod.outlook.com:mid,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,auug.org.au:email]
X-Rspamd-Queue-Id: ACE48A721E
X-Rspamd-Action: no action

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtd2lyZWQtbGFu
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYNCj4gT2YgTWF1
cm8gQ2FydmFsaG8gQ2hlaGFiDQo+IFNlbnQ6IFdlZG5lc2RheSwgSmFudWFyeSAyOCwgMjAyNiA1
OjUwIFBNDQo+IFRvOiBKb25hdGhhbiBDb3JiZXQgPGNvcmJldEBsd24ubmV0PjsgTGludXggRG9j
IE1haWxpbmcgTGlzdCA8bGludXgtDQo+IGRvY0B2Z2VyLmtlcm5lbC5vcmc+DQo+IENjOiBNYXVy
byBDYXJ2YWxobyBDaGVoYWIgPG1jaGVoYWIraHVhd2VpQGtlcm5lbC5vcmc+Ow0KPiBicGZAdmdl
ci5rZXJuZWwub3JnOyBpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZzsgbGludXgtDQo+
IGtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc7IG5ldGRldkB2Z2VyLmtlcm5lbC5vcmc7IFBldGVyIFpp
amxzdHJhDQo+IDxwZXRlcnpAaW5mcmFkZWFkLm9yZz47IFJhbmR5IER1bmxhcCA8cmR1bmxhcEBp
bmZyYWRlYWQub3JnPjsgU3RlcGhlbg0KPiBSb3Rod2VsbCA8c2ZyQGNhbmIuYXV1Zy5vcmcuYXU+
DQo+IFN1YmplY3Q6IFtJbnRlbC13aXJlZC1sYW5dIFtQQVRDSCB2MiAxMS8yNV0gZG9jczoga2Rv
Y19wYXJzZXI6IGZpeA0KPiBwYXJzZXIgdG8gc3VwcG9ydCBtdWx0aS13b3JkIHR5cGVzDQo+IA0K
PiBUaGUgcmVndWxhciBleHByZXNzaW9uIGN1cnJlbnRseSBleHBlY3RzIGEgc2luZ2xlIHdvcmQg
Zm9yIHRoZSB0eXBlLA0KPiBidXQgaXQgbWF5IGJlIHNvbWV0aGluZyBsaWtlICAic3RydWN0IGZv
byIuDQo+IA0KPiBBZGQgc3VwcG9ydCBmb3IgaXQuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBNYXVy
byBDYXJ2YWxobyBDaGVoYWIgPG1jaGVoYWIraHVhd2VpQGtlcm5lbC5vcmc+DQo+IEFja2VkLWJ5
OiBSYW5keSBEdW5sYXAgPHJkdW5sYXBAaW5mcmFkZWFkLm9yZz4NCj4gVGVzdGVkLWJ5OiBSYW5k
eSBEdW5sYXAgPHJkdW5sYXBAaW5mcmFkZWFkLm9yZz4NCj4gLS0tDQo+ICB0b29scy9saWIvcHl0
aG9uL2tkb2Mva2RvY19wYXJzZXIucHkgfCA0ICsrLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAyIGlu
c2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvdG9vbHMvbGli
L3B5dGhvbi9rZG9jL2tkb2NfcGFyc2VyLnB5DQo+IGIvdG9vbHMvbGliL3B5dGhvbi9rZG9jL2tk
b2NfcGFyc2VyLnB5DQo+IGluZGV4IDBiNmNiYTQ0MmQ3Mi4uMjFjYzRlMTlhMWU4IDEwMDY0NA0K
PiAtLS0gYS90b29scy9saWIvcHl0aG9uL2tkb2Mva2RvY19wYXJzZXIucHkNCj4gKysrIGIvdG9v
bHMvbGliL3B5dGhvbi9rZG9jL2tkb2NfcGFyc2VyLnB5DQo+IEBAIC0xMDI2LDcgKzEwMjYsNyBA
QCBjbGFzcyBLZXJuZWxEb2M6DQo+IA0KPiAgICAgICAgICBkZWZhdWx0X3ZhbCA9IE5vbmUNCj4g
DQo+IC0gICAgICAgIHI9IEtlcm5SZShPUFRJT05BTF9WQVJfQVRUUiArDQo+IHIiW1x3X10qXHMr
KD86XCorKT8oW1x3X10rKVxzKltcZFxdXFtdKlxzKig9LiopPyIpDQo+ICsgICAgICAgIHI9IEtl
cm5SZShPUFRJT05BTF9WQVJfQVRUUiArDQo+ICsgciJccypbXHdfXHNdKlxzKyg/OlwqKyk/KFtc
d19dKylccypbXGRcXVxbXSpccyooPS4qKT8iKQ0KPiAgICAgICAgICBpZiByLm1hdGNoKHByb3Rv
KToNCj4gICAgICAgICAgICAgIGlmIG5vdCBkZWNsYXJhdGlvbl9uYW1lOg0KPiAgICAgICAgICAg
ICAgICAgIGRlY2xhcmF0aW9uX25hbWUgPSByLmdyb3VwKDEpIEBAIC0xMDM3LDcgKzEwMzcsNyBA
QA0KPiBjbGFzcyBLZXJuZWxEb2M6DQo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgci5ncm91cHMoKSwgcHJvdG8pDQo+IA0KPiAgICAgICAgICBlbHNlOg0KPiAtICAgICAgICAg
ICAgcj0gS2VyblJlKE9QVElPTkFMX1ZBUl9BVFRSICsNCj4gciIoPzpbXHdfXSopP1xzKyg/Olwq
Kyk/KD86W1x3X10rKVxzKltcZFxdXFtdKlxzKig9LiopPyIpDQo+ICsgICAgICAgICAgICByPSBL
ZXJuUmUoT1BUSU9OQUxfVkFSX0FUVFIgKw0KPiArIHIiKD86W1x3X1xzXSopP1xzKyg/OlwqKyk/
KD86W1x3X10rKVxzKltcZFxdXFtdKlxzKig9LiopPyIpDQo+IA0KPiAgICAgICAgICAgICAgaWYg
ci5tYXRjaChwcm90byk6DQo+ICAgICAgICAgICAgICAgICAgZGVmYXVsdF92YWwgPSByLmdyb3Vw
KDEpDQo+IC0tDQo+IDIuNTIuMA0KUmV2aWV3ZWQtYnk6IEFsZWtzYW5kciBMb2t0aW9ub3YgPGFs
ZWtzYW5kci5sb2t0aW9ub3ZAaW50ZWwuY29tPg0K
