Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GJTrIfPKpWnEFgAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 02 Mar 2026 18:37:55 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DF7B41DDE9E
	for <lists+intel-wired-lan@lfdr.de>; Mon, 02 Mar 2026 18:37:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 514668329D;
	Mon,  2 Mar 2026 17:37:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eFtCB1zCoyEa; Mon,  2 Mar 2026 17:37:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A5B038329E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772473072;
	bh=B/uUZNPky5coOoqJIWzBlR72A0373v4Yj+eDO7o5+/U=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=yWMFr+ErY+mUtubuLWBDL5fg5pv7Oyk+EZOV5j1X6eq9wnycU+Btv0KAKi94UWzoi
	 h+WHoR1UQwklrINzqZq70V/1pRMyyZp17oTae9d8iXeNGNyxsE9rMnn8EohQoIjj4E
	 zfuIouoyat0R1kBAZ+Kqw94TyIk0wOOdoMRluARL7s/899LbYg71PWBFb8XLs59AtX
	 1g/h8DczAzWxP/C9nL0OgeUH5Tqfa6JbqrZiI2umcHYppEYjPw8shNHr8v2gVvA5oO
	 33P9N5d79jBEkfIGPvjmRMl75kHhW6OG1KpnVOe7Y1sDfP2KATlm6H8KPy2fr78Pv/
	 2K78sIFT+Hp4g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id A5B038329E;
	Mon,  2 Mar 2026 17:37:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 24A0B1EB
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Mar 2026 17:37:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1659382813
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Mar 2026 17:37:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YRHi32D8Fu8Z for <intel-wired-lan@lists.osuosl.org>;
 Mon,  2 Mar 2026 17:37:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 398058267F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 398058267F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 398058267F
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Mar 2026 17:37:50 +0000 (UTC)
X-CSE-ConnectionGUID: xY95g7B3SUm3dVNCPm3QJg==
X-CSE-MsgGUID: GTBRtJgfSu6KxU7wjqOrrQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11717"; a="61060714"
X-IronPort-AV: E=Sophos;i="6.21,320,1763452800"; d="scan'208";a="61060714"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2026 09:37:49 -0800
X-CSE-ConnectionGUID: cKX1KBufThm+GlMyiWzd7A==
X-CSE-MsgGUID: z9qqdX+AR6mmjVFHg/K3dA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,320,1763452800"; d="scan'208";a="217641754"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2026 09:37:49 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 2 Mar 2026 09:37:48 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 2 Mar 2026 09:37:48 -0800
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.49) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 2 Mar 2026 09:37:48 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hY8UAdsQSjhIVEJASSQME+qIZxAs9hC6FERrhBd35aqWlhSPuLiNHHpoFx3bvyfb+ulawVu8X2J+FpKnkT+PfLl0+tghxKEqtl7MNXOAIpe5ABWprpW/B+tHxVG9PfalwiS0DBKOY+hMcdmB+LhXt2s57rUhocVdKzO8qexLnLouLBSQ+P61C8YwMb7pLRYh3xRXNHOmokUqPv+bZxChIeZlU5NLJZfAGU0vE3ZDFTiLS7E+Z52HZ0dwZzO1clzoAqiaOdSMSm8zaJqJ1nv+AaX5f5J/X+yWijgQZBAVBPi3BdLQawjgcUeaNi25nJPULBBZnktHsNsO4s/PjTUIVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=B/uUZNPky5coOoqJIWzBlR72A0373v4Yj+eDO7o5+/U=;
 b=rhnPAyqa1qVec9LosguofQU7UtdkY88fGXBbk2EKCrTUgEsxnUU9N0EAPHtxt3aL2DFfWYqFQBnJ3nbh1hxtPlluLNG1X5Yz9tpCVNBZ4IUXfiVGMQ+a+JltEEJrF+tj7Kr7ovnB5kv3CXNFjg9azg1N8o+JG1c9WVCzU4qEBAOIALdD4QPAD8SAwBGavBdNvRBCqdkTB4hoKEW65mqPUdCEY1qpOh1V8ee/AU7G+gpzmh+9qtjYw1AeDskxoTXJZY9h4ih5LtIc5EHj+b9OPdC77P7I3NSRR8h6EfbghPYo47gE6prnmCKgwWi5KL2FiIMwM3kCFLQRT6hgm5m2FQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ5PPF6806D69E4.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::831) by BL3PR11MB6458.namprd11.prod.outlook.com
 (2603:10b6:208:3bd::5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.18; Mon, 2 Mar
 2026 17:37:43 +0000
Received: from SJ5PPF6806D69E4.namprd11.prod.outlook.com
 ([fe80::16a5:1a74:21d8:8e3d]) by SJ5PPF6806D69E4.namprd11.prod.outlook.com
 ([fe80::16a5:1a74:21d8:8e3d%4]) with mapi id 15.20.9632.017; Mon, 2 Mar 2026
 17:37:43 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Slepecki, Jakub" <jakub.slepecki@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "michal.swiatkowski@linux.intel.com"
 <michal.swiatkowski@linux.intel.com>, "Slepecki, Jakub"
 <jakub.slepecki@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v4 3/7] ice: allow overriding
 lan_en, lb_en in switch
Thread-Index: AQHcle05tBuCbHZ2YECLxV5/XuygpbWbqp6Q
Date: Mon, 2 Mar 2026 17:37:43 +0000
Message-ID: <SJ5PPF6806D69E4095D2E91802B3FAAE3CF8F7EA@SJ5PPF6806D69E4.namprd11.prod.outlook.com>
References: <20260204154418.1285309-1-jakub.slepecki@intel.com>
 <20260204154418.1285309-4-jakub.slepecki@intel.com>
In-Reply-To: <20260204154418.1285309-4-jakub.slepecki@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ5PPF6806D69E4:EE_|BL3PR11MB6458:EE_
x-ms-office365-filtering-correlation-id: ef796f2e-7755-4e71-0cd0-08de78826913
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|38070700021|7053199007; 
x-microsoft-antispam-message-info: HLa1YKKw5yh4C73CUsQ5m+aONMurBNOsLNShtApCub29HF6z0146oBbeXAw0QCSAiGaYUpenEigIGufMbHBiFqdCtH6oQDqIPvI0riDlkgmb/yfCoIsH3lwnuzFWx3udSW1nONr8St4VHnTS7PkOVBEcf0cOgf3k/dBDrMEqmZrHOD6dTOwlnLetgEwM8g5rFVJz0Dx7pmPQyQsA9fjkLIYL+jwgw9QCn1X605y5/mnsqEJ5+r7LXfstAt+Qtlhh55xf76SOnlQHsnU2eSmBg2bKj6RmAVhSs45aZ3aytrkICbk1jf6hRcS4J+qoxFOqofWEW3w46sY+1obiEjJcpbvgCyNsUgIvoOU/wRSfUI9YiHjKeeWWa63pNpU2mZuBRXJN+WgzToBNvPRyP27KGZq8fptZr6ZcbPIVAUQvidOJ7Pmn35eMzIQ/uB+A/UH9MPiS4DLeFXPFbj8nyuzg78rMuOwFkOIoJyaawHp/JUcqJ7YA8GeR3TWmySaHudLDWTZd3jJLGhOlHkB1DugBtzficAHZiscK9oMFPokjlZ26v0IMNh4UyhNnXHGJPJWRCLiuFwoteiE/vmu97E4VWCf1k4yACfjhjh8/tqYSXshwa9lZyeDm7k+bhcbS9XQVefCrGuKfPcFM4BXh8pQmhAZkF83AIdNaa+dU80NkOGzgh+t+ylPlAZjwRgeMWKekf1yyT5HrJntCfv+afKGLJLgwo04fE0OElsYZjE9Wo94emnG+4BiYGQMZt5qhPo8w1yXcSCI2iwt+xf/ZjSiwDGsojl8BeBuX6aI7Ex98t0k=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ5PPF6806D69E4.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UTlZWTFpY3lCeDNRbFFjS2JXQTczT3FsWWYrNmgvRW8yVEtveHpKRDhOOGFZ?=
 =?utf-8?B?aFlzWDM4YVoxMHg3MHBBeVk5ZVliTFJqdjQwL2owKzlZSEkxR0xDVWIwa3VH?=
 =?utf-8?B?ZjJnRmFkYkhUTHR3MU1jYVlNMmxZK3ZiQWU1WWJGUVRqdDlIZ3N6Q0JiN1Bj?=
 =?utf-8?B?VkQvM0lWZTZGTktnS0pqMFRkOHBNajlmN25iR0NZMEJIMFZxcjh4K01uVml1?=
 =?utf-8?B?WEZEbktyUTMrand2SjNkNDdrVTdTM1FLVEZDS29HSlJKZjhNMzZISW9XUFdk?=
 =?utf-8?B?RERYMDZpdEpjaVhKRml5ckxsa2ZvQmVIdm1IOHJKNkNocVJCZVQwTVo1NkhW?=
 =?utf-8?B?dG1KT0xvQ1pJVm5yZ1BBaG9ENkRnazQ1NG5OUThEclp2c1Q5Z1lPU01hVVRZ?=
 =?utf-8?B?Vm9oT2RuL2dJK244bHljdnFoTXFISzRVcDRJYndwQjlVOVdFWnkzMWhPbGky?=
 =?utf-8?B?U1hpeXJJeDhwRG9QVHovWlYrdlA3U3lGTzlOZEMxaWYvSGpNZzFQY3lMUUFE?=
 =?utf-8?B?cnNuUTJrSktWNmdpa20xQzB4Zmc0a1QrcXdKY2srSnhKQVg3QzRKcnlZbUdm?=
 =?utf-8?B?VTRDZnhWZFBxUlgvTWs3Nnllejd0STBYYlA1b3lzK0gxd3o0eTJCckxZNlV3?=
 =?utf-8?B?M2lHeFdmV0ljcUtyZW8yZEdKVUZjazE4NDFLTVF4d0szbUxsNncrRlhOTWRV?=
 =?utf-8?B?SzMvMlRvbVJlUHB6cS9KblBEZ04yUTBYVTU2cGVTSXZJN1p4OXFjYlRleGRt?=
 =?utf-8?B?NHR0RmJBYnIxdzQrRjdST2NpOXhPT0RJLy9qNDR0VnFIUDk5bGNOdndIRHBp?=
 =?utf-8?B?WERTNFMvWjdRM1Vzaks3cGRCWGZDRnBWREtCR2cybzBUOGVpRHUzTnRBbGc0?=
 =?utf-8?B?NkNkR2p1SjlyV0FsRVBHNDVZd1k1TDZEeVVOa2kwb2luWGU2eEN6bG1palFJ?=
 =?utf-8?B?dnhqOE5FOGd0MXI3TU5MRzE2cVlwSnQ5eFFIV2hSUmp0aDRqcVVGTlZRNWlp?=
 =?utf-8?B?ei9EUk1STlo2b1o0eE1Bd0xRbXdCdkxCRk9NSkdEU1EydE1WMENHQnJ3Vi9L?=
 =?utf-8?B?RFFralhPdFprcXgzL2xpTU5WQ0UwNngxMHdMSmZJeEk2MXRDTHVlUGpsSWJn?=
 =?utf-8?B?TFp3YVlLcnU5L2lHaWovZFNkQ1lobzVWenIzbGlDWUh0eDI0WmJ4NkN2WDR0?=
 =?utf-8?B?dE9SQW1oQTBzM0h6VGRxQm9wM3ZZc2V6eVNQWTBVWXQzZDE5d0NVdm9xa2FH?=
 =?utf-8?B?WUQ3L0hCWmxqczUrSEVvVG8ydy9VNjhYclhYODNtS0FKV3R5MFJYVytxbjdS?=
 =?utf-8?B?bzgvVlh5UmJ2WHVFQWt2S01veFhHL2JCOTNJd0QwZXgySWZ6NnArQ1ljVTY0?=
 =?utf-8?B?Mno1OXFpTHJ0enFpR2tXK3h4cU9MeERPMFluNEdSWlg1TEkzdEZBM282M0U3?=
 =?utf-8?B?QkVhWDN5NDNucm05czdLVENLVDQ1U0pacWdQTGZqQnJ4a3hCWmJXcnhJSElx?=
 =?utf-8?B?c3dUWGRSckc1cThWUDZkbW1ZNHZHWFlrWEJDelFEbFBpTHhuWFVjM1VJNWV0?=
 =?utf-8?B?Z2YrNWh6eGRiZURHM2VLa0dMSkphN2krT3VYci85b1FlbHZwdkdOazVSS3R0?=
 =?utf-8?B?SFM2R051RGwxTGhCY1BmZm5HcktLWU5JSmtrUUdqa2d5NWxsSC9CVmRxdlQz?=
 =?utf-8?B?SktaYXQ5bWRJQlpJS1NZOVdXM05PdFhGUVhyeS93YnpyR21CcFpObi9KWXIx?=
 =?utf-8?B?Uk0xQm56K3NqemgwWGhzNVRLYUsxUzVCU1cxK0VadFZ1elhlZjZYb0NXS3c4?=
 =?utf-8?B?bFk4V2ZiLzRtZ2VZd3FNR3ZFWG9rMlR1cDg1ZmJVU1NTSldmS0E4Z2pIdllw?=
 =?utf-8?B?S2MvTlRVeGlKNWRrdTIzM1lPcWd4SllXYS9kYUNzd1FOek4vWW1SRWJZWDNB?=
 =?utf-8?B?eVVqMnUyQWwxMjBqTGNyWENMeFduVjRSRkNUNnVBc25GTFFJVDdpWlVXTEtk?=
 =?utf-8?B?L3hRc0E4WGt2eSttY240ZEdZTUNWTUpua3Y1ZnpuQWhBM1BtYkhZUnd3Unhz?=
 =?utf-8?B?cys1Qy9jVnR1bXJ3NDBzM21ISlgrRE1NV3c4TXZaem1QSlp4dzQwZHZUaUF4?=
 =?utf-8?B?WnJiNGtqQjh5S0RCb0tRT0c0WEVwc3FmTm9MZW9ramVPa3ljVHJZeGRxSExK?=
 =?utf-8?B?L1NlQnN6VEZPVlJxcldCN2hPWHllcGcwblF1bW1pZWk1SHE5YitlRUFJN1hK?=
 =?utf-8?B?TEFkOHI3djhGQ3V0bDlieU5NNmwzVVd4U1c5ZGFmSkxqRHRoQXdMQVh2czVk?=
 =?utf-8?B?aHhxUklmOU9LSGhkSHdzd0h0QjRGKzh2cGY3K2lWTzhGTHRwM0J2Zz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ5PPF6806D69E4.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ef796f2e-7755-4e71-0cd0-08de78826913
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2026 17:37:43.7039 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: slf9zai8+u3s8myNzBN+jWtfQd8XQoSmjtJiONMAVkNvug3v8mwKeEsEau9hvgawxHUOjssDEM3XsjOS9NjIk2jBRsTjlLsKkOY9bNi5gZ8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6458
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772473070; x=1804009070;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=B/uUZNPky5coOoqJIWzBlR72A0373v4Yj+eDO7o5+/U=;
 b=cE9K6cQ+aqxUi7sNy61RluT13yzFwcytsBiysLLiRzqgfqmTfT9G+nym
 g953XH2iJYdMIAzYdfAZVExvGtRTrZMGXGt8ULgHWJcEHfPwpBaAzcw32
 FGkVLeKgFswcXWme3Roehcy04GimZci9xjz18GbK3QulS/Oyec+d7tb17
 Z2vCexIao2HZlAnc4XVq/GLvtQv8KortsyMaflPfaOxm0ejaSoo6n1fHp
 2P1yPPqvUevR4iTupwCxGGYFRTZ9xoLwHpGqQ0LIMyP3RND1nDzQMPffJ
 P6yztfGMjwREr3AHICNLJV3n/letIpcm3caY943fdeOwBUyThpO1qts2k
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cE9K6cQ+
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 3/7] ice: allow overriding
 lan_en, lb_en in switch
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
X-Rspamd-Queue-Id: DF7B41DDE9E
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jakub.slepecki@intel.com,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:przemyslaw.kitszel@intel.com,m:anthony.l.nguyen@intel.com,m:michal.swiatkowski@linux.intel.com,m:aleksandr.loktionov@intel.com,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[rafal.romanowski@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rafal.romanowski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[9];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,SJ5PPF6806D69E4.namprd11.prod.outlook.com:mid,osuosl.org:dkim,osuosl.org:email,smtp1.osuosl.org:rdns,smtp1.osuosl.org:helo]
X-Rspamd-Action: no action

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC13aXJlZC1sYW4gPGlu
dGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZiBKYWt1Yg0KPiBT
bGVwZWNraQ0KPiBTZW50OiBXZWRuZXNkYXksIEZlYnJ1YXJ5IDQsIDIwMjYgNDo0NCBQTQ0KPiBU
bzogaW50ZWwtd2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmcNCj4gQ2M6IGxpbnV4LWtlcm5lbEB2
Z2VyLmtlcm5lbC5vcmc7IG5ldGRldkB2Z2VyLmtlcm5lbC5vcmc7IEtpdHN6ZWwsIFByemVteXNs
YXcNCj4gPHByemVteXNsYXcua2l0c3plbEBpbnRlbC5jb20+OyBOZ3V5ZW4sIEFudGhvbnkgTA0K
PiA8YW50aG9ueS5sLm5ndXllbkBpbnRlbC5jb20+OyBtaWNoYWwuc3dpYXRrb3dza2lAbGludXgu
aW50ZWwuY29tOyBTbGVwZWNraSwNCj4gSmFrdWIgPGpha3ViLnNsZXBlY2tpQGludGVsLmNvbT47
IExva3Rpb25vdiwgQWxla3NhbmRyDQo+IDxhbGVrc2FuZHIubG9rdGlvbm92QGludGVsLmNvbT4N
Cj4gU3ViamVjdDogW0ludGVsLXdpcmVkLWxhbl0gW1BBVENIIGl3bC1uZXh0IHY0IDMvN10gaWNl
OiBhbGxvdyBvdmVycmlkaW5nIGxhbl9lbiwNCj4gbGJfZW4gaW4gc3dpdGNoDQo+IA0KPiBDdXJy
ZW50bHksIGxhbl9lbiBhbmQgbGJfZW4gYXJlIGRldGVybWluZWQgYmFzZWQgb24gc3dpdGNoaW5n
IG1vZGUsIGRlc3RpbmF0aW9uDQo+IE1BQywgYW5kIHRoZSBsb29rdXAgdHlwZSwgYWN0aW9uIHR5
cGUgYW5kIGZsYWdzIG9mIHRoZSBydWxlIGluIHF1ZXN0aW9uLiAgVGhpcyBnaXZlcw0KPiBsaXR0
bGUgdG8gbm8gb3B0aW9ucyBmb3IgdGhlIHVzZXIgKHN1Y2ggYXMNCj4gaWNlX2ZsdHIuYykgdG8g
ZW5mb3JjZSBydWxlcyB0byBiZWhhdmUgaW4gYSBzcGVjaWZpYyB3YXkuDQo+IA0KPiBTdWNoIGZ1
bmN0aW9uYWxpdHkgaXMgbmVlZGVkIHRvIHdvcmsgd2l0aCBwYWlycyBvZiBydWxlcywgZm9yIGV4
YW1wbGUsIHdoZW4NCj4gaGFuZGxpbmcgTUFDIGZvcndhcmQgdG8gTEFOIHRvZ2V0aGVyIHdpdGgg
TUFDLFZMQU4gZm9yd2FyZCB0byBsb29wYmFjayBydWxlcw0KPiBwYWlyLiAgVGhpcyBjYXNlIGNv
dWxkIG5vdCBiZSBlYXNpbHkgZGVkdWNlZCBpbiBhIGNvbnRleHQgb2YgYSBzaW5nbGUgZmlsdGVy
IHdpdGhvdXQNCj4gYWRkaW5nIHNvbWUgZ3Vlc3NpbmcgbG9naWMgb3IgYSBzcGVjaWFsaXplZCBm
bGFnLg0KPiANCj4gQWRkIGEgc2xpZ2h0bHkgbW9yZSBnZW5lcmljIGZsYWcgdG8gdGhlIGxhbl9l
biBhbmQgbGJfZW4gdGhlbXNlbHZlcyBmb3IgdGhlDQo+IGljZV9mbHRyLmMgdG8gcmVxdWVzdCBz
cGVjaWZpYyBkZXN0aW5hdGlvbiBmbGFncyBsYXRlciBvbiwgZm9yIGV4YW1wbGUsIHRvIG92ZXJy
aWRlDQo+IGJvdGggdmFsdWVzOg0KPiANCj4gICAgIHN0cnVjdCBpY2VfZmx0cl9pbmZvIGZpOw0K
PiAgICAgZmkubGJfZW4gPSBJQ0VfRkxUUl9JTkZPX0xCX0xBTl9GT1JDRV9FTkFCTEVEOw0KPiAg
ICAgZmkubGFuX2VuID0gSUNFX0ZMVFJfSU5GT19MQl9MQU5fRk9SQ0VfRElTQUJMRUQ7DQo+IA0K
PiBSZXZpZXdlZC1ieTogQWxla3NhbmRyIExva3Rpb25vdiA8YWxla3NhbmRyLmxva3Rpb25vdkBp
bnRlbC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IEpha3ViIFNsZXBlY2tpIDxqYWt1Yi5zbGVwZWNr
aUBpbnRlbC5jb20+DQo+IC0tLQ0KPiBBZGRlZCBSLUIgZnJvbSBBbGVrc2FuZHIgYXMgd2UgdGFs
a2VkIGxpdmUgYW5kIGhlIHJldmlld2VkIHRoZSBjaGFuZ2VzLg0KPiANCj4gTm8gY2hhbmdlcyBp
biB2NC4NCj4gDQo+IENoYW5nZXMgaW4gdjM6DQo+ICAgLSBMQl9MQU4gbWFza3MgYW5kIHZhbHVl
cyBubyBsb25nZXIgcmVseSBvbiBib29sZWFuIHByb21vdGlvbi4NCj4gICAtIGljZV9maWxsX3N3
X2luZm8oKSBkZWFscyB3aXRoIHU4IHRoZSBlbnRpcmUgdGltZSBpbnN0ZWFkIG9mIGJ1aWxkaW5n
DQo+ICAgICBidWlsZGluZyBsYl9lbiBhbmQgbGFuX2VuIHZhbHVlcyBhdCB0aGUgZW5kIGZyb20g
Ym9vbGVhbnMuDQo+IA0KPiBDaGFuZ2VzIGluIHYyOg0KPiAgIC0gVXNlIEZJRUxEX0dFVCBldCBh
bC4gd2hlbiBoYW5kbGluZyBmaS5sYl9lbiBhbmQgZmkubGFuX2VuLg0KPiAgIC0gUmVuYW1lIC9M
Ql9MQU4vcy9fTUFTSy9fTS8gYmVjYXVzZSBvbmUgb2YgdXNlcyB3b3VsZCBuZWVkIHRvIGJyZWFr
DQo+ICAgICBsaW5lDQo+IC0tLQ0KPiAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2lj
ZV9zd2l0Y2guYyB8IDI1ICsrKysrKysrKysrKystLS0tLS0tLQ0KPiBkcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9pY2UvaWNlX3N3aXRjaC5oIHwgMTkgKysrKysrKysrKysrKy0tLQ0KPiAgMiBm
aWxlcyBjaGFuZ2VkLCAzMiBpbnNlcnRpb25zKCspLCAxMiBkZWxldGlvbnMoLSkNCj4gDQo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3N3aXRjaC5jDQo+
IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9zd2l0Y2guYw0KPiBpbmRleCAw
NGU1ZDY1M2VmY2UuLjNjYWNjZDc5ODIyMCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9uZXQvZXRo
ZXJuZXQvaW50ZWwvaWNlL2ljZV9zd2l0Y2guYw0KPiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9pY2UvaWNlX3N3aXRjaC5jDQo+IEBAIC0yNTM0LDEyICsyNTM0LDE0IEBAIGludCBp
Y2VfZ2V0X2luaXRpYWxfc3dfY2ZnKHN0cnVjdCBpY2VfaHcgKmh3KQ0KDQoNClRlc3RlZC1ieTog
UmFmYWwgUm9tYW5vd3NraSA8cmFmYWwucm9tYW5vd3NraUBpbnRlbC5jb20+DQoNCg==
