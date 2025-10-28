Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C6562C134CC
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Oct 2025 08:31:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2335261583;
	Tue, 28 Oct 2025 07:31:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9sKCmSFEJNDw; Tue, 28 Oct 2025 07:31:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 431C661584
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761636698;
	bh=zoMtYkedzOkrNlznvCWNuuEhGeNYLd6VjoKxUUXumVo=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Glo/WNHgCMCHJiliHcOPAgZ4zu4M6jy/aCTz0pMTt0x6nkyOzbENdpyN7fyZbwkc4
	 5+1zqbEemVVn7tORf3NfqQP7lpvfN6SI/32g/7+b5bNrUr1UQJF/OMiIOWA+I/aINo
	 vqqiXPLgCBnC0TCuxOmYmzDtaNtxrzxCtFzDI5UY81GX1LSXOtUmHSudMtqcmmQ9OR
	 jhQDD3QErFEpz0LdfpZuFDI39fHWPPBOi5wwhON7ZoYls0v02lCCPLq9/REG6s4Z2V
	 imQFAimdz0dIdZgdTM9VXMX/FEmApWP+ePMdmQWjDBVzaSm3hl3xN+ZCKqVvK1HWdX
	 IxHvWx6/sQVQQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 431C661584;
	Tue, 28 Oct 2025 07:31:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id A0F4B43F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Oct 2025 07:31:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8688A418A9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Oct 2025 07:31:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Qon_ngD0iLSD for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Oct 2025 07:31:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 65367418A7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 65367418A7
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 65367418A7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Oct 2025 07:31:34 +0000 (UTC)
X-CSE-ConnectionGUID: mM4UUMSkT3mJpa3L4O0ApA==
X-CSE-MsgGUID: hhja3HvaSCyKMnz7LO5MfQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="67372206"
X-IronPort-AV: E=Sophos;i="6.19,260,1754982000"; d="scan'208";a="67372206"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2025 00:31:35 -0700
X-CSE-ConnectionGUID: 64dgOrntRp6XyI7VpymT+g==
X-CSE-MsgGUID: xwsrtVB+RiezsWI6xbT7AQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,260,1754982000"; d="scan'208";a="184899611"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2025 00:31:34 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 28 Oct 2025 00:31:33 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 28 Oct 2025 00:31:33 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.71)
 by edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 28 Oct 2025 00:31:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=afoCnNpBrBmuoRocBxeWxjjjISHrCJjxq8ngMw3+sYu3BF1o9W8F2OWnlzPgLUQl6Y+YPc9Zsp221LP6nH/uKTDv8KvH1t4b+U1EGAnqMrL4PViotGYg1LcKEeWEwy9vOj6nFxaDri3V7LWp6eSiOY2WHbShO/QHjcEMM1nmdqW5rJrYH/753rHT/ZJ1Svp6RO+4ly3taTw42Nv6oeVLfzht6xP2cenapgiOUmRAuj/sm2+xHy2OzbnepF3YDAeGU4W+/SKwlo0nPgnEK7MBhZTLi8mXloZl9D758Vd0xoQ0MC/A2U5so5uOSXfQQEGn3nGo9tH4Ku0ZE0UDq2vydw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zoMtYkedzOkrNlznvCWNuuEhGeNYLd6VjoKxUUXumVo=;
 b=HBQe952Ylm8agZlGWHw/tAS65SkVDifGJsph8MfR4635RbJBFv7Ye14+Vd/R53uDkKj2zeK/X7yuwjnbHdLyOAJfcigdF4ASQW4HuRWMmnmq8njImn4V8BBuL+EQq5igSYGuEy+FHwgY9pUmkbPu9bskSo49hSB49OL3CKvIdTn74FDXDbCFu9L6DPR2bHfdbVbxwdIEuAsH+mDEpo86Aep5ZnOuuyoVB1Fe/qXhmnhg/A6pifZypKSiEQOli3//i0luzmLzO0A8mqyxcmZvlwlm5Mq5aEpqGYO0QM1bDyJo/ptCDdQs5r8W/G01tc6oPfbiCldseUbR8SfyUiEhzw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by DS0PR11MB7926.namprd11.prod.outlook.com (2603:10b6:8:f9::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.18; Tue, 28 Oct
 2025 07:31:26 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9253.017; Tue, 28 Oct 2025
 07:31:26 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Nathan Chancellor <nathan@kernel.org>, Kees Cook <kees@kernel.org>,
 "Lobakin, Aleksander" <aleksander.lobakin@intel.com>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
CC: Simon Horman <horms@kernel.org>, Nick Desaulniers
 <nick.desaulniers+lkml@gmail.com>, Bill Wendling <morbo@google.com>, "Justin
 Stitt" <justinstitt@google.com>, Sami Tolvanen <samitolvanen@google.com>,
 Russell King <linux@armlinux.org.uk>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, Michal Kubiak <michal.kubiak@intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "llvm@lists.linux.dev" <llvm@lists.linux.dev>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH 3/3] libeth: xdp: Disable generic kCFI
 pass for libeth_xdp_tx_xmit_bulk()
Thread-Index: AQHcR1WBHa562j1ODECRHts0PJsg+LTXKvXg
Date: Tue, 28 Oct 2025 07:31:26 +0000
Message-ID: <IA3PR11MB89868B14FC6C35C589325FEFE5FDA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20251025-idpf-fix-arm-kcfi-build-error-v1-0-ec57221153ae@kernel.org>
 <20251025-idpf-fix-arm-kcfi-build-error-v1-3-ec57221153ae@kernel.org>
In-Reply-To: <20251025-idpf-fix-arm-kcfi-build-error-v1-3-ec57221153ae@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|DS0PR11MB7926:EE_
x-ms-office365-filtering-correlation-id: 841a1c1c-b763-42b9-f6fe-08de15f400ba
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|7416014|366016|1800799024|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?THdISytpdmQ2OTJkK3p0YUtoWFpoa0dNSmpnd2hGWkJCbFRJSFZyV0RzR0JZ?=
 =?utf-8?B?cDBDR0pXclp5cUpOQ2pJbndxUTlFc3g3ZmNtd2dITFkxYWRNRmVBbCtWc1RH?=
 =?utf-8?B?N3RVZmphdFNyUVJ3R3dwWVl4anRjdUpNV3V6V3lwVnRVYXB3OEkrcmF1Vy9L?=
 =?utf-8?B?RVZBTEJTL3lvSUNjNmpMam1jU3dNOW5XVjVEMVh3TmgyNTNTTEVIQnBFcHh5?=
 =?utf-8?B?TzMzRlpLUVNvTlI1VUlDaFNtanp0cFBYZitHSjFJYXBlTEhPOUlVMmVFMHdV?=
 =?utf-8?B?aDRqd3Fib1B1c3psemt5OCsrb1RJQjFDSWN2VjRKam5SSUpwR3pQMmpmRXVs?=
 =?utf-8?B?ZVhGYzdubEJDVXJZZ0NJOEVZNWJHWllxbjlvVE1kWnNyQTArTGlEL1RDK2FU?=
 =?utf-8?B?WG8yYlJLaDcrT25JQVpQZytIdVJDZnNJMS9RMHNIRE1hb2t4MkVjQWh0MnRh?=
 =?utf-8?B?dTBISXJ1dEVSRXkvTytkNDlVSTNCVkthelFwT0lRM2ExZk5wYkh0bFZSYmc0?=
 =?utf-8?B?R3d0aUVDSThBQTZxNUIvQm93OERPVkM0d0JhanZhMW1MRzgzdkRaMUcySHJT?=
 =?utf-8?B?Y09adXk4S1ZsU2pDK0NVaThWMWNKRHJrWVZZU0R3TjI1NEVsaitFTWNFNkRx?=
 =?utf-8?B?blNNZVNEQ0NJVlIrZ2o2L0xGWERibW5Bd2xwTnpYQkZHZ2pRclFVZG1Ob2N1?=
 =?utf-8?B?cGNkWWtta3pNL2dQdTBGc2M0Q2s3L0tCeFdyUlM1UWc0dlJpTzVHWFV6RWw3?=
 =?utf-8?B?UFZQK3J5cmp0dS9Cd2t0eVUyMlNMY3kyelRyL29UWmFIR1hpSHA5Q1VjbDBB?=
 =?utf-8?B?M3VuN09FMjJtTVlOYzNndU5RbnZIc0QyVVRTQytwbkVFSmxmaWgwZFl4b1lF?=
 =?utf-8?B?ZXA5UnFCNXpLTk9ZaE9DdFZTVDYyNE9oWEx6aFBCZ3ppOGdUa29WdkZRa1pu?=
 =?utf-8?B?blNZYmIzcXFybGFnM2tNa2ZSZXJ5bGkxc2xxY3hTSkVmVHJ3ZlI4V1lHSFd6?=
 =?utf-8?B?eWtaZGlPV3JxZUd3OE9ONTJtOVU1TEM2YjJZMmRtN3hBZk1NbXNPUXNjTjBx?=
 =?utf-8?B?WlBOVXdFWm0vVEEzcnFoaHd6UVBEMStoNW5DZS9EczhpTGF0L1FRdGpMOXJk?=
 =?utf-8?B?ZHFjaEFHSjVSZ2NMS0NMUHhqOExrNnYyUVJTYndHdnlGOXRnRUFVeUZUbU0r?=
 =?utf-8?B?UzBjSXpFM0lmaWdUMStodElqVWhMa01TMXNkR1dGMTYyMExmcGVVTWk3OWMw?=
 =?utf-8?B?RVN6RWk4MmUvSjl3MXlZbDkwdmdqSUFlWnVMSFhMaXRGSTJQNXY5UWJOcTRk?=
 =?utf-8?B?aHZKb00va0JvSHgwcjM4UkpNY2d0VXhwK2pWOTRVam00b0xxZXhMWFY0eUg1?=
 =?utf-8?B?WS9jaGlFOG5rVFZUTXBPT2ZrbDRtZTYxcThPWG5STVQydXpscnNRM0pLa1dU?=
 =?utf-8?B?NWFhSEN4cVNBMGxDdUsrODZNdk5hQ3J0aGxNUmhmWXZ2bmZwWGptVERvZmZ1?=
 =?utf-8?B?OEhnV2xDOWwzVCthMHByRkQrYTFRWWRmckFIU3R1dy81TFkyUVRRenFlN1BY?=
 =?utf-8?B?OGx1YkcrTUthYm1xNEpzNERMS0tRcjZ6Q2wxL2ZianRNOTJDcWRtNTZKM1BW?=
 =?utf-8?B?a08xTVlBSDZUV0hXS1A3ZE9DN3VSdEJ6YXNHazI3T0xleW5MTTBIT09PZ0hU?=
 =?utf-8?B?SmtNU2FiTzQwS3YvcXZjMWtybCtaL1U3K1BJT2ZQVkEyS01LYURNZmI4cTBG?=
 =?utf-8?B?RmRWYjNhY0QrbHFaYkh1REordXI3TncwTWl6ejM0d3lIVzlDUkVtWmZtdThP?=
 =?utf-8?B?RTRiTWpCMnhlbjdUaFJaNGNEV0tMS0NJVEh3MC81Mjlqbyt1WGFWWUVFOUhu?=
 =?utf-8?B?WVN1Nm5BRjVxSDlhY1BQdzBqeUxYVFMwVTVmM0VEV2lKdDNwd1BJbkNsR05r?=
 =?utf-8?B?Ti95LzFIQUk2VFZqZkg5WWwvM0VkMUVwUitqNVNUa1NSUzdvMGs2UGZBdUhm?=
 =?utf-8?B?NC9ZcldwWUw0LzRrRnprTllXUkpsUVJOVDZ1QmtCN244eHpGdFJHaTBEM2xM?=
 =?utf-8?Q?1ag9jg?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(366016)(1800799024)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?aXBqZWNWQmVBcTQ4d1hmWUxldy9vblNRQ1k2Zjl5L3ZUcis0Y09iNkdFa0tS?=
 =?utf-8?B?S3FXZnFKejdUODRPeEs1cDhoSmo3bDlETC9GVzQzUG1MMG0zZnFEc3hlZ3Ru?=
 =?utf-8?B?UmEvVmVlQVQvZmRNRDk5enEyM1h5d01pQWhrMDNZVGI2REhYUTBBQjZwb2Ra?=
 =?utf-8?B?U3NGTEtyT0NUUWdiT2U4TFZaTWlQL05pVERDRjRaWEJ3dHJDTFdsRG1zWjF5?=
 =?utf-8?B?aHd4TU0wNDhOenJPUUlieENWelZhYnBXR0pFZ0J4cE45WGI0OHZWZkE3aEw5?=
 =?utf-8?B?R0lxcUVndTdocGJEclVtSGxRMWJ4cmpVMERPR2lndjYzL2J3Nks5ZkRlN1ZV?=
 =?utf-8?B?SnhqbjhqTVk0TUNQZ015elZoRFV0YlNaUmZONHFjcU0rK3hoU1JJZmNzQXJi?=
 =?utf-8?B?aU82QzlmRWU5QjdlSC9USDR1a2hyQ0pXTHNoMkk1VmF2aDZyQWhvRFZ6YXMy?=
 =?utf-8?B?Z3pkMUp5QlVzc1krNFJOZVYxQ29wMWUySlY2bUlpaUFlZ3BTODQrdW9ORVdm?=
 =?utf-8?B?blRSZFB5cFRmRkpSanUwQTNpSjh2dHA3d3ByUENzOGd1U1lHOEtJSm1LWC9t?=
 =?utf-8?B?VSttcGZpcFgxNmlCR3VKM1o5RXZKbEQzbjdobmF0UmpidkRGTzNYT0FzU01W?=
 =?utf-8?B?aWpvQXB1NFVQbGlUeVB2OE8rbmowK2F6YUlEUTMrdXVsOWxHUnM4cEU4dG9H?=
 =?utf-8?B?eTVJdWw5ckd5WHFNcmUza0dhc2RpdzI1SWFRTm9sS0wzRGNMR0tmdXFna0M3?=
 =?utf-8?B?MVdXYk1CbWVNTjVVUU5teVNLZEtZL0Z6NkpUMkppZ1UxTFkzZEwzR2c1S2dE?=
 =?utf-8?B?Uk43S3QwdmJ6WlRkMjZDSzR2dHNGZkJadE1oZFNiOCtSdXRmcEtWSjl3Slpl?=
 =?utf-8?B?R2ZwT3BUbHozSnRWTUM0TE1FMmtBclZwc1RzcEFDRy9TV2ozYyt0ZVdUYWVR?=
 =?utf-8?B?dXdWeEFhV3N5ejJCZG92bGFuN2t0UHVpczJSOEp1b3VBMVFvQ0pJQ3h4SHdk?=
 =?utf-8?B?UDZQZExqb3F2MjNGS1JHblpWMk5EYU5oc05XaDRUeXRCeWNsVUUrNWhvNisv?=
 =?utf-8?B?cG1tUWxDSXJnL2RJMHFQTEh5a0tXUkNOSkcrN3lwbFdEQXZyS2xYZ2ROOFgz?=
 =?utf-8?B?SVJ5U053aVd6eTRGZ2RTdG1Wa3l6NXN4Z0l0NjZQcjZQK0dIQkZXWjZsTTRN?=
 =?utf-8?B?Uis2K2dCZ1hTeTJ5cTV3d3dZNEl3VEZzUFBQSHlDT20zTnFHd25tY2xHNC9i?=
 =?utf-8?B?VUtoRWRqSytvelJ1N0ozOVZZWTBZVXVyU3drZmlLWUVRVG51VkFPSVdTR3dN?=
 =?utf-8?B?VVZSZlo5WlhqdkFVK0g1U2hZb016emVSRjJIT2VITGpVc3h3THZNaVY2Vmwz?=
 =?utf-8?B?bzl1ZXhacVIvSzB2YUtyKzcvSHFZRFFiSnF5VktnUTdNTHFpejI4VW9sV2tn?=
 =?utf-8?B?cUpMby94ckpEd1BnNk1oWUd0WEdZODlTQ2dMOXJEQ1UrdU56dzZRaUpYQm5k?=
 =?utf-8?B?VktrSkdVTFI3WEhBMGpxaW5SWTQrS1BlRDZaSWFxT0k5QjNkWUFvUVhQWVBk?=
 =?utf-8?B?K1d5bHd2R2t6VnNYTWQrZ2tUbTM5cUNKNFJJNE1TL0tPeHNmM3p0eVpNVlQz?=
 =?utf-8?B?bEpUL3ZIbUxoUllXZk80bHJpb1NRNThSMTlsWk5kVVFYR1piNGYwVjJVRFJ1?=
 =?utf-8?B?N0VTWWNaZXBpVVkyS09aOTJXamtPd0RUWWJzT3B3RlMwMWcwdVVOdFFRdUJ2?=
 =?utf-8?B?UVRnTkhRcVdUbmsrYUxHY2tVb2loZVJnejRYbjM4TVdRbGw3NFN0L1Y4Qytt?=
 =?utf-8?B?VHlJdXNsbjQvNjNXVkI0T1FBb1pIL0dCU29XL0tjaGtxMjF4dC9ZSWxjaVdn?=
 =?utf-8?B?MURJK2lHbGRDc0ZwaEVLTHFveGgyZDRMR1BXa1hnd1Zsb0RhclpCYUMrdkls?=
 =?utf-8?B?YTBOUXVTaGxoS1hrZFoyOXIxREVzU1RLQnVsT2Ewc3dtWTJQdG42ejJYbmR6?=
 =?utf-8?B?QmZlNmtabjdWM2V0bGRxRE9EaVB4VW9PdzRLTGZ4dnI0RGpIRSszck1jT1BM?=
 =?utf-8?B?Zm1lV0ZaYW0rRjJUTlFhRnRqYTdlZWpsM2Y0QWpxVTJqYUJtOGNFVUd0eXlF?=
 =?utf-8?B?VFRaUUt6TlRiN2VEMXF3b1cwWEF6by9uYk9PZEpCUklyVzhmcWFqaEFuL0Qy?=
 =?utf-8?B?YVE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 841a1c1c-b763-42b9-f6fe-08de15f400ba
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Oct 2025 07:31:26.1016 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tfSxXcACZcSVTdzn3n4k2hta0qWVHpoZW+kSiUVwksJfpJ9JSeIz8TrqBji9BuS9UIxZovzQrRB/vj+vxU7fJozEDA3vnvvULH6RO1a9iks=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7926
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761636696; x=1793172696;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=zoMtYkedzOkrNlznvCWNuuEhGeNYLd6VjoKxUUXumVo=;
 b=b2F6ZYecbrHBsyPREj8CJq/Ivp5CjDIMPBVYctI2V+JNpvIvZp2VDHGA
 BEGqIOnbhM+X2F3QOm/kpFrH5tiUmIIbX1wSBvqTlXAaaAFuVEuW2FzED
 ort1JCT6FZUZ+8fqzeTJ7LU4Jk+lXz15DJ49+urjFAGI7JyZ6qm8VRm7d
 eSu+Z7BYrx3yggiHBTPrsCBjqu9nivmbfWWsViW3Veeg73g5qomWIiTsI
 oAaC2f6z02NikCx4R10IOClLFbG14/H9nTJGMIQTuqSPDxluQEmZ98IUt
 p6mxpNKqR6TnteB0YmMwzcvp2rTigiF9WenpnuPsZt4Mh2P4UAchq/HRs
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=b2F6ZYec
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH 3/3] libeth: xdp: Disable generic kCFI
 pass for libeth_xdp_tx_xmit_bulk()
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtd2lyZWQtbGFu
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYNCj4gT2YgTmF0
aGFuIENoYW5jZWxsb3INCj4gU2VudDogU2F0dXJkYXksIE9jdG9iZXIgMjUsIDIwMjUgMTA6NTMg
UE0NCj4gVG86IEtlZXMgQ29vayA8a2Vlc0BrZXJuZWwub3JnPjsgTG9iYWtpbiwgQWxla3NhbmRl
cg0KPiA8YWxla3NhbmRlci5sb2Jha2luQGludGVsLmNvbT47IERhdmlkIFMuIE1pbGxlciA8ZGF2
ZW1AZGF2ZW1sb2Z0Lm5ldD47DQo+IEVyaWMgRHVtYXpldCA8ZWR1bWF6ZXRAZ29vZ2xlLmNvbT47
IEpha3ViIEtpY2luc2tpIDxrdWJhQGtlcm5lbC5vcmc+Ow0KPiBQYW9sbyBBYmVuaSA8cGFiZW5p
QHJlZGhhdC5jb20+DQo+IENjOiBTaW1vbiBIb3JtYW4gPGhvcm1zQGtlcm5lbC5vcmc+OyBOYXRo
YW4gQ2hhbmNlbGxvcg0KPiA8bmF0aGFuQGtlcm5lbC5vcmc+OyBOaWNrIERlc2F1bG5pZXJzDQo+
IDxuaWNrLmRlc2F1bG5pZXJzK2xrbWxAZ21haWwuY29tPjsgQmlsbCBXZW5kbGluZyA8bW9yYm9A
Z29vZ2xlLmNvbT47DQo+IEp1c3RpbiBTdGl0dCA8anVzdGluc3RpdHRAZ29vZ2xlLmNvbT47IFNh
bWkgVG9sdmFuZW4NCj4gPHNhbWl0b2x2YW5lbkBnb29nbGUuY29tPjsgUnVzc2VsbCBLaW5nIDxs
aW51eEBhcm1saW51eC5vcmcudWs+Ow0KPiBOZ3V5ZW4sIEFudGhvbnkgTCA8YW50aG9ueS5sLm5n
dXllbkBpbnRlbC5jb20+OyBNaWNoYWwgS3ViaWFrDQo+IDxtaWNoYWwua3ViaWFrQGludGVsLmNv
bT47IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc7DQo+IGxsdm1AbGlzdHMubGludXguZGV2
OyBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmc7DQo+IG5ldGRldkB2Z2VyLmtl
cm5lbC5vcmc7IGludGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnDQo+IFN1YmplY3Q6IFtJ
bnRlbC13aXJlZC1sYW5dIFtQQVRDSCAzLzNdIGxpYmV0aDogeGRwOiBEaXNhYmxlIGdlbmVyaWMN
Cj4ga0NGSSBwYXNzIGZvciBsaWJldGhfeGRwX3R4X3htaXRfYnVsaygpDQo+IA0KPiBXaGVuIGJ1
aWxkaW5nIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lkcGYveHNrLmMgZm9yIEFSQ0g9YXJt
IHdpdGgNCj4gQ09ORklHX0NGST15IHVzaW5nIGEgdmVyc2lvbiBvZiBMTFZNIHByaW9yIHRvIDIy
LjAuMCwgdGhlcmUgaXMgYQ0KPiBCVUlMRF9CVUdfT04gZmFpbHVyZToNCj4gDQo+ICAgJCBjYXQg
YXJjaC9hcm0vY29uZmlncy9yZXByby5jb25maWcNCj4gICBDT05GSUdfQlBGX1NZU0NBTEw9eQ0K
PiAgIENPTkZJR19DRkk9eQ0KPiAgIENPTkZJR19JRFBGPXkNCj4gICBDT05GSUdfWERQX1NPQ0tF
VFM9eQ0KPiANCj4gICAkIG1ha2UgLXNraiIkKG5wcm9jKSIgQVJDSD1hcm0gTExWTT0xIGNsZWFu
IGRlZmNvbmZpZyByZXByby5jb25maWcNCj4gZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWRw
Zi94c2subw0KPiAgIEluIGZpbGUgaW5jbHVkZWQgZnJvbSBkcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9pZHBmL3hzay5jOjQ6DQo+ICAgaW5jbHVkZS9uZXQvbGliZXRoL3hzay5oOjIwNToyOiBl
cnJvcjogY2FsbCB0bw0KPiAnX19jb21waWxldGltZV9hc3NlcnRfNzI4JyBkZWNsYXJlZCB3aXRo
ICdlcnJvcicgYXR0cmlidXRlOg0KPiBCVUlMRF9CVUdfT04gZmFpbGVkOiAhX19idWlsdGluX2Nv
bnN0YW50X3AodG1vID09IGxpYmV0aF94c2t0bW8pDQo+ICAgICAyMDUgfCAgICAgICAgIEJVSUxE
X0JVR19PTighX19idWlsdGluX2NvbnN0YW50X3AodG1vID09DQo+IGxpYmV0aF94c2t0bW8pKTsN
Cj4gICAgICAgICB8ICAgICAgICAgXg0KPiAgIC4uLg0KPiANCj4gbGliZXRoX3hkcF90eF94bWl0
X2J1bGsoKSBpbmRpcmVjdGx5IGNhbGxzIGxpYmV0aF94c2tfeG1pdF9maWxsX2J1ZigpDQo+IGJ1
dCB0aGVzZSBmdW5jdGlvbnMgYXJlIG1hcmtlZCBhcyBfX2Fsd2F5c19pbmxpbmUgc28gdGhhdCB0
aGUgY29tcGlsZXINCj4gY2FuIHR1cm4gdGhlc2UgaW5kaXJlY3QgY2FsbHMgaW50byBkaXJlY3Qg
b25lcyBhbmQgc2VlIHRoYXQgdGhlIHRtbw0KPiBwYXJhbWV0ZXIgdG8gX19saWJldGhfeHNrX3ht
aXRfZmlsbF9idWZfbWQoKSBpcyB1bHRpbWF0ZWx5DQo+IGxpYmV0aF94c2t0bW8gZnJvbSBpZHBm
X3hza194bWl0KCkuDQo+IA0KPiBVbmZvcnR1bmF0ZWx5LCB0aGUgZ2VuZXJpYyBrQ0ZJIHBhc3Mg
aW4gTExWTSBleHBhbmRzIHRoZSBrQ0ZJIGJ1bmRsZXMNCj4gZnJvbSB0aGUgaW5kaXJlY3QgY2Fs
bHMgaW4gbGliZXRoX3hkcF90eF94bWl0X2J1bGsoKSBpbiBzdWNoIGEgd2F5DQo+IHRoYXQgbGF0
ZXIgb3B0aW1pemF0aW9ucyBjYW5ub3QgdHVybiB0aGVzZSBjYWxscyBpbnRvIGRpcmVjdCBvbmVz
LA0KPiBtYWtpbmcgdGhlIEJVSUxEX0JVR19PTiBmYWlsIGJlY2F1c2UgaXQgY2Fubm90IGJlIHBy
b3ZlZCBhdCBjb21waWxlDQo+IHRpbWUgdGhhdCB0bW8gaXMgbGliZXRoX3hza3Rtby4NCj4gDQo+
IERpc2FibGUgdGhlIGdlbmVyaWMga0NGSSBwYXNzIGZvciBsaWJldGhfeGRwX3R4X3htaXRfYnVs
aygpIHRvIGVuc3VyZQ0KPiB0aGVzZSBpbmRpcmVjdCBjYWxscyBjYW4gYWx3YXlzIGJlIHR1cm5l
ZCBpbnRvIGRpcmVjdCBjYWxscyB0byBhdm9pZA0KPiB0aGlzIGVycm9yLg0KPiANCj4gQ2xvc2Vz
OiBodHRwczovL2dpdGh1Yi5jb20vQ2xhbmdCdWlsdExpbnV4L2xpbnV4L2lzc3Vlcy8yMTI0DQo+
IEZpeGVzOiA5NzA1ZDY1NTJmNTggKCJpZHBmOiBpbXBsZW1lbnQgUnggcGF0aCBmb3IgQUZfWERQ
IikNCj4gU2lnbmVkLW9mZi1ieTogTmF0aGFuIENoYW5jZWxsb3IgPG5hdGhhbkBrZXJuZWwub3Jn
Pg0KPiAtLS0NCj4gIGluY2x1ZGUvbmV0L2xpYmV0aC94ZHAuaCB8IDIgKy0NCj4gIDEgZmlsZSBj
aGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQ0KPiANCj4gZGlmZiAtLWdpdCBh
L2luY2x1ZGUvbmV0L2xpYmV0aC94ZHAuaCBiL2luY2x1ZGUvbmV0L2xpYmV0aC94ZHAuaCBpbmRl
eA0KPiBiYzM1MDdlZGQ1ODkuLjg5ODcyM2FiNjJlOCAxMDA2NDQNCj4gLS0tIGEvaW5jbHVkZS9u
ZXQvbGliZXRoL3hkcC5oDQo+ICsrKyBiL2luY2x1ZGUvbmV0L2xpYmV0aC94ZHAuaA0KPiBAQCAt
NTEzLDcgKzUxMyw3IEBAIHN0cnVjdCBsaWJldGhfeGRwX3R4X2Rlc2Mgew0KPiAgICogY2FuJ3Qg
ZmFpbCwgYnV0IGNhbiBzZW5kIGxlc3MgZnJhbWVzIGlmIHRoZXJlJ3Mgbm8gZW5vdWdoIGZyZWUN
Cj4gZGVzY3JpcHRvcnMNCj4gICAqIGF2YWlsYWJsZS4gVGhlIGFjdHVhbCBmcmVlIHNwYWNlIGlz
IHJldHVybmVkIGJ5IEBwcmVwIGZyb20gdGhlDQo+IGRyaXZlci4NCj4gICAqLw0KPiAtc3RhdGlj
IF9fYWx3YXlzX2lubGluZSB1MzINCj4gK3N0YXRpYyBfX2Fsd2F5c19pbmxpbmUgX19ub2NmaV9n
ZW5lcmljIHUzMg0KPiAgbGliZXRoX3hkcF90eF94bWl0X2J1bGsoY29uc3Qgc3RydWN0IGxpYmV0
aF94ZHBfdHhfZnJhbWUgKmJ1bGssIHZvaWQNCj4gKnhkcHNxLA0KPiAgCQkJdTMyIG4sIGJvb2wg
dW5yb2xsLCB1NjQgcHJpdiwNCj4gIAkJCXUzMiAoKnByZXApKHZvaWQgKnhkcHNxLCBzdHJ1Y3Qg
bGliZXRoX3hkcHNxDQo+ICpzcSksDQo+IA0KPiAtLQ0KPiAyLjUxLjENCg0KUmV2aWV3ZWQtYnk6
IEFsZWtzYW5kciBMb2t0aW9ub3YgPGFsZWtzYW5kci5sb2t0aW9ub3ZAaW50ZWwuY29tPg0K
