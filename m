Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id S4yYF5vRK2qcFgQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Jun 2026 11:30:03 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E1E46784A7
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Jun 2026 11:30:02 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=WX8TT7Rk;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.138 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 560B6821F9;
	Fri, 12 Jun 2026 09:30:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id u3g7V3eX1-i9; Fri, 12 Jun 2026 09:29:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C71F5820F8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1781256599;
	bh=+5hoV03g0lWx0RvXcqChplLjd/zUlAFG05+8Fx5UOgU=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=WX8TT7RkmWFx6unm2E55ae7ex59h/Trw3SvMwqO+XIMGMMUEtQVlyO5WswAEOABfv
	 QTxzH6qf0sgpJj4oNomnzM5Tr2/qZjeNaawfnctcvxifnD4UI1oa8WFWaBuARIDFbn
	 +DRWibsVnPeV9tZXttk7hZzPvEOJ2Nem8Kq7EiZxR6myWzmKvkrzwG5wW29YEPYjDw
	 Qfx5GYSROP+Jrk7VWWbBouZDe28BxsB7w9LXkLC+OKZEZTLlPqHLwoVKEXvtCMsrLx
	 dRhuvu6QGHT4NjlbcVJIk7CWJMhc+dH3Qz9sRr56ovHDqRRFACUzOPwbEokLLg8uXG
	 jqX2K+LjYhtvQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id C71F5820F8;
	Fri, 12 Jun 2026 09:29:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 8945AF4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Jun 2026 09:29:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7ADB5402A4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Jun 2026 09:29:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tQCg3zf_rZu7 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Jun 2026 09:29:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org C26A740146
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C26A740146
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C26A740146
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Jun 2026 09:29:56 +0000 (UTC)
X-CSE-ConnectionGUID: C8sw0DN4RgKROsMCRV/yeA==
X-CSE-MsgGUID: uFTGuGwGS06zZ85F6+bNIQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11813"; a="81219775"
X-IronPort-AV: E=Sophos;i="6.24,200,1774335600"; d="scan'208";a="81219775"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2026 02:29:56 -0700
X-CSE-ConnectionGUID: cugmoW/jRtCZ+mKt9acjHQ==
X-CSE-MsgGUID: 6gGkseWuTyuC1uhSIsbMnQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,200,1774335600"; d="scan'208";a="270816105"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2026 02:29:56 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 12 Jun 2026 02:29:55 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 12 Jun 2026 02:29:55 -0700
Received: from BN8PR05CU002.outbound.protection.outlook.com (52.101.57.19) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 12 Jun 2026 02:29:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pMUDx2O6Ke1wZfr8zBAZXybxvgplqesS5IXXsZng7pV/XyvGS9paQzwhRj0F4rRTosX0Oi+cVmJFtZDBbR90mn2qpZC2gWakHKmt+kCLxxtz4ifOYAwHMtEG3BJwGiqGnrT16W8SwVH3f1c0pmexnhARRgDsq+K/tOuYBT7+uOfraNi7dy+eYIkpL4FrLD6/JNpLAdZ1mINB/8bXrcU3WEJ7Gto4Rtbx45Z+hIE/o7Bxx6wX9TYOCPo++ugJCLQfZbCT0B4JA9AThA1LgkhbGb0jqyPfyNg5aGeeCTblaqALFBs0f2bYNQSpBU8PPKSxjiFHchQxMzUfTF16VhLw0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+5hoV03g0lWx0RvXcqChplLjd/zUlAFG05+8Fx5UOgU=;
 b=qNz848GSXOJKSnIgwMKTBbDHL6I79WhgVVxm9NGjZlOGN0wEoIbzu5YUHZnTCRgQeqUz1aAwskyogm2OpZiG59FldwGfSH8LldlL3/9xfNfez9uLkVJHf+eDGLQyBVgQEWX3DI9mCQQWmpFatEsAhFGPvDyzznKTNXC2/Wq0C8Zfzk+YLhhTBN1eN6Z9I5TeiAoRkJ+lUHsPT/EofgL1/FNsmxTSdAtQEDjcS6QhDrCxLZ1IlgJtxTdKagD3/fX12Zxntx0ahA5UMvgBJ1gy6iC2RQ2nBzHAGyxzXXmlzwU3XZJ28B56Dmh2oFj9O+ah1B2LmAwbRFc9CO6r3bMtCQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by PH0PR11MB4901.namprd11.prod.outlook.com (2603:10b6:510:3a::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.14; Fri, 12 Jun
 2026 09:29:52 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::6aa:411d:4bfa:619c]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::6aa:411d:4bfa:619c%4]) with mapi id 15.21.0113.013; Fri, 12 Jun 2026
 09:29:52 +0000
Message-ID: <7a6a3f63-0b69-4e1f-997e-f198e2bc43e9@intel.com>
Date: Fri, 12 Jun 2026 11:29:45 +0200
User-Agent: Mozilla Thunderbird
To: Danny Gonzalez <digonzal@google.com>
CC: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, "David S. Miller" <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>, Eric Dumazet <edumazet@google.com>,
 <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, David Decotigny <decot@google.com>, "Anjali
 Singhai" <anjali.singhai@intel.com>, Sridhar Samudrala
 <sridhar.samudrala@intel.com>, Brian Vazquez <brianvv@google.com>, Li Li
 <boolli@google.com>, <emil.s.tantilov@intel.com>, <stable@vger.kernel.org>
References: <20260611002437.1671401-1-digonzal@google.com>
 <b601d0d4-d472-450d-a966-e18c9642a433@intel.com>
 <CAH1CuA-zQveU_pzopVMnDM11Kbz8wTzMP=SvSDBEq8Tk3RaebQ@mail.gmail.com>
Content-Language: en-US
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <CAH1CuA-zQveU_pzopVMnDM11Kbz8wTzMP=SvSDBEq8Tk3RaebQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: DU7P189CA0024.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:10:552::11) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|PH0PR11MB4901:EE_
X-MS-Office365-Filtering-Correlation-Id: f19aa5e9-e435-41f0-5236-08dec86527b0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|7416014|1800799024|366016|23010399003|6133799003|22082099003|18002099003|4143699003|11063799006|56012099006;
X-Microsoft-Antispam-Message-Info: z2KA/T79bhg6DHwDYN4QeTy2n1zSSc0Ip6AVqrNt9Gu+ZoCPJUfyTO38k+3HonwN9uEURvxZL2cybNA7MMPke8ztI5VkHVEpfEc24fucfmupbrx8TXe6tvh5dneoN4LLorzP0Bg85fZi4W/Zp7Gs9Ew1SUTCoQb/pifJACLmAMor+q79X9PwTXZ9XJnb1h04hBbiXP2Hs940LrOuag4uKeALNiujZqqY3GIunjl0DCS85G/pLE5QdPZeF5mgE9wUxIMf9YeGCtir8fWEwreG/0mwBcCShlcfp7XhgxO6FuXja4AbFcq2iQBA8f8Y60GUza84+6s2+sR2bTfkqxJxkonGqwGTle6OkI1aUe1ZzAecKiWDRrBDw7qIe9wbs11rsB85q44pJ35/qCERu7qoNNv808bSMLOk53Zy18qM3sus0APEyO67cGGFVl7TODsJbpXjdkUzxj1FSCYv60Z1KFcpdwIWUyetY6uNDC9vu4naHzh+cfmtDJLj9OTpt41yXz3aiq5aFzgDSgXCsIE0YtxG9HuPzXqoqSI/K7p3qOSLSFt4W5CEwdxlON/VDnViyJEEJyM630MHIIR1ekBeH2zOo8P27EhfzHv1b4z4zF+CA8zjh62A5ShWdMC1BGYccfw7PzDo0CGTQ9v6L+2W051aFvlCGv4DTw4NtPThuf5kKUFkQChpYNYg0b2oMMFq
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(1800799024)(366016)(23010399003)(6133799003)(22082099003)(18002099003)(4143699003)(11063799006)(56012099006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MlpUUUQ0bzVRN2RhRGpFdDd4UkJlQnA3eDA2TXhKNEIweUVyRkdSRlpWZzBD?=
 =?utf-8?B?REtNODdFcndPTUEvUllxRmg3bE8rSm1GNVpsc3IvSDlrQm5tYm1kT0NZS2o4?=
 =?utf-8?B?RHluVWU0cG5QNlM5emRnTHZMRWlET1pUL2pxRW1RMERzK05kTE9TQTRoVk1t?=
 =?utf-8?B?VzYxVk5LOTQ5VEZHYmF3dndiK2tMTGJiOE1oVjB6VVhCaUVsSHpLUGxwdXFM?=
 =?utf-8?B?N3hsLy9hUDNJRG9JQVZONXdNTUZSVHgwUHBkZjloQVpHK0V3OWM4TGdCYjhM?=
 =?utf-8?B?NXJ5c202UjN1Sk9XS1ptOW9RMGllVW85V2VBSXJVQSt6aVdURVBNeC9UTUMz?=
 =?utf-8?B?SVF6L213WUIxcld1UXBIVDhEZTVQZmJVdXIvQVBQcTR5VEtCU2ZDQkZxZ1pN?=
 =?utf-8?B?NjJtbko1cGxuaUdyalVUMGdxVUptTkgvZS9teXZBeEVFN00xTE1PNk5neVUv?=
 =?utf-8?B?K09LWGI5dGFqdGVJRm9aUDI5S2pzUUI5Yi93WTlaNlVCVVR6WGhnNVBLRmNS?=
 =?utf-8?B?Rzg4YU5Qc1ByUjB3czk0VFp5d3dSeWhkRENpOXhYak1XTVNvclY0RWZicjFp?=
 =?utf-8?B?UmhLb2NCNS9HNC84QXFIRzNHTHFTbW1CZlBTT0lJL2hmRkJpOTc0SHExdHVz?=
 =?utf-8?B?b3JmTEwrRkRBRHdrZ2lYQ2hlWmJsZWl1RGM1YTMrQXNGQTR6VTMvMVFiT29U?=
 =?utf-8?B?b1pSREZuSzdMSFlpTHlzNlRseGdBRlMwRHFlZll3QTZqdjZLNVhQTjRGNWlV?=
 =?utf-8?B?cDJDVnZkRWU1aldLNVlVOXhFYWczWUdOUkVVcGk4STdiaXRHY3B0OU9QMEhq?=
 =?utf-8?B?MndXT3RTaVZYR1k3UUJwcjdEWnBqV2MrN3EyekszTnRZRmllOU93WS8zT0NH?=
 =?utf-8?B?WitjSmcxNk03Q0FiZFJSZk5rUHEwaUdKRW1WTDlXUHNUem9hY3J0NmNHTGhy?=
 =?utf-8?B?Q0hiUXFuRm5VOVUvd2puUHBXK2F1QkltYVFLSWVuN2p0V0tIYnhBelIya0V5?=
 =?utf-8?B?cWNkS1pWOTJBL0pTdHlrclhQcTVrZ3B3MzBjMHVsVjVYemNieFlQT0pLZENk?=
 =?utf-8?B?S1lDQ1h4UEhQM3ZiWmlrSHM0RlVuZnJKR011VjY4cCtHcnZhbEJPempXcWk1?=
 =?utf-8?B?S2VCRUhqWWorTk8xU01xOUtXODBpVHR6cFlJbURQNVBvelNucHNiUnlPSFgy?=
 =?utf-8?B?Y3QrcVp5YUFrUnMxY0g2WWtNOHBnT3lnTFk3Sm1YanVoNnZOeWpBS3FYYWdv?=
 =?utf-8?B?d0crNmU4STY0RlNoaGVJSWNqSmJCWGs4dTJDcGdTN1YwanlkcTRib1F2OWdQ?=
 =?utf-8?B?T1BjSFZPdG1iOHArTU0yd1dFYUpJUXQ4L2ZNdG14K0w0VTZjZGlOdlRiUDRO?=
 =?utf-8?B?a1AycTdZNHBXSWZGay9jOXJUNFVNMFdiWDI5a0VmOGJzdGlReWFLQ2Z2S29j?=
 =?utf-8?B?UkhUUkR4a1lZZVIreWx3VXJRYXltOEFMc2FrQ0tlSFNyeEdxVklzMERrVW5n?=
 =?utf-8?B?aFlXMEp5ZzkrdDk5TVMzSklZQWU0WW10TUs3cFZPZzdKaTJOd09XTnBFK3p0?=
 =?utf-8?B?K2dZeU03M3hDZ3dZdVlVYlN6c0JOSXAvZzErWFBGdllBOWhydTZERlpISmVI?=
 =?utf-8?B?dVFOTHZhOFgweUxBQnBDY3BkeUVQeEcvbFNvU2ozclhOZ0tjY3I3bTVhb1Vy?=
 =?utf-8?B?cnpyMFFqQ3I1SnRSb1RieDVEZ25HYkFnU1JGQTY3eFVoL2tSNk1CTFVhS1hr?=
 =?utf-8?B?RWhMRmVNNFRSNUtXVTZlNDIvSkJLdjRGblJGNDZZMG1sK09US3orUUsrcUZG?=
 =?utf-8?B?MmlyMi9oYUpxYjA3Y00zanQrS28zbjI2dHJBblZacWtIcmp5NjhPM0MvdmNQ?=
 =?utf-8?B?N2I2NlpRcHhDbk5Xc3pFQ3JKaUszdm5xQ3lWTmVLaHZIU3FZaVhKVEluTDVl?=
 =?utf-8?B?WnNmakV6T2NzeU5OTXpyVWJRNER5SVhaNE9paGg5cWV6UzE2SklLRXJGTFIy?=
 =?utf-8?B?eUxxL1A5b012VStlc0dOTW1mWk5qWC9telJmdXI3TkF4N3JtTFRGZjdiUDVC?=
 =?utf-8?B?aTVlY1F2V1NjOHFhYnY1WkxIM2o5dVBIRGlNejdCZktHNDgxQytqZEJNNHN3?=
 =?utf-8?B?NGJrVXg3Z01LakhSZFhHZDdKQ2Z2eGZEdVltRmZJYk5HMG9UVjZRZXpqUkla?=
 =?utf-8?B?VWw4MGd1dGVDNFZTSFdLSmZxVmJFWXh4Z0xUNS96b0Job295WGxRT1ZWNTRO?=
 =?utf-8?B?VmJpcnNyVzQvSHlQM1JycSs0amlTUVRyUG1uUkNacDd1NTcvNXRva2haQ3pu?=
 =?utf-8?B?STRIeFY3bU5TbjFaMGxNaDhXRTl3Zkd2M2d6WVZTSjJZWno0SDNmRDBFSlJX?=
 =?utf-8?Q?O4vHMzNtqKS/kmt0=3D?=
X-Exchange-RoutingPolicyChecked: CzXe2GNwR/ZbwAkIw2iHeNtvD7WDf1eY8Z235zMqCyU2OaIKwBcwvImZVJ+ZwEFNczQJ6bBr8w5DM3Y/u5XE7PfkidSJc+1JKiVaz4uyvdPR4ZucV3qdO4FxJYWORhJs3ufz5tHvxkEgbjfMimHB2DOgtH2ndNfgYhCsD9bua+5JWfOh7Y1g60jmcikgNUG0qbftjLH+C2d3VYbm/v9+ersQa349NHnCHfohVXrd2UnDICLk92dk7NQhI9gkHUVr6vFQnamPMl4AzOAexlQ2USJL0BVxgJ5B6KbOKuZbDeRbGldZ4ZWtoxttug5i07opkeh2LC0WpP9FDkg7lyoXJA==
X-MS-Exchange-CrossTenant-Network-Message-Id: f19aa5e9-e435-41f0-5236-08dec86527b0
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jun 2026 09:29:51.8873 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: U+st1D7kSeL+KwOTd35+ATT5axcKKzLILEABq+jT/nFweFZp2eBSGyGSytoDmwMbyxGAs7SCz4pt4YEZQ6Rz+6wcPtyQ5CumRSE2kbryu4U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4901
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781256597; x=1812792597;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=v8cNtT7ibESaMykhtYOduaMM1fZhipZ3jlgoyY88SO0=;
 b=Vu4RTfYTo73igawkJJfT0dd2ooPP7V/cZdK+i96ICB3Tpu5wMcD/l6Fm
 7H7rC8HC3rXTp1P0VS1cN2GNka58aPzdR0V0M8ntIeDgs7i8mZf+9McBx
 Q76v9vkHGNREWd2iPkWqGMCO2YWoQiMT/kyDze1kV7vbwjROtXiU/c3+U
 /u2HQc/bMerYqhJxjt1t247uP4tjl96oXtPpxdpqJNkmEBkbqqKKy6Ab7
 44vur22zD3njxx+CX95plt6Ws7Xf89cyvPeqvLelf3dllDLaY3r91ijcw
 /CDjCV/z06lIJQbxdDADY8aoo3JdMCWCbJw/MVoOdc+ym3yWiJNku6EWw
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Vu4RTfYT
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] idpf: decrease statistics
 refresh interval
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.29 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[16];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:digonzal@google.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:davem@davemloft.net,m:kuba@kernel.org,m:edumazet@google.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:decot@google.com,m:anjali.singhai@intel.com,m:sridhar.samudrala@intel.com,m:brianvv@google.com,m:boolli@google.com,m:emil.s.tantilov@intel.com,m:stable@vger.kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[aleksander.lobakin@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksander.lobakin@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:from_mime,osuosl.org:dkim,osuosl.org:from_smtp,smtp1.osuosl.org:rdns,smtp1.osuosl.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1E1E46784A7

From: Danny Gonzalez <digonzal@google.com>
Date: Thu, 11 Jun 2026 11:26:18 -0700

> On Thu, Jun 11, 2026 at 8:57 AM Alexander Lobakin
> <aleksander.lobakin@intel.com> wrote:
>>
>> From: Danny Gonzalez <digonzal@google.com>
>> Date: Thu, 11 Jun 2026 00:24:37 +0000
>>
>>> The default 10s statistics refresh interval is too slow for real-time
>>> monitoring and causes network selftests (e.g., uso.py) to fail when
>>> verifying traffic immediately after transmission.
>>>
>>> A 10s delay also causes aliasing in telemetry tools polling at shorter
>>> intervals (e.g., 5s), leading to inaccurate rate calculations on
>>> high-throughput NICs.
>>>
>>> Decrease the refresh interval to 250ms to ensure fresh stats and fix
>>> test failures.
>>
>> Have you tried a bit more conservate value like 1s? Wouldn't it be
>> enough for tests to pass?
>>
>> 250 ms is also okay, just curious.
> 
> Yes, 1s also allows the tests to pass.
> 
> We have a preference for 250 ms since High-Freq Telemetry (1s poll)
> 1s driver refresh rate causes aliasing:
> 
> # sar -n DEV 1 | grep eth1
> 10:52:15         eth1    390.00    339.00     51.92     55.54
> 0.00      0.00      0.00      0.00
> 10:52:16         eth1    409.00    360.00     54.72     58.64
> 0.00      0.00      0.00      0.00
> 10:52:17         eth1      0.00      0.00      0.00      0.00
> 0.00      0.00      0.00      0.00

Ack!

Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com>

> 
> Thanks,
> Danny

Thanks,
Olek
