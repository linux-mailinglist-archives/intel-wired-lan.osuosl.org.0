Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UHoIGc9mGWrZwAgAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 May 2026 12:13:35 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A4A556008B6
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 May 2026 12:13:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CEC5A843A6;
	Fri, 29 May 2026 10:13:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8gpBdjtqzsSs; Fri, 29 May 2026 10:13:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3F6A6843A7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1780049611;
	bh=9GUVsnHeJ5K++arNhFA411WuKaGKWKGBVhzjn8GkKDk=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=5g389gDrzlMBY2GZwEAPnQ6TOm0ng+kiZSvjKZVLTWySCwkx+urDgRTbgwzppa3Ul
	 cpSsJt1l8zcVO+OCpTHTD9QEk8BJZ1E44JnBlAiWvCKQWFmeqDBDjm4kl84fGy2gtb
	 gTpwoGc+WfCeBwtRtzhbhA1969PCcuuX48iVcy8BeV1aLZobnjI4nCz/XsGMx+oJyZ
	 RP7vrhmD/vWAOecZ0/BSFv2ca8zpgfaRCThZz5kx0nfZamNrqebwdeUBUoCm29u74x
	 Fkv8R2HWKcGp+243E3rt+MfBHY6EVnNOeIp6g/6nGUCZG85/Sm+HUfegf6RjVYA9S0
	 Y22Q7QH2APQFA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3F6A6843A7;
	Fri, 29 May 2026 10:13:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id CACDDF4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 May 2026 10:13:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AB1D6843A5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 May 2026 10:13:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id if8No90LTIcO for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 May 2026 10:13:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org EBCF3843A4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EBCF3843A4
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EBCF3843A4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 May 2026 10:13:28 +0000 (UTC)
X-CSE-ConnectionGUID: J/DbvoTIRR+2tHM5KLc8WA==
X-CSE-MsgGUID: N1JdgmAlTySE8Y/40fndkg==
X-IronPort-AV: E=McAfee;i="6800,10657,11800"; a="91472944"
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="91472944"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 03:13:28 -0700
X-CSE-ConnectionGUID: kWcIElnyQ+273Lp+YgLlXg==
X-CSE-MsgGUID: fxK2mFt1T86oNB0uIMj96g==
X-ExtLoop1: 1
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 03:13:28 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 29 May 2026 03:13:28 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 29 May 2026 03:13:28 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.69)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 29 May 2026 03:13:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=o5Cy9GgW+68XHcifLpIIkL9cqwKbsjXDctDUA4Kgffc6NsiNMkHUiFIWpmin8wyqzwASOMS4pLpYDpToWrgabQw5tB9XkOpxkLcuhA7vBpGNmcgTkMm5rTetD92AjmfK1q+pKk+vw86qFccv5ibgUXjZ3g8qUGCOqHmusxNgCcb0f+f04BaWajUA1Ephyt0RX1jU3S9vZnCHFl7qDsGMrO42aI6RpUbtntWxPsJFRSgQLmeUcoFupRmfejJ+uGdvzghTdK/fY+jNTAeWCgR+nPMvLZNe7bzimMWB6LhzWg68Jf2EXJr3hM1OKInFwVW+GxdiFqZNiyN9N+r+MtAKqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9GUVsnHeJ5K++arNhFA411WuKaGKWKGBVhzjn8GkKDk=;
 b=QgzBNi6YBW6+wYrdyBaDitQqx31bB9w0L5LM5k7FQruhKvviVzLJcxnwvdCVMmCjRzSAFOt4cI1g/IXBl+Y8sJZpCAg1c2Zvr6ihMP1prOypjWfpjS5h+tXkyuZsdVNlAizSBlWA3NVUdMINpKXW1xQwW6/y962FT2TBm6IhSes2wgTjlqCHcoutrDKCeuBBLoZPOBZS2BfGEyZsinEFJ+GMFEfxGOyCYLyqQ7Ck7FvwmNv/nY8Kna3AaDINeHecPVcIuxeJGTTtsKcBj17I1iiSZ0O4BT4vim7AKI11czQe0Tf7Tfun7e/GL2pCgsBgLykaIZI/KB4EF0IOCd2g0Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by MW3PR11MB4652.namprd11.prod.outlook.com (2603:10b6:303:5a::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.15; Fri, 29 May
 2026 10:13:23 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%6]) with mapi id 15.21.0071.014; Fri, 29 May 2026
 10:13:22 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: ZhaoJinming <zhaojinming@uniontech.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David S
 . Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v2 2/2] ice: dpll: fix memory leak
 in ice_dpll_init_info error paths
Thread-Index: AQHc7y2AmMEKZwbpQUay/IVHQ4uZkrYkyScg
Date: Fri, 29 May 2026 10:13:22 +0000
Message-ID: <IA3PR11MB8986C30A496A498C2321DA7AE5162@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260528171202.2659491-3-horms@kernel.org>
 <20260529053733.764996-1-zhaojinming@uniontech.com>
 <20260529053733.764996-3-zhaojinming@uniontech.com>
In-Reply-To: <20260529053733.764996-3-zhaojinming@uniontech.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|MW3PR11MB4652:EE_
x-ms-office365-filtering-correlation-id: b45b27b0-ccaf-48f9-1089-08debd6aea3c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|18002099003|22082099003|38070700021|921020|56012099006|4143699003|5023799004|11063799006|3023799007;
x-microsoft-antispam-message-info: oRYa7hw/6YgHDhr1tg4dez75aaZ5MWZ/zff50V/XnHJn63kqwOu6hPyGb+G7CiymC30MrWh1uhUW8ZAnbJspNZNA/1oEQnvRlq0eV/PQvgud9+iB6X3dwjG4tr6KikpKle2XtAMsyq5WYEhbKOE0iNYXdoUWGW3i0h/iQMXGwQt4r4bPZSRePvjEjh7TmSXO8+xSwhffvFIqhMC4awMI4IHY1YTvNSKweBujw9b9Rt1poyDl3t9D/lmFblK1NiKI0pGJJ82mAyr9bY9AUmEkRshYIzXNabZgoGWhrCXe8Q4iH+0MFRV9U/0iho5wfjXbv/bhkI+iROYSGR12PUVSn+oSsjeuFK/LqKmz/BuyuZNxkoHPpyQD9//cz/shgBVe/DZiG+fNZw8RFH69mMtPGne3oTJhYYfPZgR+R2rrhOwOtnaBqQ6JlZvs4YtfpGoP6q+QFf7TxCqg7gkdm8KnQqR9kOLV8wk4hEyTWragwCfkLgWCMxjQanr9wxkdP0Xk3MS9yZe9GfLALF4PtNEcO8LhCBXQvmdOaWE3uwnXWnM3/ewkFJxXflkoYOgjkPmYVDSCVam2MvU1GNRhUewgxUaqH1jWjlv+2fmC5C+3u6P5YyJCRQtKS8SQ53ets6uCZCrevUOAYncLFcvqxlErxVuC3zyo0ls4AF1yoSBz+jnvSdvixcYlpFVZXkNThVgWFVxg4EzuF7/v5m+SVsaaGfeIpBAxrMlCZMRHYkiI3nBubIWv0lXdXa7qh1vrqTDM3jvW9+nuibPsdWAaI5UEAg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:ja; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(18002099003)(22082099003)(38070700021)(921020)(56012099006)(4143699003)(5023799004)(11063799006)(3023799007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-2022-jp?B?YVJGbnY0eUJVbmdJNkIrVEFXSDBtVEp2Tkg3eFpubUxKVG02MmZaM2Ix?=
 =?iso-2022-jp?B?UXptRlRmRDdTSHE5Y2Jzc1k5ZTdlTktpSzFzNTJudHhnOWpUaGh5N1RB?=
 =?iso-2022-jp?B?bHZhaVdwS1hBek1Ed2hIeGVzUzlmSEdmNG85SDdPZTdmYnpDY1o4d2pq?=
 =?iso-2022-jp?B?S09VbkRKa2gxVW9JdVRJVlNwcFltemdVUlNWaHNkWFZnbVhiREtDN2Jo?=
 =?iso-2022-jp?B?TUpWZGNKTm5kU0RFT3FIdW5lUE16c0xaanBTYXVFUngrMmpzWUY1S0Rz?=
 =?iso-2022-jp?B?b0ZTL0hOV01MUlB0eG0wYVNjaFNNb2dUTzJqUFp3M1VvNEpLSnlGVW9E?=
 =?iso-2022-jp?B?SkUvTkFiZmdCNGxkcE5GZjNrY2EwU1FvRjVvNXFsZXhkQjRwYTZYN1Na?=
 =?iso-2022-jp?B?aVNvUEJ5SXJmcjRPUU1VQkVQaXZKQkxyTko0QndyTTJzaHBySHA2S3Jl?=
 =?iso-2022-jp?B?M1dmU2hWN0Exc0pRK25NcUZzZW5vY1JNdmw4MXNzRlBFQy82RWNMZEpM?=
 =?iso-2022-jp?B?dURtRVZvdXdoeGRPV3RQcXZjb1BCVjUyT2xvb1BheDZHK0pMeTdjeUR2?=
 =?iso-2022-jp?B?T24xV1pLV2JrTWx5SjFUbGx0RThvOVVpYzk2ZU9KSktWeXM1SlpPOUpL?=
 =?iso-2022-jp?B?T2s0aGYweU1Da0JwZ1Z6UHRWdm5OUUM0YWMxdjlVWGpMRTRQZGJmVUxM?=
 =?iso-2022-jp?B?Q25vT2NBYzBxb1llRkFCejcrb3JJcGdRYzEwZWN0dXUrTU8xT290Wito?=
 =?iso-2022-jp?B?VFdvczdnQUhuYlZ2SHllWjRBVDhYOTRsaVhxNzFXRStCMGdUNU56cnFx?=
 =?iso-2022-jp?B?SzBKSmt2cndZWFM3WGY5VjJnMWpQRzJaMzgza3hjdzFjZ0JFOFI3Z1Vs?=
 =?iso-2022-jp?B?bzhqMGRNUE5RVy84UEVUUnJKRkkraENtUVNzV25LaUZuUHNtWll0ektN?=
 =?iso-2022-jp?B?Zmx3MHlodzRsSzlPTWMzK3o0TWlPOExWOSthWC9zbGt0UnlrSzUwRGhv?=
 =?iso-2022-jp?B?UTR1eGtwQitVZWJpYnRNL3JCaU42dHJRUEtsakJod1dvNG5HMjFhUVFp?=
 =?iso-2022-jp?B?U21xK1RXSERNbzFGb0RjblVaZWxlcFBWbkhHYm9ZTnZHcjRtVmNHZkhK?=
 =?iso-2022-jp?B?Wld2SG9NSU5pNlBlUUI1UzNxR1dSTXpFUGE5NkY0UDhuNS9tWkluWjd3?=
 =?iso-2022-jp?B?eks4SFdaQmtZT2JmdmZ0eTFxN1UyNHNlMEM5ZzdIYWxEVFVoSGExd3hn?=
 =?iso-2022-jp?B?WGNLQW1DY1VDNnl6TkxtRjBXWjVLdFBFNE4vSE0xMHRyOW1FdGZzN01r?=
 =?iso-2022-jp?B?TWQ5aVdMUWpsVWtZQjQ3TUpoQi9ITGZ2QlVMV2RGU0NoRUQ1Z0x4VFh0?=
 =?iso-2022-jp?B?clcwaTVCbCswa2tpUms4cHpmUVV6bzVSRGhQNUpzQXYzQU9UeFIvamVD?=
 =?iso-2022-jp?B?YVVmMlhFZndaeEVKbzVLMEw1d2hpMk1lemx6dnUzV0I4UmQ5WmgyTE1X?=
 =?iso-2022-jp?B?L05WM0k5Q2lsbkhMRzMxSkdXSzFjbTM4Nmpwc3BPYmxRRFhMbDJBMFFo?=
 =?iso-2022-jp?B?cWFqUFQ3RGN3VTJJOFhPUFYyMUU1Y0VvOGxqTGFEN3c1dG4zOXhNQzRW?=
 =?iso-2022-jp?B?clN2c2hmQzU5eDdyRTMxS1F2VDliTDlFVWphT1F6a1JxSzAvdzlha0tI?=
 =?iso-2022-jp?B?ZEJnd2ZCdlp1elNucGxqdjFrOTcwYTZDd2tGVS9CRXhjTG9uSUtDazlF?=
 =?iso-2022-jp?B?TnV3NXJXS0tYdWpXdmxkeGFFdHovRGFRcmkzSFhEWFZlbDRIQS9ML2hI?=
 =?iso-2022-jp?B?UTlmOEx3MnF0WEJDTlhMbGVBd3ovTjkrVTNxaDFPR25UNXJueEUzM2Rj?=
 =?iso-2022-jp?B?dGZ3d21EWXZLc2M3elJMUmY4VHpUL2luQWI4OHpDeURZcW84MzZxdjh1?=
 =?iso-2022-jp?B?bDFWcnN3ejQ1bVJ1SE84b2tHR2VYUm8vNU9BZlZQNXZnTlVSeTNiM3VH?=
 =?iso-2022-jp?B?TWU2cmROQi9OWGIrWElRcjFqTktLVmR0VElrL3NabnNVajR3S3JvMDR4?=
 =?iso-2022-jp?B?Y1V6azE3V0FpdXp2dERHQUpGQTcyNXJvOU9QS0M4MVZvVWhUNGRyQ1k5?=
 =?iso-2022-jp?B?RDNYcWUxWVNTeDRGczdlSGZZNCtTM0RFMkV3THlzNStYWUcrT2MyWFdJ?=
 =?iso-2022-jp?B?RlBrTjNGOFg4SEhvOFdFTVhqREwrOVlqa3IvZENmcTUzeUEyYmFESlJv?=
 =?iso-2022-jp?B?SXJuZ29MSTVoYzBpNlltd28xZDJEWHJ3OUZxczlyenB5dmRZdVdoQm9h?=
 =?iso-2022-jp?B?c1BtVGVXVndGbGoxUmUwVXA4QzdJaHF0MkRwbW5tcXZoRGFiUzVLM3Vs?=
 =?iso-2022-jp?B?dWFObTkyMWtyRTVlWmFpMndtdVRmaTJhVWZNZ1BWVWZhbTZ4THlEYmJz?=
 =?iso-2022-jp?B?YVVWNTdpa3AwUG44U0g3L25rWXE0NDFaSkw4WWx6SklTeWRDWnY0aXpx?=
 =?iso-2022-jp?B?eGtmeHdoZkxWb3lCYUtrV2Z5Z004R1Yrd2lpT1BoYWdVODh3WDVxRnI2?=
 =?iso-2022-jp?B?ZjBTdkVacz0=?=
Content-Type: text/plain; charset="iso-2022-jp"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: c4rIj34BgsH7dYj0YaCRKu/ebOYNIHChVMzKaoSSL4mFZDIQuKMEin2WJT3ZSgWPUWh8EOgrND7uvYsXKz92a3lKvaY3ioG03/prQqbeoPIjBgbR5bwtFeVcPq+X4KiO01TQXVf9i1cSB3xWg94ycqu3epHfuKcA0DXwPVHGr5AuRnW/QfLj4ROtLnUvOo27AIeEptMGN2kDA58AXcHzecNCjhTwaJoNxJfFcpqoElvpeE+PgJyqgb6UDRuklyILruHiDnvFKRyFLwnwqcCsI/OxAhowEHyHvG1olSbQ8pBJlaktkaWuDjZNCFzsJy1KxffUr8NvuIiAaor9PqdxRA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b45b27b0-ccaf-48f9-1089-08debd6aea3c
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 May 2026 10:13:22.7061 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Ev0/WF/NOjfAJxsqjN25QNQGmyzZ1czC2SiDy3eDo/dqpSWQoLGCWvZLXNVfxQtG67ReRftLpRQkr2zDc0eBnaCGkItvbDF1kjc/wMQWTVo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4652
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780049609; x=1811585609;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=38RT+jl4Vi2w1NruZP1KpBcJPTKJ/XW8Rj2JE16A6K4=;
 b=Kpz/RWflKAIPlrKK/lk/ap57ChOatIsV2xYJImnsR18+KMeNAfGPfAJ/
 nnbL0isOwjwu7Om/w8MresXGM8QlJf1k/MFm6jq6cLtTJQNilxFsavaPj
 ELzgUmIOS78/ZumiStP53GrFsX4BnjNPGGKMjpGabbFdYcRr28sA4b0a/
 9UgH/58TjnCh9wx3I93FpPJvByTwonoPF+8TOwj2WD4IpZGQ/JDxYUjhM
 Lqz1qEpbOYV7RISPM/+DulFoHa9HUd6RR1ScVfWxRgQV9oLQopstMJAhx
 2YJxqDBuCywunuIk6E3F3cxWH0RkkJlRUbqJRUdzaKoK6ET1KjG3UYgeV
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Kpz/RWfl
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2 2/2] ice: dpll: fix memory leak
 in ice_dpll_init_info error paths
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
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:zhaojinming@uniontech.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,lunn.ch:email,smtp1.osuosl.org:rdns,smtp1.osuosl.org:helo]
X-Rspamd-Queue-Id: A4A556008B6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of ZhaoJinming
> Sent: Friday, May 29, 2026 7:38 AM
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; Andrew Lunn
> <andrew+netdev@lunn.ch>; David S . Miller <davem@davemloft.net>; Eric
> Dumazet <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo
> Abeni <pabeni@redhat.com>
> Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; linux-
> kernel@vger.kernel.org; ZhaoJinming <zhaojinming@uniontech.com>
> Subject: [Intel-wired-lan] [PATCH net v2 2/2] ice: dpll: fix memory
> leak in ice_dpll_init_info error paths
>=20
> Several error return paths in ice_dpll_init_info() directly return
> without freeing previously allocated resources, causing memory leaks:
>=20
> - When de->input_prio allocation fails, d->inputs is leaked
> - When dp->input_prio allocation fails, d->inputs and de->input_prio
>   are leaked
> - When ice_get_cgu_rclk_pin_info() fails, all previously allocated
>   inputs/outputs/input_prio are leaked
> - When ice_dpll_init_pins_info(RCLK_INPUT) fails, same resources
>   are leaked
>=20
> Fix this by jumping to the deinit_info label which properly calls
> ice_dpll_deinit_info() to free all allocated resources.
>=20
> Fixes: d7999f5ea64b ("ice: implement dpll interface to control cgu")
> Signed-off-by: ZhaoJinming <zhaojinming@uniontech.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_dpll.c | 16 ++++++++++------
>  1 file changed, 10 insertions(+), 6 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.c
> b/drivers/net/ethernet/intel/ice/ice_dpll.c
> index 99bb308255cc..7240152f1655 100644
> --- a/drivers/net/ethernet/intel/ice/ice_dpll.c
> +++ b/drivers/net/ethernet/intel/ice/ice_dpll.c
> @@ -4345,12 +4345,16 @@ static int ice_dpll_init_info(struct ice_pf
> *pf, bool cgu)
>=20
>  	alloc_size =3D sizeof(*de->input_prio) * d->num_inputs;
>  	de->input_prio =3D kzalloc(alloc_size, GFP_KERNEL);
> -	if (!de->input_prio)
> -		return -ENOMEM;
> +	if (!de->input_prio) {
> +		ret =3D -ENOMEM;
> +		goto deinit_info;
> +	}
>=20
>  	dp->input_prio =3D kzalloc(alloc_size, GFP_KERNEL);
> -	if (!dp->input_prio)
> -		return -ENOMEM;
> +	if (!dp->input_prio) {
> +		ret =3D -ENOMEM;
> +		goto deinit_info;
> +	}
>=20
>  	ret =3D ice_dpll_init_pins_info(pf, ICE_DPLL_PIN_TYPE_INPUT);
>  	if (ret)
> @@ -4375,12 +4379,12 @@ static int ice_dpll_init_info(struct ice_pf
> *pf, bool cgu)
>  	ret =3D ice_get_cgu_rclk_pin_info(&pf->hw, &d->base_rclk_idx,
>  					&pf->dplls.rclk.num_parents);
>  	if (ret)
> -		return ret;
> +		goto deinit_info;
>  	for (i =3D 0; i < pf->dplls.rclk.num_parents; i++)
>  		pf->dplls.rclk.parent_idx[i] =3D d->base_rclk_idx + i;
>  	ret =3D ice_dpll_init_pins_info(pf,
> ICE_DPLL_PIN_TYPE_RCLK_INPUT);
>  	if (ret)
> -		return ret;
> +		goto deinit_info;
>  	de->mode =3D DPLL_MODE_AUTOMATIC;
>  	dp->mode =3D DPLL_MODE_AUTOMATIC;
>=20
> --
> 2.20.1


Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

Code looks correct. Please add `Cc: stable@vger.kernel.org # v6.7+` to both=
 patches and include a v1=1B$B"*=1B(Bv2 changelog before reposting as v3.
