Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MEQ4Oqk3e2kYCgIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Jan 2026 11:34:17 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 31407AECB6
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Jan 2026 11:34:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0B05340B01;
	Thu, 29 Jan 2026 10:34:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id G0DqcVJD83vz; Thu, 29 Jan 2026 10:34:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 53BB840B9A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769682854;
	bh=r92q/ncHF0BSWhOZ4H/5g/xygqOdjvIyMwdACr1Ya1g=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=wMpi6ThQDFmrYm2NOIiFboS3xvN/XEojloiGSISxn1jmmoLHmi3pwbFsERiSIcozM
	 eSG2x7Em1zDa3+gvovtlYOHYmDALRPvN/xdZZlPmg5ruvJHjG4rCRdTeC0AyQYz9t4
	 QDsabjheJmHkTDA1WPNRQkBYr1wRd3ocLPd6aILUrj5UU3BF74MKUE9PkvD3Pg/IZm
	 dOOYZqTPU2DgLFAStHZuxOjdW5oj5qtHir6jpyanWGE4Wck4A9Li0memJIM4Oo3V35
	 6hRe2PRdzgcyG48zsbi+h86zvgw6LHkFL4yEfHcIZNMZVEMw+IwPL/Cr567ceok0rv
	 Jd0fdI8PFhLuA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 53BB840B9A;
	Thu, 29 Jan 2026 10:34:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 80627118
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jan 2026 10:34:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6179240B51
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jan 2026 10:34:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0mh8WozlYpxP for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 Jan 2026 10:34:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org DA1A740B01
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DA1A740B01
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DA1A740B01
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jan 2026 10:34:10 +0000 (UTC)
X-CSE-ConnectionGUID: oZ2Ri8OpT4GEbKWvM/VmQw==
X-CSE-MsgGUID: chVB8CfnT+eCMIgfXk4JDg==
X-IronPort-AV: E=McAfee;i="6800,10657,11685"; a="93579013"
X-IronPort-AV: E=Sophos;i="6.21,260,1763452800"; d="scan'208";a="93579013"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 02:34:06 -0800
X-CSE-ConnectionGUID: 0raaybJzSRaZ1gMN9V1DjQ==
X-CSE-MsgGUID: vcRrGfiQSKynUfqj8P2s7Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,260,1763452800"; d="scan'208";a="207657936"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 02:34:05 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 29 Jan 2026 02:33:58 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 29 Jan 2026 02:33:58 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.51) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 29 Jan 2026 02:33:38 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=En3JN0jt4BinQjvZTP+wWlzO/IS3YMrwCsbLSmANghVzsgK45P6+v83u82/prYS5MNttnCHzwzLLUSOzGdHCqBK/oeKyjp4TFUw1EseTpgs2WJ8/vQs9wk3v6+EXBAXWLk086kcdKl+seYAosHwTzN2/UIV4eYzqKtrSfmi3jy1A2S4oM/x+PM4OhNTaa64Qwqg2ryIVyOQj8jnbWPovaDHxQqw8xaaeCtlqM2OKE5t2V7l/Gpd4ygyNO++OQKt/3FV9Pizuzyf7/XK+byTWlYDzbKuxi7lEyPU1aoPwhCgSY94yCLmyRduyRlewGtKeTV/8hD1Mhhc85dEoKeWdPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=r92q/ncHF0BSWhOZ4H/5g/xygqOdjvIyMwdACr1Ya1g=;
 b=AL0JocW9Rn3FT+U7RULKW/eqpczN6U5Z8rBrXkjiFqSD4kKKzJ8/RT6wrJBgfhLBKtABGqxJZAy3GEJEks01unhAEuCxDdXn+faU6IgcJ7BVjgNH0bxoQILl913RahGF1zyxdmyXXyNMmXODpYFGo0drYbR7aIX77Zn4Cp5YHt9wUNthwrGhqdfhxXsMjNYkB07nBWDCfkTT/sWJyDl/Ub7NVL29Y6l7TthUyAJ3e3/o/nQOgg/S+AiVFoUJRkUMyrJ5UgtKdIdryqRCFC+kaygU95V3GavOLVbIAOHRhX4AEpor5Z0DJ9riVCf9HygrPd2j2VJ5AIZ5v0KvP2odAQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SA2PR11MB4956.namprd11.prod.outlook.com (2603:10b6:806:112::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.11; Thu, 29 Jan
 2026 10:33:17 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9542.010; Thu, 29 Jan 2026
 10:33:17 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, Jonathan Corbet
 <corbet@lwn.net>, Linux Doc Mailing List <linux-doc@vger.kernel.org>
CC: "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-hardening@vger.kernel.org" <linux-hardening@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Randy Dunlap <rdunlap@infradead.org>
Thread-Topic: [Intel-wired-lan] [PATCH v3 20/30] docs: kdoc_re: add support on
 NestedMatch for argument replacement
Thread-Index: AQHckPaO6tbPBIHBc0yVBJSCc++TBbVo82aQ
Date: Thu, 29 Jan 2026 10:33:17 +0000
Message-ID: <IA3PR11MB898646F1E9EE6513BFC73C05E59EA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <cover.1769673038.git.mchehab+huawei@kernel.org>
 <fe4539f5573c62301fd1a94af5126266b023d4b8.1769673038.git.mchehab+huawei@kernel.org>
In-Reply-To: <fe4539f5573c62301fd1a94af5126266b023d4b8.1769673038.git.mchehab+huawei@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SA2PR11MB4956:EE_
x-ms-office365-filtering-correlation-id: c0f78502-ba5c-4deb-773d-08de5f21d0f4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|7416014|376014|366016|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?cEFVeHBqT3Q4d3dUd3BDYkFHbG5NWXdEdEZhRy9CRHEyV1FCL3M1TFR0N0M0?=
 =?utf-8?B?OTNJMExZdmtJWFVYWS9Na0NpY2RwQ01JSlJVUEJiU3dyU2JZd3F6Y2xKRzRx?=
 =?utf-8?B?aURBaGdlYUk2WkUzN2Z3b0hoZ3FvaWdwZTJGSkRiNkdPcTkwTE0xVWI3QVVn?=
 =?utf-8?B?allPcENnMTcwUmsrMFlESFdGb2hqdHJGb01GUjFXN3VGNWJkSkRkNm85Ky9s?=
 =?utf-8?B?d3h0QzQ4MFZEeXo3Q3Q4MEt4czRuMStWRDlpRWMwOEpnQmpCMDBTNEp6RHU3?=
 =?utf-8?B?TjFoV3loSEdQenVjZUpWR0l2eG9oaDJ0UGFNekdCT01INEJ0NnJqeUZpb2oz?=
 =?utf-8?B?OW1pRkFITjdVRnNhU08vUUJQeFpvRWw3YndOWU1ibndOcjJVZEM1dldTcHBv?=
 =?utf-8?B?MDU1ODFYMXdxRXZhZmJNYUo3aWtWU1RJUllLTEJkR1VWSVZMWmVyUXhXc0hP?=
 =?utf-8?B?VXNPaHc0VXZSWU5LVkp4VWpRWkhSQkh3enRiS05NTjdMQ3BEQmVRTFJ4ejNo?=
 =?utf-8?B?cXE4K1g4dkJZWk94VTkxNi92ZEZFS0wzaVg5MU9qOFVKNVJ2YWw1dG1SQXZn?=
 =?utf-8?B?a2hmZ2p2MC9uMGx5ZU16emFybFFualV5RVNBY3FhYUgrRUFjd0xvNTlWUmhZ?=
 =?utf-8?B?bk44ZDFjZzd6OFJMeHRZcUo5SUIxZm9FMzFnMTl6cTVjVWtqNFBQVVJFRWF6?=
 =?utf-8?B?V2lXSlZDZHQ3WjZjQVVuanliY28wVndXNjJ5WDVXYVFrTmJNdGVaTk01a1E3?=
 =?utf-8?B?ZUR1Unc4eEZEbGVDSmhCdTdDSFB1bnJ4TzJUdEQ5dzBGc3VPa2QwaG9YSmZV?=
 =?utf-8?B?ZGx3dWNReWFPUGFtQ0hIR3gzWnYzUS90WjVUS3FKUnNVQVI3anhtMFpaWW5V?=
 =?utf-8?B?VE9tMUxmS0pTSXIweVh5QjM0bzdKNTBDSGJ6ZCtCckVjcnlYYTZabFh3T1hp?=
 =?utf-8?B?ZW9FRElENThwcWlMWmNNUlBTcGtxQk81Y1VvVERGbCtnYjkzUXBqbk5PSktX?=
 =?utf-8?B?Qy9pOFZOekxlb25VNENiemMzRzF3Vlc1eDVpOXl0ZEhzclU2K25sa09mL0pU?=
 =?utf-8?B?QURmcDdMbmJjRGwyb3owekw3ME5HQzRENk51OWwvRHROb1BxWkI5RzNLdkdM?=
 =?utf-8?B?V1A0cGc2TUJ4K21xUWxINVFCYlNNVk9UN01YUWp1dVpSU3R2N0pnRGdUSHVu?=
 =?utf-8?B?MkZncGJnNG9MN1F6ajhQSDA0WXhSS3lxYmVWNE5BbnFkUDI1aUYxNVBIdHZm?=
 =?utf-8?B?N3VUZXgzZHcyditYcGRTaHhqUVJyTDNSNEp1bnc2S1RxNHNQd2pJS0NrU3p1?=
 =?utf-8?B?VFlMN1ZwTEhDa1NpMmgwZkt1MkpJQU5iSjBmb3VQRmxQV3VKMUxuVzB1NXJF?=
 =?utf-8?B?YmZFL1FuZ1hNS3BTZm9EaU93Y1VHdEVESlhNbytGcVU3aGlRNi9YdUlqdHBh?=
 =?utf-8?B?WVpnQ3hCcFpWV3ZMZStET0oxRUJ5eVlMRWZidXAxd0R5alprVnFyOGtwdlpM?=
 =?utf-8?B?MkR4UU1CQjVST3BVOGgrUDltdHpVV2ozK3Y5WGx1Kzk3ZlErcVlVR3k4eWh1?=
 =?utf-8?B?VmR6and1ZmppeG5INGU3ZjhZUzIrR09QbFV3TUtVN1kvYlJ2YTlXVEJOV1pC?=
 =?utf-8?B?MWMrM0c2dXpGUm5pMm05ZTl1dC9XcFJtVEwwclFVbmRwTFNtckpaQkUydy9a?=
 =?utf-8?B?VHhSMi9pY3pLcG9aUXlrZnByMDFTL2J1RThUYmViSG1rUFlQS3R0V0R2SnVF?=
 =?utf-8?B?bmVsbmRkcE1ERllqSmhrTHByRllaTkpxSTVQaStGSHI3dGVZODJpekt2ZWUy?=
 =?utf-8?B?V29DamlDNVRLd1QwZGUwYys3aE0wYkVBMStJWG4xRW5NbUR1NUp3QjQ5VWND?=
 =?utf-8?B?T2daUzhkMlBGTndkZWdoWnA4aEdLNmp4eHV3WDB4ekNOcG5YcVpPLzh5di93?=
 =?utf-8?B?SC9nY1ZrVFJ5Mjl4bjJnLzFaaDB1K0paQnN3RHg1UllWRitrVzU0dXg2ZzZO?=
 =?utf-8?B?QXhybnZaK3RZT0hlNHFwUm95N2k2Y2VNNE5jNVFpYWp0RXExMjFZWEcrRTk2?=
 =?utf-8?B?aUNUa21kM0FIQVhtcGQ0VHFKaS9FSjVTbjYvQ2U5SVBCVWlNbGpHQWVRZHVK?=
 =?utf-8?B?Vm93Wk9Dbkk3WUpsRm1xM1YxZzQxN0RvSXA0dWhoWnM1QThXcnVTZk9aN1M4?=
 =?utf-8?Q?m9hMqYlm6EGlunvcS2azFCE=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(7416014)(376014)(366016)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VU5Fa1h6RlRzb0tjd0R2VEpDSm1ZWkhZRjRmdldieGlnZkZxV2k3TWt3dC9U?=
 =?utf-8?B?WW5TYW5lajhqMVV2Mkw5cDJJbEQzbTNtcnBSS1BrWlV0T2k3ZXdXek9iSVFa?=
 =?utf-8?B?WGsybE42dkQwV2p2Ky9nb0tWSkw1R29sUGFqOHNvOWxLRkcxaWJsSmFvRUM3?=
 =?utf-8?B?Q1dtOFV6dnl0cFU2ZVN1WVUxWVpKSCtrdHFhMWtZcGEwREpDVjhPemxOTmdx?=
 =?utf-8?B?VDU5RkxRaW84UkhnNGx6ejVsQ2wrYzBrcHFLcFQ0dVdGdTc4VWlBSXVXcXFB?=
 =?utf-8?B?T1R1N0wzY2ovMFl3V2tSTlhjbjRKengyTi9WR1BZMitSMFlKY3FCQWtkMXMv?=
 =?utf-8?B?ZXgvSmk2ay9ZL0pTNjJ3VzVnbHFFczFKRWp3akppekNxMFcwWnVoTlFqdmtV?=
 =?utf-8?B?SDRGb1J3aHQ3RXZsZ2kzS1NsRXArZ2VsdXVBV3RhL1ZRaytGdjVhSkFaZWtu?=
 =?utf-8?B?dEZUTUFaTVB5WVRuT2N6TzlDdUlodjFRTTlxNkpXbmE5QnY3em5LNXBURVB0?=
 =?utf-8?B?YUtGTklKNEhVTWE4c3dlSlVBdU54MDdKVWk4MnFlZVVWb29sZ2w0UDJsSVl4?=
 =?utf-8?B?b0IzUmVRTXI3d2RiOFBPSnpqbVNrb1h5VXZYUUFqZFZ6OGprTk14LzE3NFUy?=
 =?utf-8?B?Tkx5YUdXNzF5aVhqcGZkZnRpNzNlcXlUQThJWVBzNjZGcGhhM2JRVzd4OVZT?=
 =?utf-8?B?bWhkUjdHd2RjSUtFeGxvSXlEdmxIcHN3ODVqYndOdTEzd3M0dVcybUYwT2Uz?=
 =?utf-8?B?NE9HZjZJeldRSElMb3NFc2ViMXNwSTgxaWdNVmZQZ3ZHQXBmbG0yb0d1OFda?=
 =?utf-8?B?K2lRdzhPN1htNElNT3BMblBZSzZtcWpYY2xoMmpKQzlmVlFsMGN3aitOelpa?=
 =?utf-8?B?Nm9IbktFdFZsN0hXTlFlVWJ2MUUxMVFmUE1jYjE1T2ZXOVV4NEdpblFScjlh?=
 =?utf-8?B?NUEwNGkvbmFxT1VWci9wY3RuTjRUcjNwQmZHejlQenNXYkRXRThXS1VJc1B4?=
 =?utf-8?B?Z3FUSkVCSU16bklXZ3R5V244U25LOWg3dy91L1hCR1ZpRVZiY1h6ZEtrSFkv?=
 =?utf-8?B?Q0gxWWtpZUR4Q1JTTnU4K01ROFNUUjFqZU50ZTkraEs5Q0tJZ3NtQU01cGx6?=
 =?utf-8?B?L3JUUTBoYWVvbTlWQkZTM1IxL0I4d1RjcU9QYkdtcm83cUlVQmdqYmZYa2Z3?=
 =?utf-8?B?aXp5bjdXSHlGWE1kY3d5aG93V2cza0tleWVTRFJDZm5aTmM4R3JpL1dQSVJE?=
 =?utf-8?B?QjBHNmZhRGlVL1pFMG5ZTzBTSFp5RW9Yb1k2WS80a3RHMHlwbitGWWxOalJC?=
 =?utf-8?B?bkIzQ1hnM1h6T2hETlBLejFJRW5iUHpDNFZ4Q3pSM3FoWk9PdWp0K0ZQUmJj?=
 =?utf-8?B?anFwaFBQNGd3NTY5RmR3dDZOUENubjdqWWRVSEt3ZzlSczQyV05RK25jOWhG?=
 =?utf-8?B?NC96cjNadmNvWENubHczcFptdWxOcGxQNzJEeU9GZWJHbHlZejZlb1JvMldW?=
 =?utf-8?B?UVlzTVFlRWtkdm1rVjB4enY2SHFtVE1JRDNzc0pCQW04Z2lXOUFQaDFOR2dr?=
 =?utf-8?B?a0dOR05IT3o0VnNmRnc5azloS0o5UVJodzVkY1dlVmc5UXFSYjN1Q0pCNTZk?=
 =?utf-8?B?TDh0aG9SRGR1S3h0NVN6RWs5YkZUUnB5K3lXZkZHd1VGeHA2dHJnZ0Jlc2xG?=
 =?utf-8?B?QkM0czlJRmh1TXJqYnhTVHViZ2thRkNUbWIrMER1MXEyNEc5REZPVkZuNkpx?=
 =?utf-8?B?d3NHd2FsUFZTVUFDVnpkakc2bjQxYldsVjdwYjVnUlBsdEVRRUhKMFFxNjUz?=
 =?utf-8?B?TXByeGVBRzh2MnVxT1JlYzE4R3RUdkY5MlM0ZFFIVHdzQVlmNW9ZSUllWlZL?=
 =?utf-8?B?cUlwRkpUbHM4NmtsdG1kWUMzZmFnT1hwRExZMy9mVjQvYWhqM1QxbXhESXhU?=
 =?utf-8?B?eUVvR01NSkcxVjBFTkNSbzN1M3hwTzlYM3c5aWZKOHQ1NWV6UkpSWUJlbmor?=
 =?utf-8?B?c2o1SVdLM1pWUDlNMnIxZTg0ZFBEOTBvZDlSQnZXUVh1dWE1cERZc3RyNzRu?=
 =?utf-8?B?SmwxWjRXQWtERnBKQXBKcXdjV004YXFPSTFkNHVnVWExUWJXbUZBRWZYRzFw?=
 =?utf-8?B?c1dnbXZqMUlnYlRnQVY5RVZKeE82ek5JSXNmc25FUFRNRHk3TS85bHJyU2xX?=
 =?utf-8?B?dnVlUUV6ZGR6aU5ScWErOWlQbFh6cTl3YVlNTHZBNGtoL0NDVmc4cnd0eXUz?=
 =?utf-8?B?ME8rRWNqZk5wSGI5djlDYjd6bGhuSGxTaGh6SXpZeDRlRXQ5TnU4UlpxaVFH?=
 =?utf-8?B?U2ZBa2krZnJLVHh3cFFJeXhOVlA1UDU3M1NRQ2RLWkwxQjZURmMxVWpOSHpq?=
 =?utf-8?Q?xX3kvrFz1UHl/iWA=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c0f78502-ba5c-4deb-773d-08de5f21d0f4
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jan 2026 10:33:17.7150 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JDoYwppC3qIBt8VcvjiLZ4mXUQJaEjV7afnfFOyo7F70jBqJGAH/FxhdWbjsKQhrI/QBqenq3Kfe15nA6tj0Qdv1PZdce8SE1i9//oEQhvo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4956
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769682851; x=1801218851;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=r92q/ncHF0BSWhOZ4H/5g/xygqOdjvIyMwdACr1Ya1g=;
 b=ae4LUpi09F6u6IheLfBqLgvvp9PzFTVHA0fbdf5fD5NBUGfo5R5M/eRj
 Upklsdy6FvIVsDkWKaFd7JnLzGYQzw4sOwni2tARyusTGHpyT9wPRAV+S
 EsgO8keiBSsoAt1B+Q1NuLvicCCyO8+vPoD1w2U0q8hM9WtIOJMVioLXt
 FIfOuRT48PXdZ1e6Zs57VZx9BuvKZCAY5kiReVHChkOlDRpnu6zakiUun
 3ob0AQmfyVeJiQJcVMXzKvatP76bwTeKFPNw6XX852NPEHsJsMnZtM5nv
 S3IW/cTJwUbvJj8pcf9baGLJxIRDItXEG00RWczeAPHAP1s0ILj4PK5lr
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ae4LUpi0
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v3 20/30] docs: kdoc_re: add support
 on NestedMatch for argument replacement
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
X-Spamd-Result: default: False [2.99 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:mchehab+huawei@kernel.org,m:corbet@lwn.net,m:linux-doc@vger.kernel.org,m:bpf@vger.kernel.org,m:linux-hardening@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:mchehab@kernel.org,m:rdunlap@infradead.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[infradead.org:email,intel.com:email,osuosl.org:email,osuosl.org:dkim,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,IA3PR11MB8986.namprd11.prod.outlook.com:mid,lwn.net:email]
X-Rspamd-Queue-Id: 31407AECB6
X-Rspamd-Action: no action

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtd2lyZWQtbGFu
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYNCj4gT2YgTWF1
cm8gQ2FydmFsaG8gQ2hlaGFiDQo+IFNlbnQ6IFRodXJzZGF5LCBKYW51YXJ5IDI5LCAyMDI2IDk6
MDggQU0NCj4gVG86IEpvbmF0aGFuIENvcmJldCA8Y29yYmV0QGx3bi5uZXQ+OyBMaW51eCBEb2Mg
TWFpbGluZyBMaXN0IDxsaW51eC0NCj4gZG9jQHZnZXIua2VybmVsLm9yZz4NCj4gQ2M6IE1hdXJv
IENhcnZhbGhvIENoZWhhYiA8bWNoZWhhYitodWF3ZWlAa2VybmVsLm9yZz47DQo+IGJwZkB2Z2Vy
Lmtlcm5lbC5vcmc7IGludGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnOyBsaW51eC0NCj4g
aGFyZGVuaW5nQHZnZXIua2VybmVsLm9yZzsgbGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZzsN
Cj4gbmV0ZGV2QHZnZXIua2VybmVsLm9yZzsgTWF1cm8gQ2FydmFsaG8gQ2hlaGFiIDxtY2hlaGFi
QGtlcm5lbC5vcmc+Ow0KPiBSYW5keSBEdW5sYXAgPHJkdW5sYXBAaW5mcmFkZWFkLm9yZz4NCj4g
U3ViamVjdDogW0ludGVsLXdpcmVkLWxhbl0gW1BBVENIIHYzIDIwLzMwXSBkb2NzOiBrZG9jX3Jl
OiBhZGQgc3VwcG9ydA0KPiBvbiBOZXN0ZWRNYXRjaCBmb3IgYXJndW1lbnQgcmVwbGFjZW1lbnQN
Cj4gDQo+IEN1cnJlbnRseSwgTmVzdGVkTWF0Y2ggaGFzIHZlcnkgbGltaXRlZCBzdXBwb3J0IGZv
ciBhZ3VtZW50cw0KPiByZXBsYWNlbWVudDogaXQgaXMgYWxsIG9yIG5vdGhpbmcuDQo+IA0KPiBB
ZGQgc3VwcG9ydCB0byBhbGxvdyByZXBsYWNpbmcgaW5kaXZpZHVhbCBhcmd1bWVudHMgYXMgd2Vs
bC4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IE1hdXJvIENhcnZhbGhvIENoZWhhYiA8bWNoZWhhYito
dWF3ZWlAa2VybmVsLm9yZz4NCj4gLS0tDQo+ICB0b29scy9saWIvcHl0aG9uL2tkb2Mva2RvY19y
ZS5weSB8IDg0ICsrKysrKysrKysrKysrKysrKysrKystLS0tLS0tLS0NCj4gLQ0KPiAgMSBmaWxl
IGNoYW5nZWQsIDU5IGluc2VydGlvbnMoKyksIDI1IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAt
LWdpdCBhL3Rvb2xzL2xpYi9weXRob24va2RvYy9rZG9jX3JlLnB5DQo+IGIvdG9vbHMvbGliL3B5
dGhvbi9rZG9jL2tkb2NfcmUucHkNCj4gaW5kZXggZTM0ZDU1YzI1NjgwLi44NThjYzY4OGE1OGYg
MTAwNjQ0DQo+IC0tLSBhL3Rvb2xzL2xpYi9weXRob24va2RvYy9rZG9jX3JlLnB5DQo+ICsrKyBi
L3Rvb2xzL2xpYi9weXRob24va2RvYy9rZG9jX3JlLnB5DQo+IEBAIC0xNzcsMjkgKzE3Nyw2IEBA
IGNsYXNzIE5lc3RlZE1hdGNoOg0KPiAgICAgIHdpbGwgaWdub3JlIHRoZSBzZWFyY2ggc3RyaW5n
Lg0KPiAgICAgICIiIg0KPiANCj4gLSAgICAjIFRPRE86IG1ha2UgTmVzdGVkTWF0Y2ggaGFuZGxl
IG11bHRpcGxlIG1hdGNoIGdyb3Vwcw0KPiAtICAgICMNCj4gLSAgICAjIFJpZ2h0IG5vdywgcmVn
dWxhciBleHByZXNzaW9ucyB0byBtYXRjaCBpdCBhcmUgZGVmaW5lZCBvbmx5IHVwDQo+IHRvDQo+
IC0gICAgIyAgICAgICB0aGUgc3RhcnQgZGVsaW1pdGVyLCBlLmcuOg0KPiAtICAgICMNCj4gLSAg
ICAjICAgICAgIFxiU1RSVUNUX0dST1VQXCgNCj4gLSAgICAjDQo+IC0gICAgIyBpcyBzaW1pbGFy
IHRvOiBTVFJVQ1RfR1JPVVBcKCguKilcKQ0KPiAtICAgICMgZXhjZXB0IHRoYXQgdGhlIGNvbnRl
bnQgaW5zaWRlIHRoZSBtYXRjaCBncm91cCBpcyBkZWxpbWl0ZXItDQo+IGFsaWduZWQuDQo+IC0g
ICAgIw0KPiAtICAgICMgVGhlIGNvbnRlbnQgaW5zaWRlIHBhcmVudGhlc2VzIGlzIGNvbnZlcnRl
ZCBpbnRvIGEgc2luZ2xlDQo+IHJlcGxhY2UNCj4gLSAgICAjIGdyb3VwIChlLmcuIHJgXDEnKS4N
Cj4gLSAgICAjDQo+IC0gICAgIyBJdCB3b3VsZCBiZSBuaWNlIHRvIGNoYW5nZSBzdWNoIGRlZmlu
aXRpb24gdG8gc3VwcG9ydCBtdWx0aXBsZQ0KPiAtICAgICMgbWF0Y2ggZ3JvdXBzLCBhbGxvd2lu
ZyBhIHJlZ2V4IGVxdWl2YWxlbnQgdG86DQo+IC0gICAgIw0KPiAtICAgICMgICBGT09cKCguKiks
ICguKiksICguKilcKQ0KPiAtICAgICMNCj4gLSAgICAjIGl0IGlzIHByb2JhYmx5IGVhc2llciB0
byBkZWZpbmUgaXQgbm90IGFzIGEgcmVndWxhciBleHByZXNzaW9uLA0KPiBidXQNCj4gLSAgICAj
IHdpdGggc29tZSBsZXhpY2FsIGRlZmluaXRpb24gbGlrZToNCj4gLSAgICAjDQo+IC0gICAgIyAg
IEZPTyhhcmcxLCBhcmcyLCBhcmczKQ0KPiAtDQo+ICAgICAgZGVmIF9faW5pdF9fKHNlbGYsIHJl
Z2V4KToNCj4gICAgICAgICAgc2VsZi5yZWdleCA9IEtlcm5SZShyZWdleCkNCj4gDQo+IEBAIC0y
ODUsNiArMjYyLDU5IEBAIGNsYXNzIE5lc3RlZE1hdGNoOg0KPiANCj4gICAgICAgICAgICAgIHlp
ZWxkIGxpbmVbdFswXTp0WzJdXQ0KPiANCj4gKyAgICBAc3RhdGljbWV0aG9kDQo+ICsgICAgZGVm
IF9zcGxpdF9hcmdzKGFsbF9hcmdzLCBkZWxpbT0iLCIpOg0KPiArICAgICAgICAiIiINCj4gKyAg
ICAgICAgSGVscGVyIG1ldGhvZCB0byBzcGxpdCBjb21tYS1zZXBhcmF0ZWQgZnVuY3Rpb24gYXJn
dW1lbnRzDQo+ICsgICAgICAgIG9yIHN0cnVjdCBlbGVtZW50cywgaWYgZGVsaW0gaXMgc2V0IHRv
ICI7Ii4NCj4gKw0KPiArICAgICAgICBJdCByZXR1cm5zIGEgbGlzdCBvZiBhcmd1bWVudHMgdGhh
dCBjYW4gYmUgdXNlZCBsYXRlciBvbiBieQ0KPiArICAgICAgICB0aGUgc3ViKCkgbWV0aG9kLg0K
PiArICAgICAgICAiIiINCj4gKyAgICAgICAgYXJncyA9IFthbGxfYXJnc10NCj4gKyAgICAgICAg
c3RhY2sgPSBbXQ0KPiArICAgICAgICBhcmdfc3RhcnQgPSAwDQo+ICsgICAgICAgIHN0cmluZ19j
aGFyID0gTm9uZQ0KPiArICAgICAgICBlc2NhcGUgPSBGYWxzZQ0KPiArDQo+ICsgICAgICAgIGZv
ciBpZHgsIGQgaW4gZW51bWVyYXRlKGFsbF9hcmdzKToNCj4gKyAgICAgICAgICAgIGlmIGVzY2Fw
ZToNCj4gKyAgICAgICAgICAgICAgICBlc2NhcGUgPSBGYWxzZQ0KPiArICAgICAgICAgICAgICAg
IGNvbnRpbnVlDQo+ICsNCj4gKyAgICAgICAgICAgIGlmIHN0cmluZ19jaGFyOg0KPiArICAgICAg
ICAgICAgICAgIGlmIGQgPT0gJ1xcJzoNCj4gKyAgICAgICAgICAgICAgICAgICAgZXNjYXBlID0g
VHJ1ZQ0KPiArICAgICAgICAgICAgICAgIGVsaWYgZCA9PSBzdHJpbmdfY2hhcjoNCj4gKyAgICAg
ICAgICAgICAgICAgICAgc3RyaW5nX2NoYXIgPSBOb25lDQo+ICsNCj4gKyAgICAgICAgICAgICAg
ICBjb250aW51ZQ0KPiArDQo+ICsgICAgICAgICAgICBpZiBkIGluICgnIicsICInIik6DQo+ICsg
ICAgICAgICAgICAgICAgc3RyaW5nX2NoYXIgPSBkDQo+ICsgICAgICAgICAgICAgICAgY29udGlu
dWUNCj4gKw0KPiArICAgICAgICAgICAgaWYgZCBpbiBERUxJTUlURVJfUEFJUlM6DQo+ICsgICAg
ICAgICAgICAgICAgZW5kID0gREVMSU1JVEVSX1BBSVJTW2RdDQo+ICsNCj4gKyAgICAgICAgICAg
ICAgICBzdGFjay5hcHBlbmQoZW5kKQ0KPiArICAgICAgICAgICAgICAgIGNvbnRpbnVlDQo+ICsN
Cj4gKyAgICAgICAgICAgIGlmIHN0YWNrIGFuZCBkID09IHN0YWNrWy0xXToNCj4gKyAgICAgICAg
ICAgICAgICBzdGFjay5wb3AoKQ0KPiArICAgICAgICAgICAgICAgIGNvbnRpbnVlDQo+ICsNCj4g
KyAgICAgICAgICAgIGlmIGQgPT0gZGVsaW0gYW5kIG5vdCBzdGFjazoNCj4gKyAgICAgICAgICAg
ICAgICBhcmdzLmFwcGVuZChhbGxfYXJnc1thcmdfc3RhcnQ6aWR4XS5zdHJpcCgpKQ0KPiArICAg
ICAgICAgICAgICAgIGFyZ19zdGFydCA9IGlkeCArIDENCj4gKw0KPiArICAgICAgICAjIEFkZCB0
aGUgbGFzdCBhcmd1bWVudCAoaWYgYW55KQ0KPiArICAgICAgICBsYXN0ID0gYWxsX2FyZ3NbYXJn
X3N0YXJ0Ol0uc3RyaXAoKQ0KPiArICAgICAgICBpZiBsYXN0Og0KPiArICAgICAgICAgICAgYXJn
cy5hcHBlbmQobGFzdCkNCj4gKw0KPiArICAgICAgICByZXR1cm4gYXJncw0KPiArDQo+ICAgICAg
ZGVmIHN1YihzZWxmLCBzdWIsIGxpbmUsIGNvdW50PTApOg0KPiAgICAgICAgICAiIiINCj4gICAg
ICAgICAgVGhpcyBpcyBzaW1pbGFyIHRvIHJlLnN1YjoNCj4gQEAgLTMxMCw5ICszNDAsMTMgQEAg
Y2xhc3MgTmVzdGVkTWF0Y2g6DQo+ICAgICAgICAgICAgICAjIFZhbHVlLCBpZ25vcmluZyBzdGFy
dC9lbmQgZGVsaW1pdGVycw0KPiAgICAgICAgICAgICAgdmFsdWUgPSBsaW5lW2VuZDpwb3MgLSAx
XQ0KPiANCj4gLSAgICAgICAgICAgICMgcmVwbGFjZXMgXDAgYXQgdGhlIHN1YiBzdHJpbmcsIGlm
IFwwIGlzIHVzZWQgdGhlcmUNCj4gKyAgICAgICAgICAgICMgcmVwbGFjZSBhcmd1bWVudHMNCj4g
ICAgICAgICAgICAgIG5ld19zdWIgPSBzdWINCj4gLSAgICAgICAgICAgIG5ld19zdWIgPSBuZXdf
c3ViLnJlcGxhY2UocidcMCcsIHZhbHVlKQ0KPiArICAgICAgICAgICAgaWYgIlxcIiBpbiBzdWI6
DQo+ICsgICAgICAgICAgICAgICAgYXJncyA9IHNlbGYuX3NwbGl0X2FyZ3ModmFsdWUpDQo+ICsN
Cj4gKyAgICAgICAgICAgICAgICBuZXdfc3ViID0gcmUuc3ViKHInXFwoXGQrKScsDQo+ICsgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICBsYW1iZGEgbTogYXJnc1tpbnQobS5ncm91cCgx
KSldLA0KPiBuZXdfc3ViKQ0KPiANCj4gICAgICAgICAgICAgIG91dCArPSBuZXdfc3ViDQo+IA0K
PiAtLQ0KPiAyLjUyLjANCg0KUmV2aWV3ZWQtYnk6IEFsZWtzYW5kciBMb2t0aW9ub3YgPGFsZWtz
YW5kci5sb2t0aW9ub3ZAaW50ZWwuY29tPg0K
