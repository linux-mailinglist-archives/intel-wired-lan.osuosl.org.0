Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0OJ/BJl2wWkQTQQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Mar 2026 18:21:29 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F3E22F9C54
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Mar 2026 18:21:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6F51A607AD;
	Mon, 23 Mar 2026 17:21:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5gzosQguteRp; Mon, 23 Mar 2026 17:21:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DF990607EF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774286484;
	bh=ro+jzwclxYFtvk9NqwyrygsiaxJJ1oXbjo7TEHdhQvg=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ZvIBW16CWoH0FJ0aDP7g7QRgbRwrGGScODeEyWyiQoPKYIlLgNbKroXfqHw/9JqEV
	 k4t0YLoLf5O5daQE8nJuhPe2sBTatvyL0M6utzMmKodfQyPdXGIKpA6HjKZhNYZEjq
	 r63qwfpMJO7WF9oZgyFgRDf4+SQJ6AgzdpPCy4tVyZ2AZaFawEYscetlIjE1/DohB3
	 IBpc/q6ZaQXoM6jVkDxDQKv9i2yDHoWoxnJc+X3uBoMDNwOkV6ONHuNoWiOk2hLxDd
	 nBjmMKJQIu975mVRhifa5AkDY44ADj4ZHGUqNSWvDD4BA/K0IG246lZDT222LqcWVg
	 D9z12EU+72XxQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id DF990607EF;
	Mon, 23 Mar 2026 17:21:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id CDE1EF4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Mar 2026 17:21:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BF9F9401F3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Mar 2026 17:21:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CVY5uDWYXouK for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Mar 2026 17:21:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=avigailx.dahan@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 0F39B4007D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0F39B4007D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0F39B4007D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Mar 2026 17:21:21 +0000 (UTC)
X-CSE-ConnectionGUID: 3aU4b4QpR/6o57EODaEUxQ==
X-CSE-MsgGUID: 2pnM4tqeRMqoAb5jkestUw==
X-IronPort-AV: E=McAfee;i="6800,10657,11738"; a="62850048"
X-IronPort-AV: E=Sophos;i="6.23,137,1770624000"; d="scan'208";a="62850048"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2026 10:21:21 -0700
X-CSE-ConnectionGUID: q845Pu57S/qQlREHb7/iZw==
X-CSE-MsgGUID: py9p3vOKQLGYRGAo+pmOmg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,137,1770624000"; d="scan'208";a="224099040"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2026 10:21:21 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 23 Mar 2026 10:21:20 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 23 Mar 2026 10:21:20 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.22) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 23 Mar 2026 10:21:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EAhOwJvWSeFX0ROqQKdAcUg40sYQJpXSDhS2ChVUMTK46S4FUlvQIu5IalmjQ2ukYT4E08zhoxqyKTCAu+XcmUH5uxSKkSHuc29nzf8PHsJj+cyvDWJgkcjMPqc0iqmAQ90A1A/2P/Riw7ZItDhHCcpcwrMg6VyZU324wQmihWrpjF6DTBvHp4dwQIFCZy15Sk+6gS+xTP9+OWTtW8sJuKtXfPZVzrojjkjTLz6q7nGdt27Xc8F5HaRYFKCOGMamQD/AWScl4m2QwAe0VvXyxtJPJ/GyrgPiFiQKyZwuqqA9FUBSxdw8bMQ7v+aKp6rOUK18PqaM2g4hW+iE6l/qXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ro+jzwclxYFtvk9NqwyrygsiaxJJ1oXbjo7TEHdhQvg=;
 b=aR6xvwsfsrDzETKew04iR+ccOnuylehSmn4oxHvw+GwRwBU3qZ9hGS5+p9Qd4chw02w3qzkPBAwnpL10M4ODujl2fwUBF1sKR7T2bafY7PjWL4PhhJ93NNGp0DhDrDa/LpmGVZqQbMlEixD0O+ZWCTMABeyznAnV6xZgDnYf0umWHDNk9E/PMjohWdDcDe3+pSMuhMCY3WD/YBtyma/rCloTZK62S+vXa7u2KH+TwlUziDx8Ect9+w8YG5TtrSDs5S26IK4YQbUihPjwYlnXf/cd+Cx/IbpsNK4USVbw3PQXHimEvYiHVcxY0UdlF5FGPrecVNlrULtdY9aCIIyg+w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH8PR11MB8013.namprd11.prod.outlook.com (2603:10b6:510:239::8)
 by LV2PR11MB6069.namprd11.prod.outlook.com (2603:10b6:408:17a::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9745.20; Mon, 23 Mar
 2026 17:21:17 +0000
Received: from PH8PR11MB8013.namprd11.prod.outlook.com
 ([fe80::26a5:58f7:7e5d:5572]) by PH8PR11MB8013.namprd11.prod.outlook.com
 ([fe80::26a5:58f7:7e5d:5572%6]) with mapi id 15.20.9745.012; Mon, 23 Mar 2026
 17:21:17 +0000
Message-ID: <6187bbef-15ef-4cfc-82e1-d3de79ff65db@intel.com>
Date: Mon, 23 Mar 2026 19:21:08 +0200
User-Agent: Mozilla Thunderbird
To: Kohei Enju <kohei@enjuk.jp>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>
CC: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 <dima.ruinskiy@intel.com>, <kohei.enju@gmail.com>, Aleksandr Loktionov
 <aleksandr.loktionov@intel.com>
References: <20260317062205.39406-1-kohei@enjuk.jp>
 <20260317062205.39406-2-kohei@enjuk.jp>
Content-Language: en-US
From: "Dahan, AvigailX" <avigailx.dahan@intel.com>
In-Reply-To: <20260317062205.39406-2-kohei@enjuk.jp>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL2P290CA0003.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:2::20) To PH8PR11MB8013.namprd11.prod.outlook.com
 (2603:10b6:510:239::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8013:EE_|LV2PR11MB6069:EE_
X-MS-Office365-Filtering-Correlation-Id: 917ce0f1-62ae-4967-2fd2-08de89009785
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|56012099003|22082099003|7053199007|18002099003;
X-Microsoft-Antispam-Message-Info: VPqDOcXLI5nlJS8EiImYzh1JBVnR9mJy7JFKiqCKhp8uCO6Ng1e1a4aW0eAw8EqSRT5/5uYwwZgX3ruAxAYH5XyKdLrJqxey5wEkKrqyKiwVHylMgnJ3e0zk1Ene/7AaDpOoE75HsaHoos9a542TRTbzlDrYFW3PitM/NW6WTV9QFjg/gMZMdwuWd+QPPVGnvY+43Jb6L0RphV2HNPaBuz4Y7am7nUGUhlPGFzrPYKu/6/g5lJJRjSTL0uv6iDrNXmCCHfYfc257cGPnhCpdZJIOiUu8XoA2g6CEQcGc8zGhU1l6XJ0q5eDFcxjvuf5rBMPIp05HLtW5dCDYW579xzPXl5q/TqppUq084T+YnR+qtDCY5NROwPFPEcrUt595fnR84WfMXiSK9pmqD5hlKLExb8xTg+HzHA7Ql7f+eZl+udVf0Q0xwClIyQ46Rb/XWpbpZyZaEZ8+Fh2ONEiDxqx+wC1Z5tZOM6cn+7mlilZadmfJ3q8O5AMMymUtGJgkE17DYhx8KXYX9EVhodjDPqmuDrLTQEKdOF1Rb+oqLDmfchKfmg/64tPJ5/cHH/s8Q498+lQ4kTFUS75XDJ1EvrHBiAowibB0Vls20ddbJCguFvAqGheX5HIYtNHtG1nhYHP5+IAKbD80fmI5eFYTuG1iM85+cggKwIPESlAga2s2ROhXOtYtoD84/A2cVtyhbVxgZwncCGc0DJd1tDeaeYlY/D0tjum9a81WOrFnmGY=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(56012099003)(22082099003)(7053199007)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Z3BSRDRlSHMwbTNCdE8xUTRUUGVPWEtlWWp6enBvWmNPd21UNnlvSXhnS3dl?=
 =?utf-8?B?eUhZODNUZ0dUOEVSMmJ3R2NXM21IeDRacHhKd094dzhxWm14eEJzdnZTSVZ6?=
 =?utf-8?B?dkNNVEZOekFqQlgvQ25MR2RRbGkwOFp5cGhUM0YxblBUVzZrRTdpbE1lL2Nu?=
 =?utf-8?B?NE9mZXpPMzBpYk90dEVYSE1xSFVOUUkrS05acmp4MzdqQ1ZXYXJrRHNrWkZR?=
 =?utf-8?B?b3hsbDc2MkVNdXdYY0xyeldOb1lUcklZQ3hVSVdBK2NPSmR0djRYQWl2SFZR?=
 =?utf-8?B?TGZJRndGNzRYVkowUjM3STZnL1FwTmNZTVFrMXkwZ0svTFJBdGtDUmVVZE9L?=
 =?utf-8?B?N3pLSDRSeGxXMlQ4VjROV1ZVVFlGZG5NWXVLYkVyYis4QU9xRWV2K3N0SURC?=
 =?utf-8?B?Y3M5clJtd3JDN2R3YWNhQ1hSbUg5d1lYYVd2RmozazJiUXMrRE9GQmZ0RERr?=
 =?utf-8?B?UUE0NkhpZzlXYjRxalBZT0kxckYvaHN5eTNCYmczUGQ4Z1JxT2k2TDAwZHh5?=
 =?utf-8?B?M0IvVzdTcC9jSnN1S3R2VHdOZ01aSCtQa2VtQjJFdjE3UytrVmx4aWxJQmNC?=
 =?utf-8?B?NitDZU13eUhVcmxhL0w1V0w3a1dyNHpGZVlyL2FRTkwwL0N2dUpPbzNJeHRD?=
 =?utf-8?B?QmtrR1dvV2JRakcwVWtyeW9jMDZ4UC9oR3FRbzRJb3ZoU3pvYXhlWFA5UzMz?=
 =?utf-8?B?NTZpTU5KU0lad00yYUFibUdvRTRlWDlhZENxV1dxKzFqenc3ZnRLaVRSOFNk?=
 =?utf-8?B?M0JZUEtQQ1RMc2dWczIrVm9EYlVMb1UwNHpXMTMwT0RVcURqekFHWXNQekZz?=
 =?utf-8?B?ZncvSHpNYXN4VC9UbXc1Qjc1bmo2MTVTbktlY3lQUnUxZGpRV2ZtOHBxSlFG?=
 =?utf-8?B?R3I1SlprRlhYV3dJSnZ2dVBiTFZJTE50VTlGQlFrL0xyY2VlVVpTVE9kMmF5?=
 =?utf-8?B?VktKaDlpOGpHa1YwcTVuaCtPa09zU1hXV3cxM0hJQzhBa3o4cVhJTVJRVjlC?=
 =?utf-8?B?aFduT3pTWnVTMG42WE9LOUV4VllVaHkvS0dhNStRMEE3d1ZhYVJtVjJWT3p5?=
 =?utf-8?B?VGRNK2lYSzR4aVdpT1dDWURDV2tiNHpBRXFvTUJLSXBBblhseEhWSUhCRUcx?=
 =?utf-8?B?aWt6eFBheHN3OHdxVG1zVDFDUDEzdGpZYnF0Q3dvQzFBeWthbXdpR2ZVeU1Z?=
 =?utf-8?B?SzM4NkNTTG5BV0FjT08yMTIxbDlrTjFJaXUrb1FMMDR5dWtGRk9lN2QvVExu?=
 =?utf-8?B?cDM3MStGQUp2Y3JtNndLL1p1TnpMdTAwNHVyL3JVMmJ2bGMyYnJSVzBmeWZn?=
 =?utf-8?B?cW04WWg5a2l2VEFqSmFRbWRHU2pkQmQzdHRTdk5rY3JmZmNnRjd4Y1poc1NO?=
 =?utf-8?B?SWZpeFUxekpBRTVqRHJtekhNZGdHV3JGMkVleDFCWVBVenVHdWo5cEQ0RG9m?=
 =?utf-8?B?MjFpOVhoRHJ6MWRNYkdYSDQ5ZnZJK3BBRkJTYmxhRG5GdkF1eFlOTXdHenRh?=
 =?utf-8?B?OVNvVDZ1dkZEVy9RcXVwOXBJdFZwRGNOUE9TajNHUTJ4VTkrTWV6UEhNUmgy?=
 =?utf-8?B?QkpOV283KzgvRVh2UWFNV1dDL3pMeDEwUjQ2TVBrd09UMFlqWW1UUEQ0WkNB?=
 =?utf-8?B?UzhidG43YkFjUmtubERVZjI4VDc4VTN5dzJwQzF3NEt3NjZ1STBhMmM5UFBV?=
 =?utf-8?B?NHp0SDF5RDlNdy9CUDRUMytZQjFKbEFiRzJBVzJpT0hQc3pWSmNYdEpKL2h5?=
 =?utf-8?B?NVZMd29lTlVhSkpYZmJUenVqOGZtcW9nZkgwQjRGWTBjNWVGSGtaNm5YaGFv?=
 =?utf-8?B?NlFyMFB4Um9iK1AyVW1LZnVSVWhXZ1hDSUUreUlScFZSeEY0MTcrdXMyekln?=
 =?utf-8?B?ckt6RU95QUlPSkdJNUlGZzF6bWZpT2JZMFR0OGZoREZlekxCUzdRamNqS2Qx?=
 =?utf-8?B?S2NpZDZoamZFcUhZV2djUG1iTXZkSzg0T0hmZ1VsNGE2cVFTTU5QZUx0dVAv?=
 =?utf-8?B?UENwRk1qNXp4K0EwTTNCY2lRSzQ1VHNHcUlNOUZuMmpnaFZ0T3ZvWnl0T0sz?=
 =?utf-8?B?ZFhyNFVxVEhtT0ViZ3FOYjFxMytnTFBUWFNSSmJxcTdoaklOei9tYXB2WUIr?=
 =?utf-8?B?Z29tQWZMWGVNd3NXS201NHczNVNrZmhoZVI5V2NQU21JUFB2cXVZTURQQ1A4?=
 =?utf-8?B?dFlYeWNlSXpUdEZLR3ZTYjV2Qm5idWRORzZNSVNYcmJxb09wcFpyZ3B1RGsy?=
 =?utf-8?B?a2xHay8zZ2szOTkvbEdSWmt6b1RONC9Kc0dmaWdtOVNSanFqTksvUER3aVA2?=
 =?utf-8?B?dFZPamYwdlhxTStVclBuYnhYS3lDZGFjZm9lcUJlOUVraUJRVUo2Mm9oZGtZ?=
 =?utf-8?Q?87TwPybyslCVfjL8=3D?=
X-Exchange-RoutingPolicyChecked: vu59+j53vsG84RKDMyafy79R9J5uDL0sYcepzsHFaulAx09Y2iabkWVJhfw/NehB3IlAeVZSulrrUJQi29qY2RCgXeLFVVN22DnM7sndbgDnhA9IXZ4HfTMQJK7JsV6waVSasbtyi13FmqOy4qRuNcLBJjBIoQfW9ahMshf7uk3hkKD7acOVYkgkumNQRSfGJD9c1ScW9j9Ln8/YVET6E8cp3fX7tL+L/7vvcOS4cCUQ9ovLr42iVHZm/bGFGLmU1xORNKLQJyp7idVVJAmnkftPS844Sj/Bal4VmRguydd35w6pvByZmkrsBB03vXSIhUfd+EUiuEXBZN2gBHin9Q==
X-MS-Exchange-CrossTenant-Network-Message-Id: 917ce0f1-62ae-4967-2fd2-08de89009785
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Mar 2026 17:21:17.0151 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9Q5+s3EZNBUZOOzHdK14qZm9gZKuF5gH+maDu8kseyHY0nn/JNmCKffPrkbaLv03zV3yfMJ4zCe5GlY87c/Z6aBMXHyJAYEDm1+VbDCvzwA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV2PR11MB6069
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774286482; x=1805822482;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=bxGqLvgWG/CAL/EjgjDw2nEEJE/52BoSRBr95vPJ5gc=;
 b=Im9mEfwJ6N/9od32KeoEQPXcnHSVf7f8W6zTgH6hLbWIH5396tR3g8bU
 9tf+Es4vpzIgEFlCsAOHGlpeUcbvUpk3Z0jbgYh3LvNG48CcBBj6ru49B
 CfJHlb6Ck67/mUXBQEPaeQpJiA/uG1A4Tn5AQ/Fj1pTLRSJjNVD2W+CkM
 j+LWn12l1Yn7Y8xVk/jJq8GWWJowrcsNuQSLKApSQoh7NlV3GdqvRWnq9
 ljAOD1CH/W/mYlOnqJ5rYj+pKhD4EcYmSIKKWrW5a3+ONN9Y8JVkfO0sy
 CbQsbM7px1C0W4EVGjKsKpisVyDz8Rucd0p5FAc/NueTunQcmMXYXVCIk
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Im9mEfwJ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 1/2] igc: set RX hardware
 timestamps in igc_build_skb()
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
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[avigailx.dahan@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:kohei@enjuk.jp,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:dima.ruinskiy@intel.com,m:kohei.enju@gmail.com,m:aleksandr.loktionov@intel.com,m:andrew@lunn.ch,m:koheienju@gmail.com,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[avigailx.dahan@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 4F3E22F9C54
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 17/03/2026 8:21, Kohei Enju wrote:
> igc_construct_skb() sets RX hardware timestamps, but igc_build_skb()
> does not. This has not been observable so far since igc currently does
> not enable the build_skb RX path.
> 
> Set RX hardware timestamps in igc_build_skb() as well so that both skb
> construction paths provide the same behavior.
> 
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Kohei Enju <kohei@enjuk.jp>
> ---
>   drivers/net/ethernet/intel/igc/igc_main.c | 10 ++++++++--
>   1 file changed, 8 insertions(+), 2 deletions(-)
> 

Tested-by: Avigail Dahan <avigailx.dahan@intel.com>
