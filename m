Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6573AAE19C6
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Jun 2025 13:15:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C19FA60F22;
	Fri, 20 Jun 2025 11:15:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4NZUrQql27gt; Fri, 20 Jun 2025 11:15:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EE68560F26
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750418109;
	bh=9YINdsqGziFg5Sfd0J0xana0ep3bOK0Lqmo75Vi2Ql8=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=mYwfr9r9cGqdK167cHX9hDcXedvgCtdQsFn3/IF2ay0J8DgzJuYCEGNcOS7Fk8/sP
	 Z8p5C1Tz9CtB5wfNRq3kHN49a2rIV7UaLa/yH40Ld3SvagwHSkyPBUml8WcsA3A8IE
	 cmsH14T8a1XezzuF8ghoTqw1abErJgJUV5XSEBpfhVepfN6up7SfjRGvdm5O+DMYrt
	 swMVF77TBZnWtcaZhofpegGlTVRohH4Ep0Tx7GbMlCCnh4FjiKAIpfUjGEyfrmL7No
	 1A9NkSeSbWaSuWzuj2ffNbv6tOocmtR+5r76IrD0bSPkRcPF5cjArXc5bhvbbaV4FL
	 z2d+yE4/Z/U6A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id EE68560F26;
	Fri, 20 Jun 2025 11:15:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id F35CD154
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Jun 2025 11:15:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E2BED404D9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Jun 2025 11:15:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nKEeyfFmb7lI for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Jun 2025 11:15:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org CAEFB4043C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CAEFB4043C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CAEFB4043C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Jun 2025 11:15:04 +0000 (UTC)
X-CSE-ConnectionGUID: y7db2w2yTGC6fHHtEIDMxA==
X-CSE-MsgGUID: 7EFeosVRRJiEyDqLhjYOaA==
X-IronPort-AV: E=McAfee;i="6800,10657,11469"; a="64032667"
X-IronPort-AV: E=Sophos;i="6.16,251,1744095600"; d="scan'208";a="64032667"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2025 04:15:03 -0700
X-CSE-ConnectionGUID: XfnAHJEtQHCmQeAGNtvlFA==
X-CSE-MsgGUID: T+TnzzQ1QnOQVlp3BhVS1w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,251,1744095600"; d="scan'208";a="151443105"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2025 04:15:04 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Fri, 20 Jun 2025 04:15:03 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Fri, 20 Jun 2025 04:15:03 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (40.107.93.79) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Fri, 20 Jun 2025 04:15:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WKoBCK3raFJP+R+NG9ZeCIQiX3AS9Oxs8Ntoq4ZbEtqVwGpoV9VAXj6ukbj4/uJ/l8e7pU03QFCHVGKGRVN97CP56qIgOIuMQI3229Q8qg8DA+8u3iFK8w1bQClAOXol0JfLNsI5oxitrlYAqfj8N2DivVJFp0o0vg2szR0qJgDKs7jl/6RdMLBIrZU945MoK84m029B6TldAVCRRnY6rbTFVbOh3BQec7vRny1oGvULPQewvwBKPETUzk8P8pSOMVKQDKnOYebH37BAyvYgljVxS177v5lDSY7ny/iufCQ8mcAvn7mSGse+EUvmBLBR9y/Bon6G3qA5s/u4uMvcOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9YINdsqGziFg5Sfd0J0xana0ep3bOK0Lqmo75Vi2Ql8=;
 b=KKT+9zCkYCDE+FxfQ6rZ8IJ4rjqoaCK8WP6+JGGc+hGd7GPAFFQ2day12AxN/m7s3oMda2tLk9C30ebEOXtZZC+t8BfOTzVo9ATKe9GcMz4LVXLrOEvVWI52/lFYIhGWxP5XgzX7GAEEvUxhruXkXrVtdOmanCdU5leFnNqeeRkhRQGMefV5zQcg2kgz6g9DbDK2tphgARcyD2cPSNph6c6y/kKOvmZnbeyyj+HyYM7JVMZjl9/YbnEPMCBL+bpFFyw54UX4e/YryqrJjPLJnOzxYNLztZEfaHJ5uhA81kNg7AqGsjavWbRMGH4uZoc1Wj7BHfV9MOuNf4rxooSSUg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SA1PR11MB6845.namprd11.prod.outlook.com (2603:10b6:806:29f::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8857.23; Fri, 20 Jun
 2025 11:14:47 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%7]) with mapi id 15.20.8769.022; Fri, 20 Jun 2025
 11:14:47 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Arnd Bergmann <arnd@kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
CC: Arnd Bergmann <arnd@arndb.de>, Simon Horman <horms@kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Thread-Topic: [PATCH] ethernet: intel: fix building with large NR_CPUS
Thread-Index: AQHb4dQnTA09W37PlUC5S62KRsDEP7QL5UGg
Date: Fri, 20 Jun 2025 11:14:47 +0000
Message-ID: <IA3PR11MB89860269FDC8800AB6B30ECCE57CA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20250620111141.3365031-1-arnd@kernel.org>
In-Reply-To: <20250620111141.3365031-1-arnd@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SA1PR11MB6845:EE_
x-ms-office365-filtering-correlation-id: d523fb85-4172-44a7-af44-08ddafebaada
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|7416014|366016|921020|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?SnhtZTZhR2xRcm1ENW1zdllSaUl2Nlc5RldrMDcyVVgvU3ExdWtNc1BVMUtR?=
 =?utf-8?B?L2dWaVZtd0FuYmxvZVlFZHVBcmwwaGVXcnhodngxSlR2WlhEc05meURJcVZU?=
 =?utf-8?B?YkJsVkxQbzZOaTdKVGJqR0o2KzVrbjErZXVtZ3VtK0JrT3Q3ckR5WjEzVzRH?=
 =?utf-8?B?L2hpTk5leFVSY1pqdXllYVN5TkN6WnptZmpvQTJ0RVdYMEwzRWdCUlVLTHlP?=
 =?utf-8?B?L0dkWlcwK2wvcHlJQlU0emgva3ZPSmhqUWh5VTFXSlJsYUFQSTUxTkRFdmht?=
 =?utf-8?B?S0pmenYwd2w3ZUNiSkE1QlZ5ZDRabjJMOUdwSUJKMjZINGZvMkVMck9iM1R3?=
 =?utf-8?B?WkFNb0N6UGZaTGNnUm5laFZrbTh2Z3VQWEo2aWtHLytIV3lYMzZFV3ByNFZi?=
 =?utf-8?B?K1RZcmNVc3JvUHB1YktQWi9KbDNRNUdnSWx0RGlyOWRxdFB2dHdJTXpvSTdI?=
 =?utf-8?B?cTlPcWhyVm1GTm83OVdZdlB3T3YzVmxCWUtmWS80cmtCUjlGRXRZdzZiejZC?=
 =?utf-8?B?N2I2RTZXUit5SjZTRk5GNzQ5RmRzYjNqUkUvaUFsVXZLYTR3aEh1U2lac0h3?=
 =?utf-8?B?M29jbVoyalVMRjZDd2pKM1JFMUFMVnh3clBwdnJ5cTRrZS9venlKUXRhb0sx?=
 =?utf-8?B?dmlsNStOT3VDMFhlbXlkdXhwQmhoZTVUazRvM2JSK1RsUEk4ekNYU3R2cDZY?=
 =?utf-8?B?b241endITWJRU1B2SWsxTGo0cHRVdWF5UFBUVGtNZVpjQkZ3MzdFa25FNGpP?=
 =?utf-8?B?dEt0L2paa0lPWW10T1grUDB2S0dIWlpaQzVLMnMrSzNrc3JEZHU3dkNFSWRs?=
 =?utf-8?B?bEpGQlo4ZUFNR1A0UHUxZnUvMVFiWlg1RngzaUJ0ejF6azJ0U1pTbGdYY25w?=
 =?utf-8?B?NldmTTFRSU1NN0JzVllXcnNEdVh6SEhQcEUyVmlnMm9mS2NaVUZFcHNFbDBZ?=
 =?utf-8?B?ZkJTWEJ0QXl5Z2dwQkR5d3krWlB0VGphZ2RvTC9JbjR2TUo5UVluTk41YTAw?=
 =?utf-8?B?K1ozR05XSXEzZ1dMSUk2VXpyZThHYk9xR0Q5V0J3OHArckdYRWk0cHhNV0JJ?=
 =?utf-8?B?NklRUjNFam80ak5mWGhLWFlFQnUwdEZXU21TSzhQeDIzVVcyc3B2azREaG8z?=
 =?utf-8?B?UWExa1ZGWVdWS3RHbVVwY1JxaEttWHp1MmF3dWFwTHlUTHF4QjdScUFBZmhO?=
 =?utf-8?B?M3JRekdlOVlERElCQzh1VDJNOXd2djh3VXlsaHovNGhMMXRCUytQVFl6bTVJ?=
 =?utf-8?B?Z0YwV2VrRmhpcnl2M2JpalVKUHlwVmU5c3U0L0xSN2dmVnlwSmg5azR2Y2E4?=
 =?utf-8?B?NTNiT2QrY1EwQVVsaktYWSsvckRKenBBS1RzbVNyRUZRbGFwTkVNaDJ6MTl6?=
 =?utf-8?B?aFk4MVhsaTBzdGdGUEwrd2h0OUJWRXlWZ1NpbDZGazZBcXQyaTlFUWpxcmRG?=
 =?utf-8?B?dUxrRmhmTlVCMnZxTnpNZFRyY1djRjNFaHRNMDRlcDFUdFp6TUE1T2h0T0ZJ?=
 =?utf-8?B?THR2QlNmVExINUcrb0pJY0ppd0pOSHptU0x6MHVyS2xnMDk1SXFiZWNGK29t?=
 =?utf-8?B?WUpJYmZDd2poaS9vSmhFSnNrelQ2a3lPZFNaeU9mRUtKRlorOU9UeUc3SzRI?=
 =?utf-8?B?dnBHKzNYTXZTQVdXTUg1dDFyMDAzeHRXT1ZQbWpKWDBEblovK2RIdjdKeWN3?=
 =?utf-8?B?bG5EWEZ0eS95bVc0S0pRbVI3TGxRV2l6WmpXUlJUaEZGSDVPNW1DNlNPYnVD?=
 =?utf-8?B?Rnp2Z2dqSDNxSUE4R0Q2RGQzYmFuVFNKN242ZUpLd0tqcU9mNHF2TlFySFYr?=
 =?utf-8?B?ZmhQQmQzYkl5RmdBUzhEWGhVeEFRNFlPTFFxMVdETmxreU5jR3ZObE02ZlZw?=
 =?utf-8?B?VS9qN1ZsSlk5ak9EbGR1VGxlN3plTk5PUlB4QVI0bnU2RldIN0Y3WWNyamlP?=
 =?utf-8?B?cG1yN1JRZko5Z0tFVjFsU3Q4LzFCdEJuREVSWFZDU3MyZ1B1MEpLV3ppb1Mx?=
 =?utf-8?Q?C4VAYzV3J6FbmBp1NbJ3HGr0soFcCE=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(7416014)(366016)(921020)(38070700018);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MUVCZzdkcitQOXpzSCtrcmNrZjRyWHh2aUkzb0hNT2Z2WnFaVzNRSkI5TTFZ?=
 =?utf-8?B?SU9IUU5mc01PN3VZVnFhS1ZZTTQ1QVR1SE8ya3BSMVZNUVRVWGhGSEREa1JD?=
 =?utf-8?B?WUhKNlI0OS9xc2lxRi9HRkRLOFZsOVZtZG9sMXpzM2JzWkRRTUZsWTRWUFcw?=
 =?utf-8?B?SXlNT0Y5UmhrNDhPazQ3R2lwM0orTzlHZnVyeXVHSFVqZC9JNW5CWEgvRDBL?=
 =?utf-8?B?LzZJWWt6QW0vbHpZNlZJQU03WlQ0UG94VjZnejBKc2EwN1ZXbGpYY1Y4Z05m?=
 =?utf-8?B?SGg2cGF3MTRzYW9SeEw0TkY5SnJQUXd4dUNlK0J2QkZaMGJUdWpHZVdUckRI?=
 =?utf-8?B?eDNEcHJBTEU3MUtLVDR2N0Zhajd4U3hWYVNjU01lMkRBZFVlRVFPWDIyYkhw?=
 =?utf-8?B?SURlR3d5UDRPeU05NzBFamFZOElpNkw1R056UkFkT2F1M2hVOCtKbE5vQ3Fv?=
 =?utf-8?B?U2w1ZHdyTEw0UkRkRFFDKzZFVWIyNFBMeVlGQytyTkNiY0U0T3RjOHE3cmha?=
 =?utf-8?B?b0RCTzEvcmsyOGYvYmJwYlUrekU3QTRUMUVzVVhVdUx2NVZKR1VqTlFkQlhM?=
 =?utf-8?B?ZytvVjUxYWFLNWhMWFV2NzU4UkYvUVlIK3FZZytBakg4S3hLaTYwbFU4T2tW?=
 =?utf-8?B?OUJxcXlLTXY4N2JxRU54ZFpjRmFXTG1OZzVoZFhtc3Qrbjd1eUxlbVp6Z1Jz?=
 =?utf-8?B?anZwcW9BUFBreUd4SUo1MFNDTzZRM211ZVczQkZrbnRDMnNHT2MreU0wcnBH?=
 =?utf-8?B?ZjFkQ1YwNGM3UHd6WkFYdUhYam13bmtMbmhTUG56RXdiMlRkb2NnRTRVTkV4?=
 =?utf-8?B?cloxcUdFbFl0K1BDaGV0bnNaMXlJRE0rRHprTENONm41R0FNMnZram42MGQw?=
 =?utf-8?B?cGk5enJXTi9yUmR3RGx0T3pFZDJDU0kzUmF6WGVrdi9SYTlKVkRNUnB3REEv?=
 =?utf-8?B?SzJaZjluNUtmUmlLb3dPMkVBS1BXeWx1N1Z5R2lzcjlFZU9VOUROQW5UWVVs?=
 =?utf-8?B?TytJd1BiNkQzL1JWUEROblRuSmQ3TWpHZTdpMFBkNXNIclB1THlMQnZwbjdr?=
 =?utf-8?B?SHhkTmw5UDNMd2xsUG5JeHZyTG5tUmdrR0FmUGlhVkt2TkQrREh0b1dIQTJn?=
 =?utf-8?B?cml6aVk1bHFTOG9nNlJaYVI4MTNIUEVkb1FJeUY2WXVGMmZVQUtXVzA2eTdU?=
 =?utf-8?B?RkZnOFhFY2FLZG5FenZmcXdUTURkL085YXFJeTN5eXpZVmp4NDBrNlJZREFT?=
 =?utf-8?B?WGVWR0dyNy9NaG83NW5pOWlkUFVmak9KN1M3MUxUNFE0OWxjUDQwYnRSa0d3?=
 =?utf-8?B?VU9HZ3RHczludUpxRTNkblNjaHVlNW1mTC84Z1ROR0xQcEZhTm45OHYzWFd4?=
 =?utf-8?B?MjJpL0hwaks0R2M1NDUvekxBeXEraHNPT3RNdjZDd1NaR1NXTzJUMWhNS3Yw?=
 =?utf-8?B?UWtmdjhSOFlJM1NRdWdPZVhhN2phK3pyVUdSVlVvRThiRGJIaGRiODA0YXJz?=
 =?utf-8?B?SlE3eDRseXpQdXNoUnpJR1ZOaUtLUWVRak5QS0RQdENQOVJZMFhkbkw3OHU4?=
 =?utf-8?B?R2MySy8zM0JhQmxhSjFaT2IrZzhQQTR1VXZicHJjbGRHb3hWZmR3bUcvSmly?=
 =?utf-8?B?VmEvWXVZb2J4WHhZQm9SaFRtNG56bEM4SFNyclFVMURaWkE3d0Q5NFF5eWEr?=
 =?utf-8?B?SG5uSC9JZXk3WmcyanlMNXpZL2M2WExOMTBxOFo0MTlKZlNIUjczZ0JaQjMv?=
 =?utf-8?B?VVNtR1N2Uy9PeFVoSDNQblJDU2ZNbkM4elZsVEF5U2R0WjNudHpRRVUxQ1E3?=
 =?utf-8?B?bWVxOXduY1RYVjhHdHZmbkhBdExPZzV0YU5iTkZWSWU4WlVPV2hndlFZVmR5?=
 =?utf-8?B?ZEJEZFo0THhGZG5GYkVIMTBMQU5rMTY0WnJuVm1FOGc4bnYyWlBoMUV1ZGQ3?=
 =?utf-8?B?YVBYKzYydWVKWDNtZkp2VVVGV1gyMCt6cGtQcmZkNDFMUjBrT3phYnhiK1Bi?=
 =?utf-8?B?ZksvUEUwTUJxMkM0bXQ5M3hTMCs4a056d1djczhJMkJ6dlhlRWxnODJTMkNO?=
 =?utf-8?B?bm5KcnhySU5WZUZoWFE3RldDUk9rek5Ic2RGdHVCUlpoclp3Z2tyMFFXUXlw?=
 =?utf-8?B?QkYyMFlGL2tiZnZoalNqTVVYQTdadndhdlAxdzMwREdyYnJsRTJ3eXlFOVpM?=
 =?utf-8?B?a1E9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d523fb85-4172-44a7-af44-08ddafebaada
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jun 2025 11:14:47.4845 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 47HI333Xh9By1//jdJYVQbcL90cl60mKAniI9DZYZ6KLfLIkTHiTOvPHS6hThP2Vsiisba3Wc+SsqwqqML3KCTgsZj7127L5dxZozXgavk0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6845
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750418105; x=1781954105;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9YINdsqGziFg5Sfd0J0xana0ep3bOK0Lqmo75Vi2Ql8=;
 b=MY9idYEvQ7kgv2lZyPDDYxHqbsRhlwnyHIt5viPHopXTP6wZZSfi3Dzb
 jAxzzHZMY6aD/p+dyKu/gbYrzYgsnuyT1aMqQlKWE+hMpiaQd/2U8pxNN
 m0JHkWleNve7zkbQ3cxpZdi+KsnMBgQlqrrS1rCSwl0U/Fk8hm7rThMS7
 bujY01eeGrSs1g7QAmSk3R5TuGAJJqwMEQ/gNdCzCjTTkCNqAtg33XRXf
 cTXu277eXSVqHR8rkTWZLOzA03ENM5hpJn2iIdOCaMy3lIlz2nxhjjCgY
 RhPGQhcYXZe9p+3J+ZJi1LmMmQFA9F/86+sy8H2U7b3/Ub24Y4rwDKShT
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=MY9idYEv
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] ethernet: intel: fix building with
 large NR_CPUS
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogQXJuZCBCZXJnbWFubiA8
YXJuZEBrZXJuZWwub3JnPg0KPiBTZW50OiBGcmlkYXksIEp1bmUgMjAsIDIwMjUgMToxMSBQTQ0K
PiBUbzogTmd1eWVuLCBBbnRob255IEwgPGFudGhvbnkubC5uZ3V5ZW5AaW50ZWwuY29tPjsgS2l0
c3plbCwNCj4gUHJ6ZW15c2xhdyA8cHJ6ZW15c2xhdy5raXRzemVsQGludGVsLmNvbT47IEFuZHJl
dyBMdW5uDQo+IDxhbmRyZXcrbmV0ZGV2QGx1bm4uY2g+OyBEYXZpZCBTLiBNaWxsZXIgPGRhdmVt
QGRhdmVtbG9mdC5uZXQ+OyBFcmljDQo+IER1bWF6ZXQgPGVkdW1hemV0QGdvb2dsZS5jb20+OyBK
YWt1YiBLaWNpbnNraSA8a3ViYUBrZXJuZWwub3JnPjsgUGFvbG8NCj4gQWJlbmkgPHBhYmVuaUBy
ZWRoYXQuY29tPg0KPiBDYzogQXJuZCBCZXJnbWFubiA8YXJuZEBhcm5kYi5kZT47IExva3Rpb25v
diwgQWxla3NhbmRyDQo+IDxhbGVrc2FuZHIubG9rdGlvbm92QGludGVsLmNvbT47IFNpbW9uIEhv
cm1hbiA8aG9ybXNAa2VybmVsLm9yZz47DQo+IGludGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wu
b3JnOyBuZXRkZXZAdmdlci5rZXJuZWwub3JnOyBsaW51eC0NCj4ga2VybmVsQHZnZXIua2VybmVs
Lm9yZw0KPiBTdWJqZWN0OiBbUEFUQ0hdIGV0aGVybmV0OiBpbnRlbDogZml4IGJ1aWxkaW5nIHdp
dGggbGFyZ2UgTlJfQ1BVUw0KPiANCj4gRnJvbTogQXJuZCBCZXJnbWFubiA8YXJuZEBhcm5kYi5k
ZT4NCj4gDQo+IFdpdGggbGFyZ2UgdmFsdWVzIG9mIENPTkZJR19OUl9DUFVTLCB0aHJlZSBJbnRl
bCBldGhlcm5ldCBkcml2ZXJzIGZhaWwNCj4gdG8gY29tcGlsZSBsaWtlOg0KPiANCj4gSW4gZnVu
Y3Rpb24g4oCYaTQwZV9mcmVlX3FfdmVjdG9y4oCZLA0KPiAgICAgaW5saW5lZCBmcm9tIOKAmGk0
MGVfdnNpX2FsbG9jX3FfdmVjdG9yc+KAmSBhdA0KPiBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRl
bC9pNDBlL2k0MGVfbWFpbi5jOjEyMTEyOjM6DQo+ICAgNTcxIHwgICAgICAgICBfY29tcGlsZXRp
bWVfYXNzZXJ0KGNvbmRpdGlvbiwgbXNnLA0KPiBfX2NvbXBpbGV0aW1lX2Fzc2VydF8sIF9fQ09V
TlRFUl9fKQ0KPiBpbmNsdWRlL2xpbnV4L3JjdXBkYXRlLmg6MTA4NDoxNzogbm90ZTogaW4gZXhw
YW5zaW9uIG9mIG1hY3JvDQo+IOKAmEJVSUxEX0JVR19PTuKAmQ0KPiAgMTA4NCB8ICAgICAgICAg
ICAgICAgICBCVUlMRF9CVUdfT04ob2Zmc2V0b2YodHlwZW9mKCoocHRyKSksIHJoZikgPj0NCj4g
NDA5Nik7ICAgIFwNCj4gZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX21haW4u
Yzo1MTEzOjk6IG5vdGU6IGluIGV4cGFuc2lvbg0KPiBvZiBtYWNybyDigJhrZnJlZV9yY3XigJkN
Cj4gIDUxMTMgfCAgICAgICAgIGtmcmVlX3JjdShxX3ZlY3RvciwgcmN1KTsNCj4gICAgICAgfCAg
ICAgICAgIF5+fn5+fn5+fg0KPiANCj4gVGhlIHByb2JsZW0gaXMgdGhhdCB0aGUgJ3JjdScgbWVt
YmVyIGluICdxX3ZlY3RvcicgaXMgdG9vIGZhciBmcm9tIHRoZQ0KPiBzdGFydCBvZiB0aGUgc3Ry
dWN0dXJlLiBNb3ZlIHRoaXMgbWVtYmVyIGJlZm9yZSB0aGUgQ1BVIG1hc2sgaW5zdGVhZCwNCj4g
aW4gYWxsIHRocmVlIGRyaXZlcnMuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBBcm5kIEJlcmdtYW5u
IDxhcm5kQGFybmRiLmRlPg0KUmV2aWV3ZWQtYnk6IEFsZWtzYW5kciBMb2t0aW9ub3YgPGFsZWtz
YW5kci5sb2t0aW9ub3ZAaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvbmV0L2V0aGVybmV0
L2ludGVsL2ZtMTBrL2ZtMTBrLmggfCAyICstDQo+ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRl
bC9pNDBlL2k0MGUuaCAgIHwgMiArLQ0KPiAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhn
YmUvaXhnYmUuaCB8IDIgKy0NCj4gIDMgZmlsZXMgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAz
IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2lu
dGVsL2ZtMTBrL2ZtMTBrLmgNCj4gYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9mbTEway9m
bTEway5oDQo+IGluZGV4IDYxMTlhNDEwODgzOC4uNzU3YTZmZDgxYjdiIDEwMDY0NA0KPiAtLS0g
YS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9mbTEway9mbTEway5oDQo+ICsrKyBiL2RyaXZl
cnMvbmV0L2V0aGVybmV0L2ludGVsL2ZtMTBrL2ZtMTBrLmgNCj4gQEAgLTE4Nyw2ICsxODcsNyBA
QCBzdHJ1Y3QgZm0xMGtfcV92ZWN0b3Igew0KPiAgCXUzMiBfX2lvbWVtICppdHI7CS8qIHBvaW50
ZXIgdG8gSVRSIHJlZ2lzdGVyIGZvciB0aGlzIHZlY3Rvcg0KPiAqLw0KPiAgCXUxNiB2X2lkeDsJ
CS8qIGluZGV4IG9mIHFfdmVjdG9yIHdpdGhpbiBpbnRlcmZhY2UgYXJyYXkNCj4gKi8NCj4gIAlz
dHJ1Y3QgZm0xMGtfcmluZ19jb250YWluZXIgcngsIHR4Ow0KPiArCXN0cnVjdCByY3VfaGVhZCBy
Y3U7CS8qIHRvIGF2b2lkIHJhY2Ugd2l0aCB1cGRhdGUgc3RhdHMgb24gZnJlZQ0KPiAqLw0KPiAN
Cj4gIAlzdHJ1Y3QgbmFwaV9zdHJ1Y3QgbmFwaTsNCj4gIAljcHVtYXNrX3QgYWZmaW5pdHlfbWFz
azsNCj4gQEAgLTE5NSw3ICsxOTYsNiBAQCBzdHJ1Y3QgZm0xMGtfcV92ZWN0b3IgeyAgI2lmZGVm
IENPTkZJR19ERUJVR19GUw0KPiAgCXN0cnVjdCBkZW50cnkgKmRiZ19xX3ZlY3RvcjsNCj4gICNl
bmRpZiAvKiBDT05GSUdfREVCVUdfRlMgKi8NCj4gLQlzdHJ1Y3QgcmN1X2hlYWQgcmN1OwkvKiB0
byBhdm9pZCByYWNlIHdpdGggdXBkYXRlIHN0YXRzIG9uIGZyZWUNCj4gKi8NCj4gDQo+ICAJLyog
Zm9yIGR5bmFtaWMgYWxsb2NhdGlvbiBvZiByaW5ncyBhc3NvY2lhdGVkIHdpdGggdGhpcw0KPiBx
X3ZlY3RvciAqLw0KPiAgCXN0cnVjdCBmbTEwa19yaW5nIHJpbmdbXSBfX19fY2FjaGVsaW5lX2lu
dGVybm9kZWFsaWduZWRfaW5fc21wOw0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJu
ZXQvaW50ZWwvaTQwZS9pNDBlLmgNCj4gYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBl
L2k0MGUuaA0KPiBpbmRleCA1NGQ1ZmRjMzAzY2EuLjkxYWE4ODM2NmMwNSAxMDA2NDQNCj4gLS0t
IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlLmgNCj4gKysrIGIvZHJpdmVy
cy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlLmgNCj4gQEAgLTk0NCw2ICs5NDQsNyBAQCBz
dHJ1Y3QgaTQwZV9xX3ZlY3RvciB7DQo+IA0KPiAgCXUxNiB2X2lkeDsJCS8qIGluZGV4IGluIHRo
ZSB2c2ktPnFfdmVjdG9yIGFycmF5LiAqLw0KPiAgCXUxNiByZWdfaWR4OwkJLyogcmVnaXN0ZXIg
aW5kZXggb2YgdGhlIGludGVycnVwdCAqLw0KPiArCXN0cnVjdCByY3VfaGVhZCByY3U7CS8qIHRv
IGF2b2lkIHJhY2Ugd2l0aCB1cGRhdGUgc3RhdHMgb24gZnJlZQ0KPiAqLw0KPiANCj4gIAlzdHJ1
Y3QgbmFwaV9zdHJ1Y3QgbmFwaTsNCj4gDQo+IEBAIC05NTYsNyArOTU3LDYgQEAgc3RydWN0IGk0
MGVfcV92ZWN0b3Igew0KPiAgCWNwdW1hc2tfdCBhZmZpbml0eV9tYXNrOw0KPiAgCXN0cnVjdCBp
cnFfYWZmaW5pdHlfbm90aWZ5IGFmZmluaXR5X25vdGlmeTsNCj4gDQo+IC0Jc3RydWN0IHJjdV9o
ZWFkIHJjdTsJLyogdG8gYXZvaWQgcmFjZSB3aXRoIHVwZGF0ZSBzdGF0cyBvbiBmcmVlDQo+ICov
DQo+ICAJY2hhciBuYW1lW0k0MEVfSU5UX05BTUVfU1RSX0xFTl07DQo+ICAJYm9vbCBhcm1fd2Jf
c3RhdGU7DQo+ICAJYm9vbCBpbl9idXN5X3BvbGw7DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25l
dC9ldGhlcm5ldC9pbnRlbC9peGdiZS9peGdiZS5oDQo+IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvaXhnYmUvaXhnYmUuaA0KPiBpbmRleCBjNjc3MmNkMmQ4MDIuLmM2Y2ZhYjBmZjlkMyAx
MDA2NDQNCj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmUuaA0K
PiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9peGdiZS9peGdiZS5oDQo+IEBAIC01
MDUsMTEgKzUwNSwxMSBAQCBzdHJ1Y3QgaXhnYmVfcV92ZWN0b3Igew0KPiAgCQkJCSAqIHJlcHJl
c2VudHMgdGhlIHZlY3RvciBmb3IgdGhpcyByaW5nICovDQo+ICAJdTE2IGl0cjsJCS8qIEludGVy
cnVwdCB0aHJvdHRsZSByYXRlIHdyaXR0ZW4gdG8gRUlUUg0KPiAqLw0KPiAgCXN0cnVjdCBpeGdi
ZV9yaW5nX2NvbnRhaW5lciByeCwgdHg7DQo+ICsJc3RydWN0IHJjdV9oZWFkIHJjdTsJLyogdG8g
YXZvaWQgcmFjZSB3aXRoIHVwZGF0ZSBzdGF0cyBvbiBmcmVlDQo+ICovDQo+IA0KPiAgCXN0cnVj
dCBuYXBpX3N0cnVjdCBuYXBpOw0KPiAgCWNwdW1hc2tfdCBhZmZpbml0eV9tYXNrOw0KPiAgCWlu
dCBudW1hX25vZGU7DQo+IC0Jc3RydWN0IHJjdV9oZWFkIHJjdTsJLyogdG8gYXZvaWQgcmFjZSB3
aXRoIHVwZGF0ZSBzdGF0cyBvbiBmcmVlDQo+ICovDQo+ICAJY2hhciBuYW1lW0lGTkFNU0laICsg
OV07DQo+IA0KPiAgCS8qIGZvciBkeW5hbWljIGFsbG9jYXRpb24gb2YgcmluZ3MgYXNzb2NpYXRl
ZCB3aXRoIHRoaXMNCj4gcV92ZWN0b3IgKi8NCj4gLS0NCj4gMi4zOS41DQoNCg==
