Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A6DAF8B2667
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Apr 2024 18:28:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C586982D45;
	Thu, 25 Apr 2024 16:28:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id s8dqqJyasfx1; Thu, 25 Apr 2024 16:28:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8623982F11
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1714062511;
	bh=Q3/RKcCOKFhL8GoAlCQeDSuurZN1fQLA/ZqMhciE5Cc=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=hh53UjkYNL/SjZ4RI2Wp+yXTHcoVck4eg3Y3v3pFCxU/93wHxd6ewhePs+WuBVaDd
	 OeJgNjZJfRHNCAtwFSW1N2EIuSpr2/XbtARA/hp1YaptiadwbRPl1D/+Fq9F81HD4t
	 EeslH0dxzfp4fAAhBqroG3Z3CEbBDGFy3X5VNlk2o96ybTi3QuGdRe+ygo/MV5azhf
	 1OUm8G9CeGDxaSyRBCYcLxVGdrFoOQfPhE/G77K7Wqm/VqVzcIe4nQ+iXr4YglG7Ee
	 FCHVBnHsZ7L+MqlJ+ysBlqcXyiV9no6uPpoQnOes8saqH+Jli0qW6TJipEFrpblS0q
	 ZzE/wuGSramRQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8623982F11;
	Thu, 25 Apr 2024 16:28:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 84E2A1BF3CD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Apr 2024 16:28:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6FBF2612C9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Apr 2024 16:28:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HDmqWKG6vFWd for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Apr 2024 16:28:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 8DAD2612B6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8DAD2612B6
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8DAD2612B6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Apr 2024 16:28:27 +0000 (UTC)
X-CSE-ConnectionGUID: 9miNWeVfQ2+NOqTTaFb2gw==
X-CSE-MsgGUID: l/C8UyQgQzq9AotgEZ5LLw==
X-IronPort-AV: E=McAfee;i="6600,9927,11055"; a="9883494"
X-IronPort-AV: E=Sophos;i="6.07,229,1708416000"; 
   d="scan'208";a="9883494"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2024 09:28:27 -0700
X-CSE-ConnectionGUID: mt09/dpWTjSskzOplcF7lA==
X-CSE-MsgGUID: cS6mMKaAT8ur2+b80ypcZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,229,1708416000"; d="scan'208";a="62614963"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Apr 2024 09:28:26 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 25 Apr 2024 09:28:25 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 25 Apr 2024 09:28:25 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 25 Apr 2024 09:28:25 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 25 Apr 2024 09:28:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XemGoc9+BZHCJZ2cVw2I1M6u2lGJgMXOUAIb/TZnDFuM/7pELj2wWukvPvfEejHeBQLhlLE5ljUPHIb7VYSIbcRThrdlZggF3zJqkjPApL6NIj+lk45hdsj/nimWBnp9maYkjTx5wNIMT3dpQXT9R3eoVVuAHAgcxcXXNd2sw/URRKyH6bj1PjE0CXg8nmruRkKdTAPoSawI/07q5WlhIjuJKmymVphldNywP0Prara9MTyx2G+DI7PRicVdpn5vYUjAVoXDGULZ1D1hbdqqk+tiFY5N+lyW2cFjochitNNhxT++vX2RVBoklroRH9VAHkvmhAUjH/QATLQG/78W8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Q3/RKcCOKFhL8GoAlCQeDSuurZN1fQLA/ZqMhciE5Cc=;
 b=YlPM8JTVqE6JjWxuRs1JM4f9PdACerx/yKh2PGPhhv4iMVlUAM+B3yu2mUZeN29zC/UA9vFEevq7N1F35HLgBeNHy3u1fbZR5JSwcphe8X/5L9YoBb06W2KNIiNpZhPix+jWJqDJ4Y5gZg/qp/4IRQYe/fqF4bL16qBAm79HJX0ZnbJ5ESIKcTwnGb8GI0vo21Q69c9rVhPT8YU7X9W08J8sBdDmd0nzZ4NUwUsqq+RwloacMiZkOUWJvJEVg202fvVOsqMmlPz20C60IUaWQJRZbvnuT+8cwFl6mYpciyT0BvLD3gtP7aaHKjk8yFjdw8MkWaGUPWtaBQXcmMPyoA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by DS0PR11MB7997.namprd11.prod.outlook.com (2603:10b6:8:125::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.22; Thu, 25 Apr
 2024 16:28:23 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::b383:e86d:874:245a]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::b383:e86d:874:245a%5]) with mapi id 15.20.7519.021; Thu, 25 Apr 2024
 16:28:22 +0000
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "Polchlopek,
 Mateusz" <mateusz.polchlopek@intel.com>, Rahul Rameshbabu
 <rrameshbabu@nvidia.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v5 08/12] iavf: periodically
 cache PHC time
Thread-Index: AQHakVImAv3UAJQRp0C2N8nCSI8M5rFucOuAgAWZzYCAA/je4IAA1wyAgABdqFA=
Date: Thu, 25 Apr 2024 16:28:22 +0000
Message-ID: <CO1PR11MB5089937991BD0CAD0FA21859D6172@CO1PR11MB5089.namprd11.prod.outlook.com>
References: <20240418052500.50678-1-mateusz.polchlopek@intel.com>
 <20240418052500.50678-9-mateusz.polchlopek@intel.com>
 <87jzkue99b.fsf@nvidia.com> <9d8e656f-1b04-4fc5-a5b4-c04df7d34fdc@intel.com>
 <CO1PR11MB5089E8856F06AC88C2B76F6AD6102@CO1PR11MB5089.namprd11.prod.outlook.com>
 <a3802100-21b0-4a8d-9b4a-d557996e7c2d@intel.com>
In-Reply-To: <a3802100-21b0-4a8d-9b4a-d557996e7c2d@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB5089:EE_|DS0PR11MB7997:EE_
x-ms-office365-filtering-correlation-id: 7b9bee5e-e3ef-4f57-3db7-08dc6544b9d3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|1800799015|376005|366007|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?d1c1ZE1pZ0xNN25tMnFlbGdYWVdGV0NFUkpuSENIVVRQK3lwQXQwYjJpMm95?=
 =?utf-8?B?SDd1Y1pYUXYremNuWVh2V0ZKQ3NVeVZZQlUvUkZBRHNRRjJQL2FwV3Q3c3Z3?=
 =?utf-8?B?WmwvR1lYdW9kZjV3ZktGTU51SnpNcUJSZGJaMGt6T3JBMUhUMWhtbW5uUUgz?=
 =?utf-8?B?d3NlQm1ITUk5YUJyTGZlYktlWUF1YWdteDFHamx5c0FGMUFvRFQzb1RjK2lF?=
 =?utf-8?B?eFFZN0g3cEk0aEpvTlJDRmdUeFZUN0REYVNWRExza2lKWURFRzBYczR4ejBt?=
 =?utf-8?B?d0N5MHlyQ2JPZEpYalp5MjFpWFlobWthaUxmQUl2aHMxK1ZQL2ZPdjJKd3Ur?=
 =?utf-8?B?YWNndThidlZkT1A1T24zQjZkcFhXK1dnYU5xY0YvNHF4ZFdGK3NMZlZrYmY1?=
 =?utf-8?B?OVAxbFE4aEVlbWpRSjJMQmZQQWNCNHRiWjY2eEZFZGQzT2ZZeFovbnR1a0Na?=
 =?utf-8?B?WUNNdDZFbEFBWENrdFpjRG5sQ2NjelZlNDB4VjBqTHd4ZzFRYmpSSFV0N2dK?=
 =?utf-8?B?NWtDY1NGelhuM0xyWTRTQ0xuejhzMG5iMHoxWEN3bzdhdloxdHMxOHZzN3ZV?=
 =?utf-8?B?eHBGaFNHN2U3QVphRGJzQTV0UjRIamZpMkM3cUZ3NzR0VnVYblhqeElNVVRt?=
 =?utf-8?B?UkJqZjBnUStvTVR4RUlXbjdoRlFEMXhYRTBtNUdBSnJ3aEdlZ2l6N1VyQ08y?=
 =?utf-8?B?WlVKTHc4dkJEdENqdFMweTREdzhka1FDMzNFSWc0UVZRMkdHMGRIRUxOdXBs?=
 =?utf-8?B?UFRtYW5OeWZTb1Q4WVVSandDK3JJR1ppckJsVnk2S0JPSTRPblBOemoyYlpr?=
 =?utf-8?B?eVRLNzN4U1NKT3pJcEJKczhUSDZ1dnFlWEl1dElOS2ZpYmFUa3dCblNJb0wy?=
 =?utf-8?B?TWNyN1BoQS83MW01UXB6bjZ0c0xBNkUyN3RSSUFBTFBadWI1SWtpSXpETjdr?=
 =?utf-8?B?KzRCdFpEa1JjeGNGdG9KTDZqVHBaRWoxNldtUk81aXk3QzNqdENqUE9vakZW?=
 =?utf-8?B?T1QxaUZpU1FyWjBveHgyNXM1VXB2WWwxQlVPelRRZENjTmNvaGR3UEtiRGF1?=
 =?utf-8?B?dG1OOFdYTElFVVRHck5EUXV2Z1VsRklzMm4va1RRYTFFbm03N2s0NlNVZHRX?=
 =?utf-8?B?WExrV3VLV09UVjN0NGNEWVcwQi9xZVIrekxuVmxzNXdZMkVNcWpUYTMvVEx6?=
 =?utf-8?B?U01oNE0zNmdkTFZ1SHBHQ095TUVCZlBEU0ZNUTllVURXSks1UnhaWU4ra3VF?=
 =?utf-8?B?RXJZSjdTVnJYK3NHUVN0NG5ZMXNDOW4yOWZ1UUVxV1JiWTVjZmc3N0NLVVFa?=
 =?utf-8?B?MkZ1TU9NaFpvZG1WWUJxS1VHdlF1ZGdGL1EzSEZqeVVCMG5BK2dxeE5QZ1I4?=
 =?utf-8?B?WlV3SC8xbVhNTk44U2F1SzVlUGFVSzdNOHRVV2FUZXhNeXpnZXJDV1NCN2RY?=
 =?utf-8?B?bHFtZXR1QmZRMzRtVUwrNDR0WVBiU3l4Ujc2NnFSd1lJMlFjSldPaFNKeVh1?=
 =?utf-8?B?ZG5PY2krSU0zMEprMXhIbzFEaG9pUjhuVjYrSzd0Rzd6d1RHUDl0ZEpvNGFV?=
 =?utf-8?B?c1lkdXZwNFpGemdZQ0pRWnNzMzc0K3VZYkJMa0YzbmxQVGxDazIweXROc0Jj?=
 =?utf-8?B?bG1xOHh4TkF3VXY5RDlOV0R4R3pVc2kvOGpteUxEajNzcEtkZmFBR1pGbUNy?=
 =?utf-8?B?TWVTdzR6WCtFd0tManNjQmhOUDJGenVNdEFCOThSZEs1SHVFTXVVZ0QvYjVY?=
 =?utf-8?B?VW9TQ1lUeHZWaDBxanNNZWhqcGUwdTdyUkwzK216NCs2ZEtoaDdZQVJPRXpu?=
 =?utf-8?B?VCtSeTNBOVlZQnpsOVdHdz09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?S3o0V1UzOWF3MWh5ckh4ZEFBT1Jvdjliay9yNExrZm9zaGc5L2pYeFI2NDY3?=
 =?utf-8?B?eTlHaDFGR2Q3L0J6ZUpieXBVemZYS2hoeUFXTGlsQSt5Nm5STWQ5eE5pN1hZ?=
 =?utf-8?B?WWtLbHZXTEpQUVZ3VUp2S1dySWRyUDMySjRoSFdURmdINi9YTlBEU1dtV29z?=
 =?utf-8?B?YzMrUUdpUEV3NExEaXVzWlBhcExYY2tIc3p3OWNxVTN2NFFYeGlWYUtyMTV0?=
 =?utf-8?B?eFpSMVJpYVZCb3g4M01uTmlGUGQ0Ly9QQzRONmgyN2JPak01UDFhZXFuVitw?=
 =?utf-8?B?a2MreEdRK3N6d0xPOUc5TmpJSHloaUJ1WFlNS2dIVFI3aEwzcWtkYy85Sks3?=
 =?utf-8?B?d1oxMUEzejdzTERIdjFkYnhWMnc2Rm9ma25VU1YxL1Rqb0dkQTJvWEhrUGFY?=
 =?utf-8?B?ZUNoYUVsd05DZFFweWMyYy9rTk5obmtJQk1aU2VVN05kT0s0RkRRdTZLRGtu?=
 =?utf-8?B?S1dFWmhDcDNXNVlTN2VhUnR6ZUZGR1pWSkFJa0gvWW9BcUxtOVFBR2hOODU4?=
 =?utf-8?B?bGR3WHFyd2xxT1BDK29ocnRFMlI2TC9IMFBwN2d4WXVONEk3VUtUaTRBeHl0?=
 =?utf-8?B?bHVqSmVyMk9zQ3pHVGVkcXFsSzY1eW1tcGlxamVQRVpJQVV3ZllPd21tcWx3?=
 =?utf-8?B?K2lpaklmOUkrZjlFMHh4NkdKR2srZzJvR2phOUd2N2tCSzcwcnJ0bFNxZmNL?=
 =?utf-8?B?bmt5Mit5ZmJ0QktWNm5rZXM1Qk52NGRhakQ2Rm1GWkxjZ1Y5RERQdTdUbkJp?=
 =?utf-8?B?R21hTnJNZ0lHTFJvcFI0bHdrd3BFaWRzYVRuVlBRL0twTUc3WHU0aytzdnEy?=
 =?utf-8?B?RWkxbTJyaEZibndPTDc4VGRRaC90SzUxTW5JcFZzeXBER0lIMFF2bkw4SFgz?=
 =?utf-8?B?VUxjZmFHWENUYVNzZEFpSGhSUWJ5TnlNU1AvY2Z0ZERnbXM4ajR1N2RucXFS?=
 =?utf-8?B?QlI2bmxRZVhUY3pPekNWdmt4NDkralJXT05Fdlg0NTB0OHhROGxnbzNGSlda?=
 =?utf-8?B?MUxUeExnQkFBa3E2MkRpZUN4cXNLRVhLVWROeWRjUWZxald0c1VJajJBQmZK?=
 =?utf-8?B?WDdpaVlPNTVlNW1pN2lNVGVVbjVmL3NJam5tKzBtWmZxUVhPRjhFWFpxbVo2?=
 =?utf-8?B?N1R1U3B1RCtJUkZyWHE4bllIMDJ4L3gzQ1J4c1JDUnZXamJ0TC9LbVVER25P?=
 =?utf-8?B?MTlpcTFhNWtiZGdvYnkvdS9CTWh6TTBnK3E2T3dIdExrQVRFZGtiaXVVS0hY?=
 =?utf-8?B?bGtBb1phREt2bnp4TkVLNFZiMkVxaHA5Nys3dWhNbVpRejU4b0t6ZGF2bERk?=
 =?utf-8?B?Um9oVWZ1WHQrbUFQZlR4NHlFdUpXYWUrYXV6d0U2MzFKRjdpbzZZalE5YW9C?=
 =?utf-8?B?VVhuY25UL3RVQVVNZUtVaENkZGtnQnRTUEJEZmtDVFFqbnA4T3o2MnduNGpX?=
 =?utf-8?B?REtERG5yd0xLNWdZeEpYRWtRdmJiQzBVVnZ4NHdJVTNZd2JjVnd0emhIN2Rp?=
 =?utf-8?B?L0pjSm16UWl0YUFJREhqN1NaNFRIVUxEMExTL3RCaUtyV2Y1cThZb2N6NFpC?=
 =?utf-8?B?TUhFTVFxMDBXc3FCN05vUFJZZU54YWVvQjdkTDNIYWlEZDZLM2VoRkJxWUc4?=
 =?utf-8?B?V2g1bVpxckVNSnoxdlF3dHNkTExsVDE2NlhyQnlpdm4rcFNJYWpNaG55WkdR?=
 =?utf-8?B?M0ZWejNRT2ZVUVRHNkI5bCtDQkVnK1FIeW9kc0FicWtURFdLcjBXOEdEdnpG?=
 =?utf-8?B?U2JOZmw5c2lmS1Nvb0RsQXF2YlN5TXI4OGxETzF6cE9jMGJzRnhJL0x4RjJp?=
 =?utf-8?B?QlAxdjNudzI5NWZLV1lXUE91aDlyRlY4ZVdvMnd1M0tBTUxCNFVwOGdENW94?=
 =?utf-8?B?ajh0aUV0cGluMnhPQjlwOUpOWkdCNUhBMDJOajZQMDNDQUtIRUl2SWNDTktq?=
 =?utf-8?B?WGdzb3dXMFpkanlHL3lvR0xzQ3F2ek1QQjZaalBsRXArWFVhYUhqWjhxMGh1?=
 =?utf-8?B?eEFRNUVocVo4WjIvdlQxRXFwZ3YwZjdFelJkQ0xhcEp6bUFXelMySmVzcmtL?=
 =?utf-8?B?S2NvNVAzbUk0M0NmV3pweWsyN0FqVG9KNWg4ckdVbkJJWEhSc1hCd3JDNG1L?=
 =?utf-8?Q?JwsVvE/iygka9BKuLRvoojdD7?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7b9bee5e-e3ef-4f57-3db7-08dc6544b9d3
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Apr 2024 16:28:22.9532 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: njDizLU9Du70oDad2oThuo3nrD/oH8bPGZs+Aimf7EVVO/bwRBNf8Sq5VmVIV/nTm3xVmB6+SW/C/kRna7gUS6FMEibmvXeanbZOPvqQO4M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7997
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714062508; x=1745598508;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Q3/RKcCOKFhL8GoAlCQeDSuurZN1fQLA/ZqMhciE5Cc=;
 b=Me4g30IptSNfM1K/K/jXQKOT5s+lOTpsQwOSJnc/6rMZ6abpguZCqdVh
 SCfNpGmhAoR6TfFAD4pq2aqAd56ZApSTvHd6zSRjA3sIZHcSNIIkf/3LV
 luBq2671SKu+z8BPFN7t0K8xs9EXKD+s/RlrMADchIhqQ/oVmx9uoWO6m
 CDL/tcYwEC8ypYZyXypXhR1cn4lJS5WWJ6gSKnI4ogKljZT/Ye4OY3HrZ
 Bb4d0Xq77i3BgPyqDRDTt4lPFEIPmX2/HyOvsSgoh1PulUaK63h2XO708
 6xMOOX1jgypkAzDHRvv9cuJb2Z0zJ6v4l6RVaJPY3fmW2bBdWgliE/NoI
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Me4g30Ip
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 08/12] iavf: periodically
 cache PHC time
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: "Drewek, Wojciech" <wojciech.drewek@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "horms@kernel.org" <horms@kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogS2l0c3plbCwgUHJ6ZW15
c2xhdyA8cHJ6ZW15c2xhdy5raXRzemVsQGludGVsLmNvbT4NCj4gU2VudDogVGh1cnNkYXksIEFw
cmlsIDI1LCAyMDI0IDM6NTIgQU0NCj4gVG86IEtlbGxlciwgSmFjb2IgRSA8amFjb2IuZS5rZWxs
ZXJAaW50ZWwuY29tPjsgUG9sY2hsb3BlaywgTWF0ZXVzeg0KPiA8bWF0ZXVzei5wb2xjaGxvcGVr
QGludGVsLmNvbT47IFJhaHVsIFJhbWVzaGJhYnUNCj4gPHJyYW1lc2hiYWJ1QG52aWRpYS5jb20+
DQo+IENjOiBpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZzsgbmV0ZGV2QHZnZXIua2Vy
bmVsLm9yZzsgaG9ybXNAa2VybmVsLm9yZzsNCj4gTmd1eWVuLCBBbnRob255IEwgPGFudGhvbnku
bC5uZ3V5ZW5AaW50ZWwuY29tPjsgRHJld2VrLCBXb2pjaWVjaA0KPiA8d29qY2llY2guZHJld2Vr
QGludGVsLmNvbT4NCj4gU3ViamVjdDogUmU6IFtJbnRlbC13aXJlZC1sYW5dIFtQQVRDSCBpd2wt
bmV4dCB2NSAwOC8xMl0gaWF2ZjogcGVyaW9kaWNhbGx5IGNhY2hlDQo+IFBIQyB0aW1lDQo+IA0K
PiBPbiA0LzI1LzI0IDAwOjAzLCBLZWxsZXIsIEphY29iIEUgd3JvdGU6DQo+ID4NCj4gPg0KPiA+
PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiA+PiBGcm9tOiBQb2xjaGxvcGVrLCBNYXRl
dXN6IDxtYXRldXN6LnBvbGNobG9wZWtAaW50ZWwuY29tPg0KPiA+PiBTZW50OiBNb25kYXksIEFw
cmlsIDIyLCAyMDI0IDI6MjMgQU0NCj4gPj4gVG86IFJhaHVsIFJhbWVzaGJhYnUgPHJyYW1lc2hi
YWJ1QG52aWRpYS5jb20+DQo+ID4+IENjOiBpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9y
ZzsgbmV0ZGV2QHZnZXIua2VybmVsLm9yZzsNCj4gaG9ybXNAa2VybmVsLm9yZzsNCj4gPj4gTmd1
eWVuLCBBbnRob255IEwgPGFudGhvbnkubC5uZ3V5ZW5AaW50ZWwuY29tPjsgS2VsbGVyLCBKYWNv
YiBFDQo+ID4+IDxqYWNvYi5lLmtlbGxlckBpbnRlbC5jb20+OyBEcmV3ZWssIFdvamNpZWNoIDx3
b2pjaWVjaC5kcmV3ZWtAaW50ZWwuY29tPg0KPiA+PiBTdWJqZWN0OiBSZTogW0ludGVsLXdpcmVk
LWxhbl0gW1BBVENIIGl3bC1uZXh0IHY1IDA4LzEyXSBpYXZmOiBwZXJpb2RpY2FsbHkgY2FjaGUN
Cj4gPj4gUEhDIHRpbWUNCj4gPj4NCj4gPj4NCj4gPj4NCj4gPj4gT24gNC8xOC8yMDI0IDk6NTEg
UE0sIFJhaHVsIFJhbWVzaGJhYnUgd3JvdGU6DQo+ID4+PiBPbiBUaHUsIDE4IEFwciwgMjAyNCAw
MToyNDo1NiAtMDQwMCBNYXRldXN6IFBvbGNobG9wZWsNCj4gPj4gPG1hdGV1c3oucG9sY2hsb3Bl
a0BpbnRlbC5jb20+IHdyb3RlOg0KPiA+Pj4+IEZyb206IEphY29iIEtlbGxlciA8amFjb2IuZS5r
ZWxsZXJAaW50ZWwuY29tPg0KPiA+Pj4+DQo+ID4+Pj4gVGhlIFJ4IHRpbWVzdGFtcHMgcmVwb3J0
ZWQgYnkgaGFyZHdhcmUgbWF5IG9ubHkgaGF2ZSAzMiBiaXRzIG9mIHN0b3JhZ2UNCj4gPj4+PiBm
b3IgbmFub3NlY29uZCB0aW1lLiBUaGVzZSB0aW1lc3RhbXBzIGNhbm5vdCBiZSBkaXJlY3RseSBy
ZXBvcnRlZCB0byB0aGUNCj4gPj4+PiBMaW51eCBzdGFjaywgYXMgaXQgZXhwZWN0cyA2NGJpdHMg
b2YgdGltZS4NCj4gPj4+Pg0KPiA+Pj4+IFRvIGhhbmRsZSB0aGlzLCB0aGUgdGltZXN0YW1wcyBt
dXN0IGJlIGV4dGVuZGVkIHVzaW5nIGFuIGFsZ29yaXRobSB0aGF0DQo+ID4+Pj4gY2FsY3VsYXRl
cyB0aGUgY29ycmVjdGVkIDY0Yml0IHRpbWVzdGFtcCBieSBjb21wYXJpc29uIGJldHdlZW4gdGhl
IFBIQw0KPiA+Pj4+IHRpbWUgYW5kIHRoZSB0aW1lc3RhbXAuIFRoaXMgYWxnb3JpdGhtIHJlcXVp
cmVzIHRoZSBQSEMgdGltZSB0byBiZQ0KPiA+Pj4+IGNhcHR1cmVkIHdpdGhpbiB+MiBzZWNvbmRz
IG9mIHdoZW4gdGhlIHRpbWVzdGFtcCB3YXMgY2FwdHVyZWQuDQo+ID4+Pj4NCj4gPj4+PiBJbnN0
ZWFkIG9mIHRyeWluZyB0byByZWFkIHRoZSBQSEMgdGltZSBpbiB0aGUgUnggaG90cGF0aCwgdGhl
IGFsZ29yaXRobQ0KPiA+Pj4+IHJlbGllcyBvbiBhIGNhY2hlZCB2YWx1ZSB0aGF0IGlzIHBlcmlv
ZGljYWxseSB1cGRhdGVkLg0KPiA+Pj4+DQo+ID4+Pj4gS2VlcCB0aGlzIGNhY2hlZCB0aW1lIHVw
IHRvIGRhdGUgYnkgdXNpbmcgdGhlIFBUUCAuZG9fYXV4X3dvcmsga3RocmVhZA0KPiA+Pj4+IGZ1
bmN0aW9uLg0KPiA+Pj4NCj4gPj4+IFNlZW1zIHJlYXNvbmFibGUuDQo+ID4+Pg0KPiA+Pj4+DQo+
ID4+Pj4gVGhlIGlhdmZfcHRwX2RvX2F1eF93b3JrIHdpbGwgcmVzY2hlZHVsZSBpdHNlbGYgYWJv
dXQgdHdpY2UgYSBzZWNvbmQsDQo+ID4+Pj4gYW5kIHdpbGwgY2hlY2sgd2hldGhlciBvciBub3Qg
dGhlIGNhY2hlZCBQVFAgdGltZSBuZWVkcyB0byBiZSB1cGRhdGVkLg0KPiA+Pj4+IElmIHNvLCBp
dCBpc3N1ZXMgYSBWSVJUQ0hOTF9PUF8xNTg4X1BUUF9HRVRfVElNRSB0byByZXF1ZXN0IHRoZSB0
aW1lDQo+ID4+Pj4gZnJvbSB0aGUgUEYuIFRoZSBqaXR0ZXIgYW5kIGxhdGVuY3kgaW52b2x2ZWQg
d2l0aCB0aGlzIGNvbW1hbmQgYXJlbid0DQo+ID4+Pj4gaW1wb3J0YW50LCBiZWNhdXNlIHRoZSBj
YWNoZWQgdGltZSBqdXN0IG5lZWRzIHRvIGJlIGtlcHQgdXAgdG8gZGF0ZQ0KPiA+Pj4+IHdpdGhp
biBhYm91dCB+MiBzZWNvbmRzLg0KPiA+Pj4+DQo+ID4+Pj4gUmV2aWV3ZWQtYnk6IFdvamNpZWNo
IERyZXdlayA8d29qY2llY2guZHJld2VrQGludGVsLmNvbT4NCj4gPj4+PiBTaWduZWQtb2ZmLWJ5
OiBKYWNvYiBLZWxsZXIgPGphY29iLmUua2VsbGVyQGludGVsLmNvbT4NCj4gPj4+PiBDby1kZXZl
bG9wZWQtYnk6IE1hdGV1c3ogUG9sY2hsb3BlayA8bWF0ZXVzei5wb2xjaGxvcGVrQGludGVsLmNv
bT4NCj4gPj4+PiBTaWduZWQtb2ZmLWJ5OiBNYXRldXN6IFBvbGNobG9wZWsgPG1hdGV1c3oucG9s
Y2hsb3Bla0BpbnRlbC5jb20+DQo+ID4+Pj4gLS0tDQo+ID4+Pj4gICAgZHJpdmVycy9uZXQvZXRo
ZXJuZXQvaW50ZWwvaWF2Zi9pYXZmX3B0cC5jIHwgNTINCj4gKysrKysrKysrKysrKysrKysrKysr
Kw0KPiA+Pj4+ICAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lhdmYvaWF2Zl9wdHAuaCB8
ICAxICsNCj4gPj4+PiAgICAyIGZpbGVzIGNoYW5nZWQsIDUzIGluc2VydGlvbnMoKykNCj4gPj4+
Pg0KPiA+Pj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pYXZmL2lh
dmZfcHRwLmMNCj4gPj4gYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pYXZmL2lhdmZfcHRw
LmMNCj4gPj4+IDxzbmlwPg0KPiA+Pj4+ICsvKioNCj4gPj4+PiArICogaWF2Zl9wdHBfZG9fYXV4
X3dvcmsgLSBQZXJmb3JtIHBlcmlvZGljIHdvcmsgcmVxdWlyZWQgZm9yIFBUUCBzdXBwb3J0DQo+
ID4+Pj4gKyAqIEBwdHA6IFBUUCBjbG9jayBpbmZvIHN0cnVjdHVyZQ0KPiA+Pj4+ICsgKg0KPiA+
Pj4+ICsgKiBIYW5kbGVyIHRvIHRha2UgY2FyZSBvZiBwZXJpb2RpYyB3b3JrIHJlcXVpcmVkIGZv
ciBQVFAgb3BlcmF0aW9uLiBUaGlzDQo+ID4+Pj4gKyAqIGluY2x1ZGVzIHRoZSBmb2xsb3dpbmcg
dGFza3M6DQo+ID4+Pj4gKyAqDQo+ID4+Pj4gKyAqICAgMSkgdXBkYXRpbmcgY2FjaGVkX3BoY190
aW1lDQo+ID4+Pj4gKyAqDQo+ID4+Pj4gKyAqICAgICAgY2FjaGVkX3BoY190aW1lIGlzIHVzZWQg
YnkgdGhlIFR4IGFuZCBSeCB0aW1lc3RhbXAgZmxvd3MgaW4gb3JkZXIgdG8NCj4gPj4+PiArICog
ICAgICBwZXJmb3JtIHRpbWVzdGFtcCBleHRlbnNpb24sIGJ5IGNhcmVmdWxseSBjb21wYXJpbmcg
dGhlIHRpbWVzdGFtcA0KPiA+Pj4+ICsgKiAgICAgIDMyYml0IG5hbm9zZWNvbmQgdGltZXN0YW1w
cyBhbmQgZGV0ZXJtaW5pbmcgdGhlIGNvcnJlY3RlZCA2NGJpdA0KPiA+Pj4+ICsgKiAgICAgIHRp
bWVzdGFtcCB2YWx1ZSB0byByZXBvcnQgdG8gdXNlcnNwYWNlLiBUaGlzIGFsZ29yaXRobSBvbmx5
IHdvcmtzIGlmDQo+ID4+Pj4gKyAqICAgICAgdGhlIGNhY2hlZF9waGNfdGltZSBpcyB3aXRoaW4g
fjEgc2Vjb25kIG9mIHRoZSBUeCBvciBSeCB0aW1lc3RhbXANCj4gPj4+PiArICogICAgICBldmVu
dC4gVGhpcyB0YXNrIHBlcmlvZGljYWxseSByZWFkcyB0aGUgUEhDIHRpbWUgYW5kIHN0b3JlcyBp
dCwgdG8NCj4gPj4+PiArICogICAgICBlbnN1cmUgdGhhdCB0aW1lc3RhbXAgZXh0ZW5zaW9uIG9w
ZXJhdGVzIGNvcnJlY3RseS4NCj4gPj4+PiArICoNCj4gPj4+PiArICogUmV0dXJuczogdGltZSBp
biBqaWZmaWVzIHVudGlsIHRoZSBwZXJpb2RpYyB0YXNrIHNob3VsZCBiZSByZS1zY2hlZHVsZWQu
DQo+ID4+Pj4gKyAqLw0KPiA+Pj4+ICtsb25nIGlhdmZfcHRwX2RvX2F1eF93b3JrKHN0cnVjdCBw
dHBfY2xvY2tfaW5mbyAqcHRwKQ0KPiA+Pj4+ICt7DQo+ID4+Pj4gKwlzdHJ1Y3QgaWF2Zl9hZGFw
dGVyICphZGFwdGVyID0gY2xvY2tfdG9fYWRhcHRlcihwdHApOw0KPiA+Pj4+ICsNCj4gPj4+PiAr
CWlhdmZfcHRwX2NhY2hlX3BoY190aW1lKGFkYXB0ZXIpOw0KPiA+Pj4+ICsNCj4gPj4+PiArCS8q
IENoZWNrIHdvcmsgYWJvdXQgdHdpY2UgYSBzZWNvbmQgKi8NCj4gPj4+PiArCXJldHVybiBtc2Vj
c190b19qaWZmaWVzKDUwMCk7DQo+ID4+Pg0KPiA+Pj4gSFogLyAyIG1pZ2h0IGJlIG1vcmUgaW50
dWl0aXZlPw0KPiA+Pj4NCj4gPg0KPiA+IEkndmUgYWx3YXlzIGZvdW5kIGl0IG1vcmUgaW50dWl0
aXZlIHRvIHRoaW5rIGluIHRlcm1zIG9mIG1zZWNzIG15c2VsZiwgYnV0IEhaIC8gMiBpcw0KPiBv
ayBpZiBvdGhlciBmb2xrcyBhZ3JlZS4NCj4gDQo+IEhaLzIgb3IgSFovMyBhcyBhIHRpbWVyIHBl
cmlvZCBjb3VsZCBiZSB1bmRlcnN0b29kIHdpdGhvdXQgdGhpbmtpbmcsIGJ1dA0KPiB0aGUgc2Ft
ZSBzdGFuZHMgZm9yIDQwMG1zLiBQcm9ibGVtcyBzdGFydHMgd2hlbiBvbmUgdGhpbmtzIGFib3V0
IGl0IDspDQo+IA0KPiBGb3IgbWUgSFosIHdoaWNoIGNvdWxkIGJlIGJvdGggbGl0ZXJhbGx5IGFu
ZCBjb2xsb3F1aWFsbHkgdW5kZXJzdG9vZCBhcw0KPiAicGVyIHNlY29uZCIgc2hvdWxkIG5vdCBt
ZWFuIDEwMDBtcyAoanVzdCBldmFsdWF0ZSB0bykuDQo+IDJIeiBpcyBhIGZyZXF1ZW5jeSB3aXRo
IGhhbGYgc2Vjb25kIHBlcmlvZCwgYnV0IDIqSFogZXZhbHVhdGVzIHRvIDIwMDBtcw0KPiB3aGlj
aCBpcyA0IHRpbWVzIG1vcmUgOi8NCj4gDQoNClRoYXTigJlzIHBhcnQgb2Ygd2h5IEkgc3dpdGNo
ZWQgaWNlIG92ZXIgZnJvbSB1c2luZyBIWiBnZW5lcmFsbHkgdG8gdXNpbmcgamlmZmllc190b19t
c2VjIGluIGEgbG90IG9mIGNhc2VzLiBJdCByZWFsbHkgZGVwZW5kcyBvbiB3aGF0IHlvdSBwZXJz
b25hbGx5IGZpbmQgaW50dWl0aXZlLiBUaG9zZSB1c2VkIHRvIHNlZWluZyBhbmQgcmVhZGluZyBI
WiBtYXkgZmluZCBpdCBlYXNpZXIuDQoNClRoYW5rcywNCkpha2UNCg0KPiANCj4gPg0KPiA+IFRo
YW5rcywNCj4gPiBKYWtlDQo+ID4NCg0K
