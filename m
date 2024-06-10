Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02F2C901F10
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Jun 2024 12:16:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id AE14F40613;
	Mon, 10 Jun 2024 10:16:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bkOvDt58DiyK; Mon, 10 Jun 2024 10:16:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 47DD840635
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718014566;
	bh=9FNLybJMuLfN5cjHRCDsfCAzjpK5uEzODwQE4nWRyf0=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ZPwkeoNAL+Vl6+ycX0nxeQAjtylX5UB0P+cRo+qeLtDqwSsqOXigPpEO8DOCyXYf5
	 v9cOD72vC4t1siUuwBy6Z2KMp1fPU2GQX6YSmrYRklrnEgU57Q3fCYtzptfVzgzxLl
	 /10GG+L0gojWK2VUK9WJdRFiBS8PSSLcTfqvn8dC4OmockQB5s8rbp67eKhW7Uw8Zz
	 luVZxVQSdqu0opPhi2W4020QpKmjJYlhRh0YBUIX1E1XoHEvJSYu6qmGgkT4WvThQR
	 TSjcIiuEL+IBz+kmPhluQFtfCQX5fjmjznVd+5vK0t6C5dCekoC3F8HK7nhFxplBE4
	 gsaCrM6rroxLg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 47DD840635;
	Mon, 10 Jun 2024 10:16:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4AF941BF3C8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jun 2024 10:16:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 43603405B8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jun 2024 10:16:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CmSM0vTjQaE9 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Jun 2024 10:16:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org CF0EE40289
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CF0EE40289
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CF0EE40289
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jun 2024 10:16:02 +0000 (UTC)
X-CSE-ConnectionGUID: bbvRlXEaQ6eJUwnXlTB/ig==
X-CSE-MsgGUID: HVtBDzIaSqG5kJ1mlva8jQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11098"; a="14821114"
X-IronPort-AV: E=Sophos;i="6.08,227,1712646000"; d="scan'208";a="14821114"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2024 03:16:02 -0700
X-CSE-ConnectionGUID: 6Gaqm+i9R/ifIVf9gDPG0A==
X-CSE-MsgGUID: VNLfeN8UT3q4QIFh8FiXvQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,227,1712646000"; d="scan'208";a="39139675"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Jun 2024 03:16:01 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 10 Jun 2024 03:16:00 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 10 Jun 2024 03:16:00 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.42) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 10 Jun 2024 03:16:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VwFxHzcL12pZa/l0kVmlUXbUVGGvFXPMznyoYwyfooJkYX9CVpSCL2U0tJNYf58rJdAgknPnrDyLN0X9ZbwPjTmAMC/Oe6q63JZvmOaE2FpSMcJZp7vM9QX0GKbrlb8fRa1DzQPdEnjlKtUUPcadQ71cKOo+p9jri/T+eSV1WmQexYLBhs2lRlFoeAeEAh5O/5A3QQCS40kah0hRXnyckhCEycYNP7dgU3+kNACEGQufn2g/tldCRRCWauNkJuI/2+3i51koW0kUxiRZChya+mlV+sp5fEO4fSss8/ht9U1kCFwTNUZjfTOvIFji4AmbqE2RIF96O6sITkJ8xNAckQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9FNLybJMuLfN5cjHRCDsfCAzjpK5uEzODwQE4nWRyf0=;
 b=E8TSSdQNi3G83MdpCmM191YPCEuXuqN3IVsKks1dIesL5/e6wssx/1+2cQinLRJDt9uMXx7YCbcn8VEueyBhvbKnVvdBNrMBCTDHCJwzoz0IRupydMjdaCzL5yhKiQ3bpwsyRh/FEI+kAKmzpu2FxShf9W1c+rs39T7YWzoI26E5ReBiQtKUUDz1XzmWDFkbmXnzRlBF85SeaQJLIPA9OJbkv6gc5PC7HZamEkids+a5BS3zmYcD4Nh4vSTNicgqCslkOnsPLbZAxlECYsPjXFgAeVq/sTctOPmuCie5JoCX9uhIj0SU2oQYgGHX52eQU4rqUimnVuRZIyHzX/mY+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com (2603:10b6:a03:429::10)
 by DM4PR11MB5972.namprd11.prod.outlook.com (2603:10b6:8:5f::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7633.21; Mon, 10 Jun 2024 10:15:58 +0000
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::265f:31c0:f775:c25b]) by SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::265f:31c0:f775:c25b%4]) with mapi id 15.20.7633.036; Mon, 10 Jun 2024
 10:15:58 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>, "Kang, Kelvin" <kelvin.kang@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net] i40e: fix hot issue NVM
 content is corrupted after nvmupdate
Thread-Index: AQHauxePZUIIvyLVckGO394neDxrc7HAv52AgAAHF5CAAAE3YA==
Date: Mon, 10 Jun 2024 10:15:58 +0000
Message-ID: <SJ0PR11MB5866699ABC33C1DDCD86A3D7E5C62@SJ0PR11MB5866.namprd11.prod.outlook.com>
References: <20240610092051.2030587-1-aleksandr.loktionov@intel.com>
 <a2ad5189-10d1-4e6b-8509-b1ce4e1e7526@molgen.mpg.de>
 <SJ0PR11MB5866360BDA97A03298A4A637E5C62@SJ0PR11MB5866.namprd11.prod.outlook.com>
In-Reply-To: <SJ0PR11MB5866360BDA97A03298A4A637E5C62@SJ0PR11MB5866.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5866:EE_|DM4PR11MB5972:EE_
x-ms-office365-filtering-correlation-id: 63202845-3df9-4f2d-7357-08dc8936526b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|366007|376005|1800799015|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?REFwMnFZQk1wejZOYjZHcHA1b2pYM3FOOCtmcnk5RjF2aWZsK3R6KzJ0Slg0?=
 =?utf-8?B?YTBsQ01yMjFWTXRQTTlza1UxOTl0bEtmNWk3enJRTEgxV0JkM0pMUGd4UWQz?=
 =?utf-8?B?M2RIWUo1eGZNMkowaFpVcENWaWJWT2wybndTREs2UW9NR0ZwUTgwbW1TWklP?=
 =?utf-8?B?RTdxeGw5K2phaUhXaWt3Yms0UXVLbUdVdk9BcEFxbkdPWGw0bWU5QkFyV3lq?=
 =?utf-8?B?V2dBa0FIWUtVYjd5Y2ZZYWU1NmlkOG1pY2s0Tm5pL050RjdjNEdLYUlnZFJs?=
 =?utf-8?B?VTNuRkJQRWg0M3U4UUVBUE83T0xzQ05MQnU1Y3N0QXpWa3dhK3lRTjN5THFE?=
 =?utf-8?B?czllZ2hJTzBDUmtwaU8zNDRGSVV5ZFQrL3k2RmM2b3gvdFI3ays1QSsvaDdS?=
 =?utf-8?B?SmRVKzdjRWhFTWV0NFNueUZzZzZ6U0txQ25RWnd1eWpnRzJmMFJ1b1ZscmxR?=
 =?utf-8?B?NjhNbjB1VVdQNUdHZ2dRMlB6MGVmcDR3cFVDSGZNYWNpOUM0NVkrWnhzdjNu?=
 =?utf-8?B?RTFBYnlWN0VFSEkyNGVpV09rRTlHNzA1WUlxNUVIdlg2Y3JRTStaWm5zYkIy?=
 =?utf-8?B?MXhqaTJzSmpyMTRJU1NLdGRuMG5IaGNwUDEzanVzV3ROQVFVeXl3Szh0RGc4?=
 =?utf-8?B?V1FpV2FrTWo3TWVjU1NsdmZDV1VzU25sMnJCRWJFVlhIdkxLejN2di9IZUZj?=
 =?utf-8?B?Y2lTaDEvdmM3ZDJCdHNYeW12YzZTN05PSUlwZlE5NUNQTUNSaE1mYkJxeG5h?=
 =?utf-8?B?QVlBVUwxZ29ESVlYd1BZemxUdGk5bVlOSGYxQUpTYk05L2tJbkVjUUtBck96?=
 =?utf-8?B?c05zMVcxc0g1MWJuQmZTVFBmQlJQUlE3YVcwenUybXZxQVhSNEk5OXZpZHJF?=
 =?utf-8?B?aGhuVS9DcGkyRjRIL3FlMjdqd3h0Ym1BeG1tRHlsbXhFODljZzA3SngzWmFy?=
 =?utf-8?B?REVxUURUQk9idzFWaWk1MkRmaGM5U241ZFFVNHg5OXZsZmd0YUpTeldvYkJm?=
 =?utf-8?B?Z3AyWUZoNHFLd3BYZTR5M0R1dlJYM1Y4YVZDVk5wKzdVK09kY3hTUC81MXg4?=
 =?utf-8?B?SFNiTXcwTmJkaVowR0lTUDl5S1hhVTR1TDFmYkFsdXZTd01WRmFvSVcxVlg0?=
 =?utf-8?B?VGFVWGJnVFVGN1JUaHNMZ2dURGM4bWdocERTOWVOUlUrSEpySEY5TGpxSjlZ?=
 =?utf-8?B?QXJHeGc3T2s3TFZNUHhBaWtXaVM2ZTN0L0QxZStIdC9XdFI5aDVRZ2RFWnV0?=
 =?utf-8?B?QUpIYnBqWGtvN1MyVjJLY0xFWkxWOXVIb0R2L2Fva2JGQy9zS3RiUVhKTC9m?=
 =?utf-8?B?VDVlMDhoK2p1dlhQVVl6VEk2aGFPTExvMVZzU3J0dFlqQk1sM2k4TllrbnZr?=
 =?utf-8?B?MjZ4NytBL2gwbnNlOWRHZjBybHNoMW10cVZpbyt1MzNiSzY5WUZKRXlabm9F?=
 =?utf-8?B?UW1RRjRLK3Fwd3picHJDMllQQkszQlEzeERZS25FZEllbFQxaStuQ0wwTDZW?=
 =?utf-8?B?MmtMbzVWek1RbmlTUmNXK3RHQ0hIb3liWE9hVG1WSUFXNyt0S2RNVjdmeEtL?=
 =?utf-8?B?UkpnL3lGdVdXTVNuOVdaQnNMdXhESDJ5Tm00blBwUDFsemkyNHkxeFpMNWNr?=
 =?utf-8?B?Z3hHVXNhVE1BNTh3YTJvVjZtMkxMbUFLaFZIYTVHeHNDTjV0Y0Z4cE5wemNy?=
 =?utf-8?B?d01WTGJQNHhYNGVNQTJtS2ptV2wvbHRLcTVSYXFTUThtdVhLYi9YUjRRd1Bi?=
 =?utf-8?B?RlJrcElGcVBWNDZOU2pkMTBHMjJIZHd3NHNiOWthK2FLV21sdk9GcDEzcVUx?=
 =?utf-8?Q?rgsTl0hRs9HWthoX7d4guXDdkcjs2gp9JoOaw=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5866.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?V3h4dmowb2JJT05Ec2llYVdlbUR3dTRSaVc4aWx2Ym5aQzdkRzJab011Rmh4?=
 =?utf-8?B?K1A5S2NhNFpTR3JQWE1rYnpxVTBKQkQzQzBxbUczVlcvSFdIQXBFbE5GQ3ZT?=
 =?utf-8?B?NkZUZU44VFZ0R2xIRmdxcVF1U0xBT0cxT2lkK1AxMFBuQnBaWCtjTUZaaDJM?=
 =?utf-8?B?V1VYN05EU0l1MHpNUG9NZ0h5R1NmM1FGbmtYUXRTNE1zMTB0R3p5QzRvTEk1?=
 =?utf-8?B?R0dpZ1p4cVhjTFV0WlBic1NPOU8zRmpRQXdGcDMxQkhBR0IyQ2o5NFpTelZ5?=
 =?utf-8?B?Y1lkMm4yZWprRVJ0WkFua2tFTzBMQkNjOUl5b0VMS1lmM2VTbGpySnd2VWZl?=
 =?utf-8?B?VStSM3RRQkRoTjJmQ0ZnS1h6Nm02RWRnR21wN0xVR1hlSnBXeFJTYUxvWE9F?=
 =?utf-8?B?bUVWZnI3OFdNQzVUNStrK05OMTIvSkd2bGpJNEFpUXY3MHlZaVF2cWQxY2NN?=
 =?utf-8?B?YUE4cHp6aU5rUjZEa0dxamsvSGdwK2J6bENLV3o2V0ZqS1BIaWFUVVJRRmM1?=
 =?utf-8?B?cWZwbEhxek9Zc2tYaS92N0UvUktoS2lwdjhZSVUycFVpRTczZThUU0NCYjhE?=
 =?utf-8?B?bjNmZEkxVWpzVHk0K0UwUHdnSThSTi9WWFAxRFAxeGoyY2ZScGFoNUNmSko5?=
 =?utf-8?B?SDlQZkx5N0RzTzdzRStFREZ6UFV1VFc4eWNEMmp3Z0loZWlMQ0daVmtTTmts?=
 =?utf-8?B?RklxQVp2YTFxbkpXTFlsL3JpMHFJekw0RmJ4TlFkVDUyMzBYdm5SQ09QNytm?=
 =?utf-8?B?c1k4bFFtZmh2aTdEbkwxcHBXWC8zdGJMK2RkTHZZd0lyaXQ1Nmt2UTNyUTgr?=
 =?utf-8?B?cmtPOSsyN01IUUlNWkFEMmNhOU9lbEI5c0pCaFNaWkl3UWE3MDk3NUgvd1NF?=
 =?utf-8?B?dXdxL29ERGVmbVA5M2dDUzQwemtLcmk3TFhmN1I3NThIR2F3ZTVNcllUUUxS?=
 =?utf-8?B?S1NnaUZOcWU4cXg0eHdtcUtjN0lEMXFRdGhML2pMclczWjliVkVhbmg5R2ZV?=
 =?utf-8?B?UExpNXRyYjRZVWwvOEd1alhqa1dYYnBEMGxWa3M1Q0JXbkwza2pCc08ydFhu?=
 =?utf-8?B?cDJFbmpQZlJ2ajNRZWlHRGducEJkQ2taQUdUSm5GazBVOS82alBwWXBrdlI0?=
 =?utf-8?B?bEV3bGYzN2ZPV1d0NmdXc3hTU1ZoNFloQVJBSTdrUmMrMjB2aTk4ZWJyZmZI?=
 =?utf-8?B?QjUwbmNqVFJjV3pHLzJhMU9iUUZKMzM1QVNReTNJSWdEKzI5Y0VqQTdTNE5Z?=
 =?utf-8?B?eDlmdFpaYmFVUitNY2tWUTR6Q2RlTmdIYWZOLzNtNjZvVTg4VU0rcGFXb2pk?=
 =?utf-8?B?TDN5Vnl2ZjhkTkpVNjR1d1RHRWYxZDdmT3JVeTFuTTRlbnZjRWQ4TjUzaDdK?=
 =?utf-8?B?YW14ZXBzNHJ2MFpKOTlqTG9XSlRMS0R5Yk5EMmhNY2ZyMnpUbFA1QmlXUUc5?=
 =?utf-8?B?NXBTeFdVMC9uaGJLZDNtMHhRT05DYmZ0YWF5Z2JDenR2Tk01OXlMSitGOGto?=
 =?utf-8?B?OTVWb29GL01peTRLL2lxWm1kTlB4eFJEdVZ3WjRCcUE4N3V3Y1cwaXBsWVBq?=
 =?utf-8?B?OGM4L09UMGFYc1pidXI1OVZpZnhSU094K2FOYjF4cnZWeHp5Q1FBWUZUb1R1?=
 =?utf-8?B?N1JBWjdteXNnYUpKWXNnODQyN2prK2dFa0NodEtjV0hmWExpU0pnUlFjSEdZ?=
 =?utf-8?B?MlVuTVppUUJCWE1yZmsvRE5jNjlNcXVBakVHNHFrMUt2RzlhMXM2OUxBMmU4?=
 =?utf-8?B?ekwyMElHazNRV0tDSFR4eGQyMUJNbWVySGFqZXlsYzhTaXpaR0Z4MnBvVk8w?=
 =?utf-8?B?MFRCanA0cFF6di9sRFh1cVB5RDU1VTduQW1tL0pGRmFBbFMzc3VUU1JZMmlD?=
 =?utf-8?B?TmIrT013dFZNL3VZdjBJWVY5bVBwVDcwR3Rna3ArKzZabHNrQWdhdnloK0tF?=
 =?utf-8?B?N2p5ZWQ1cTAxWlAyY0ZLTkFsZm96emZ6K0lPYXhqRkIrWDFPa0dUVjZvZ1ho?=
 =?utf-8?B?anpYOGt0VTFQVkJhRXNGUW9kcEd1RGlOT3pwSjhKZnpOeTkwc3BLWW9wMWo3?=
 =?utf-8?B?WlNRU0toeko2Nnk2WjBxajd6N2ZQVmQ0dEt5MFR0T2FZazJIYjhaSmZaU21W?=
 =?utf-8?B?K1EyQ0pIMWdXTDRaRG1OMk45RkdOeEQ1NEorTHIweE1NOFhCVXg1bTVLbHpG?=
 =?utf-8?B?NVE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5866.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 63202845-3df9-4f2d-7357-08dc8936526b
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jun 2024 10:15:58.3333 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: I6gpkK5BHvN7fSAxsBSROnHNgpVyK4RLKhyZR5d515hlqdn722x6FIpfa3tGuYvVXa4rZMVoU/o0RMs0kY2+XuZLMfiiTd4b2vMvS/hlkzg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5972
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718014563; x=1749550563;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9FNLybJMuLfN5cjHRCDsfCAzjpK5uEzODwQE4nWRyf0=;
 b=ChAVlH5WLJVoNLk8um93MUAOH+4pxLvYLmacIuLyQpY7aeG8F6jAI94w
 C3UgvjC0UcDEsM5L0Ew/xieCk7uOvprQkMBUluWbVGkhclv6bz88snWUO
 RY8I+pmp/pCdhQixuMPXIshl9++60EUk8iHYXaZtFIeh9v2cuX1RcaIRv
 qxIrU0y1qPzZ2IB/q1CG1uT5N202MRJpR4X4eKvSrxEbwLHoPBYqRf8iJ
 2EDxS1OzTxo9kgkzkTFh+oC47MdQc2l84nJBeKZt1tcQ9Hksg77QUu0op
 KtjDQw43k/NQKYnzXTtM1jldbWQtLwNh52v+2cuQwYFMXT4XaERH+RQ3T
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ChAVlH5W
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] i40e: fix hot issue NVM
 content is corrupted after nvmupdate
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
Cc: "Sokolowski, Jan" <jan.sokolowski@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kubalewski,
 Arkadiusz" <arkadiusz.kubalewski@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Leon Romanovsky <leonro@nvidia.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogTG9rdGlvbm92LCBBbGVr
c2FuZHINCj4gU2VudDogTW9uZGF5LCBKdW5lIDEwLCAyMDI0IDEyOjE0IFBNDQo+IFRvOiBQYXVs
IE1lbnplbCA8cG1lbnplbEBtb2xnZW4ubXBnLmRlPjsgS2FuZywgS2VsdmluDQo+IDxrZWx2aW4u
a2FuZ0BpbnRlbC5jb20+DQo+IENjOiBpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZzsg
Tmd1eWVuLCBBbnRob255IEwNCj4gPGFudGhvbnkubC5uZ3V5ZW5AaW50ZWwuY29tPjsgbmV0ZGV2
QHZnZXIua2VybmVsLm9yZzsgS3ViYWxld3NraSwNCj4gQXJrYWRpdXN6IDxBcmthZGl1c3ouS3Vi
YWxld3NraUBpbnRlbC5jb20+OyBTb2tvbG93c2tpLCBKYW4NCj4gPGphbi5zb2tvbG93c2tpQGlu
dGVsLmNvbT47IExlb24gUm9tYW5vdnNreSA8bGVvbnJvQG52aWRpYS5jb20+DQo+IFN1YmplY3Q6
IFJFOiBbSW50ZWwtd2lyZWQtbGFuXSBbUEFUQ0ggaXdsLW5ldF0gaTQwZTogZml4IGhvdCBpc3N1
ZQ0KPiBOVk0gY29udGVudCBpcyBjb3JydXB0ZWQgYWZ0ZXIgbnZtdXBkYXRlDQo+IA0KPiANCj4g
DQo+ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPiBGcm9tOiBQYXVsIE1lbnplbCA8
cG1lbnplbEBtb2xnZW4ubXBnLmRlPg0KPiA+IFNlbnQ6IE1vbmRheSwgSnVuZSAxMCwgMjAyNCAx
MTo0NSBBTQ0KPiA+IFRvOiBMb2t0aW9ub3YsIEFsZWtzYW5kciA8YWxla3NhbmRyLmxva3Rpb25v
dkBpbnRlbC5jb20+OyBLYW5nLA0KPiBLZWx2aW4NCj4gPiA8a2VsdmluLmthbmdAaW50ZWwuY29t
Pg0KPiA+IENjOiBpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZzsgTmd1eWVuLCBBbnRo
b255IEwNCj4gPiA8YW50aG9ueS5sLm5ndXllbkBpbnRlbC5jb20+OyBuZXRkZXZAdmdlci5rZXJu
ZWwub3JnOyBLdWJhbGV3c2tpLA0KPiA+IEFya2FkaXVzeiA8YXJrYWRpdXN6Lmt1YmFsZXdza2lA
aW50ZWwuY29tPjsgU29rb2xvd3NraSwgSmFuDQo+ID4gPGphbi5zb2tvbG93c2tpQGludGVsLmNv
bT47IExlb24gUm9tYW5vdnNreSA8bGVvbnJvQG52aWRpYS5jb20+DQo+ID4gU3ViamVjdDogUmU6
IFtJbnRlbC13aXJlZC1sYW5dIFtQQVRDSCBpd2wtbmV0XSBpNDBlOiBmaXggaG90DQo+IGlzc3Vl
IE5WTQ0KPiA+IGNvbnRlbnQgaXMgY29ycnVwdGVkIGFmdGVyIG52bXVwZGF0ZQ0KPiA+DQo+ID4g
RGVhciBBbGVrc2FuZHIsIGRlYXIgS2VsdmluLA0KPiA+DQo+ID4NCj4gPiBUaGFuayB5b3UgZm9y
IHlvdXIgcGF0Y2guDQo+ID4NCj4gPg0KPiA+IEFtIDEwLjA2LjI0IHVtIDExOjIwIHNjaHJpZWIg
QWxla3NhbmRyIExva3Rpb25vdjoNCj4gPiA+IEFmdGVyIDIzMGYzZDUzYTU0NyBwYXRjaCBhbGwg
SS9PIGVycm9ycyBhcmUgYmVpbmcgY29udmVydGVkDQo+IGludG8NCj4gPiA+IEVBR0FJTiB3aGlj
aCBsZWFkcyB0byByZXRyaWVzIHVudGlsIHRpbWVvdXQgc28gbnZtdXBkYXRlDQo+ID4gc29tZXRp
bWVzDQo+ID4gPiBmYWlscyBhZnRlciBtb3JlIHRoYW4gMjAgbWludXRlcyENCj4gPiA+DQo+ID4g
PiBSZW1vdmUgbWlzbGVhZGluZyBFSU8gdG8gRUdBSU4gY29udmVyc2lvbiBhbmQgcGFzcyBhbGwg
ZXJyb3JzDQo+IGFzDQo+ID4gaXMuDQo+ID4gPg0KPiA+ID4gRml4ZXM6IDIzMGYzZDUzYTU0NyAo
Imk0MGU6IHJlbW92ZSBpNDBlX3N0YXR1cyIpDQo+ID4NCj4gPiBUaGlzIGNvbW1pdCBpcyBwcmVz
ZW50IHNpbmNlIHY2LjYtcmMxLCByZWxlYXNlZCBTZXB0ZW1iZXIgbGFzdA0KPiB5ZWFyDQo+ID4g
KDIwMjMpLiBTbyB1bnRpbCBub3csIG5vYm9keSBub3RpY2VkIHRoaXM/DQo+ID4NCj4gUmVhbGx5
LCByZWFsbHkuIFRoZSByZWdyZXNzaW9uIGFmZmVjdHMgdXNlcnMgb25seSB3aGVuIHRoZXkgdXBk
YXRlDQo+IEYvVywgYW5kIG5vdCBhbGwgRi9XIGFyZSBhZmZlY3RlZCwgb25seSB0aGF0IGdlbmVy
YXRlIEkvTyBlcnJvcnMNCj4gd2hpbGUgdXBkYXRlLg0KTm90IGFsbCB0aGUgY2FyZHMgYXJlIGFm
ZmVjdGVkLCBidXQgdGhlIGNvbnNlcXVlbmNlcyBhcmUgc2Vyb3VzIGFzIGluIHN1YmouDQoNCj4g
DQo+ID4gPiBDby1kZXZlbG9wZWQtYnk6IEtlbHZpbiBLYW5nIDxrZWx2aW4ua2FuZ0BpbnRlbC5j
b20+DQo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBLZWx2aW4gS2FuZyA8a2VsdmluLmthbmdAaW50ZWwu
Y29tPg0KPiA+ID4gUmV2aWV3ZWQtYnk6IEFya2FkaXVzeiBLdWJhbGV3c2tpDQo+ID4gPGFya2Fk
aXVzei5rdWJhbGV3c2tpQGludGVsLmNvbT4NCj4gPiA+IFNpZ25lZC1vZmYtYnk6IEFsZWtzYW5k
ciBMb2t0aW9ub3YNCj4gPiA8YWxla3NhbmRyLmxva3Rpb25vdkBpbnRlbC5jb20+DQo+ID4NCj4g
PiBQbGVhc2UgZ2l2ZSBtb3JlIGRldGFpbHMgYWJvdXQgeW91ciB0ZXN0IHNldHVwLiBGb3IgbWUg
aXTigJlzIGFsc28NCj4gbm90DQo+ID4gY2xlYXIsIGhvdyB0aGUgTlZNIGNvbnRlbnQgZ2V0cyBj
b3JydXB0ZWQgYXMgc3RhdGVkIGluIHRoZQ0KPiA+IHN1bW1hcnkvdGl0bGUuIENvdWxkIHlvdSBw
bGVhc2UgZWxhYm9yYXRlIHRoYXQgaW4gdGhlIGNvbW1pdA0KPiBtZXNzYWdlLg0KPiA+DQo+ID4g
PiAtLS0NCj4gPiA+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX2FkbWlu
cS5oIHwgNCAtLS0tDQo+ID4gPiAgIDEgZmlsZSBjaGFuZ2VkLCA0IGRlbGV0aW9ucygtKQ0KPiA+
ID4NCj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0
MGVfYWRtaW5xLmgNCj4gPiA+IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBl
X2FkbWlucS5oDQo+ID4gPiBpbmRleCBlZTg2ZDJjLi41NWI1YmI4IDEwMDY0NA0KPiA+ID4gLS0t
IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX2FkbWlucS5oDQo+ID4gPiAr
KysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfYWRtaW5xLmgNCj4gPiA+
IEBAIC0xMDksMTAgKzEwOSw2IEBAIHN0YXRpYyBpbmxpbmUgaW50IGk0MGVfYXFfcmNfdG9fcG9z
aXgoaW50DQo+ID4gYXFfcmV0LCBpbnQgYXFfcmMpDQo+ID4gPiAgIAkJLUVGQklHLCAgICAgIC8q
IEk0MEVfQVFfUkNfRUZCSUcgKi8NCj4gPiA+ICAgCX07DQo+ID4gPg0KPiA+ID4gLQkvKiBhcV9y
YyBpcyBpbnZhbGlkIGlmIEFRIHRpbWVkIG91dCAqLw0KPiA+ID4gLQlpZiAoYXFfcmV0ID09IC1F
SU8pDQo+ID4gPiAtCQlyZXR1cm4gLUVBR0FJTjsNCj4gPiA+IC0NCj4gPiA+ICAgCWlmICghKCh1
MzIpYXFfcmMgPCAoc2l6ZW9mKGFxX3RvX3Bvc2l4KSAvDQo+ID4gc2l6ZW9mKChhcV90b19wb3Np
eClbMF0pKSkpDQo+ID4gPiAgIAkJcmV0dXJuIC1FUkFOR0U7DQo+ID4NCj4gPiBUaGUgcmVmZXJl
bmNlZCBjb21taXQgMjMwZjNkNTNhNTQ3IGRvZXM6DQo+ID4NCj4gPiBgYGANCj4gPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX2FkbWlucS5oDQo+ID4g
Yi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfYWRtaW5xLmgNCj4gPiBpbmRl
eCBlZTM5NGFhY2VmNGQuLjI2N2YyZTBhMjFjZSAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL25l
dC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfYWRtaW5xLmgNCj4gPiArKysgYi9kcml2ZXJzL25l
dC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfYWRtaW5xLmgNCj4gPiBAQCAtNSw3ICs1LDYgQEAN
Cj4gPiAgICNkZWZpbmUgX0k0MEVfQURNSU5RX0hfDQo+ID4NCj4gPiAgICNpbmNsdWRlICJpNDBl
X29zZGVwLmgiDQo+ID4gLSNpbmNsdWRlICJpNDBlX3N0YXR1cy5oIg0KPiA+ICAgI2luY2x1ZGUg
Imk0MGVfYWRtaW5xX2NtZC5oIg0KPiA+DQo+ID4gICAjZGVmaW5lIEk0MEVfQURNSU5RX0RFU0Mo
UiwgaSkgICBcDQo+ID4gQEAgLTExNyw3ICsxMTYsNyBAQCBzdGF0aWMgaW5saW5lIGludCBpNDBl
X2FxX3JjX3RvX3Bvc2l4KGludA0KPiBhcV9yZXQsDQo+ID4gaW50IGFxX3JjKQ0KPiA+ICAgICAg
ICAgIH07DQo+ID4NCj4gPiAgICAgICAgICAvKiBhcV9yYyBpcyBpbnZhbGlkIGlmIEFRIHRpbWVk
IG91dCAqLw0KPiA+IC0gICAgICAgaWYgKGFxX3JldCA9PSBJNDBFX0VSUl9BRE1JTl9RVUVVRV9U
SU1FT1VUKQ0KPiA+ICsgICAgICAgaWYgKGFxX3JldCA9PSAtRUlPKQ0KPiA+ICAgICAgICAgICAg
ICAgICAgcmV0dXJuIC1FQUdBSU47DQo+ID4NCj4gPiAgICAgICAgICBpZiAoISgodTMyKWFxX3Jj
IDwgKHNpemVvZihhcV90b19wb3NpeCkgLw0KPiA+IHNpemVvZigoYXFfdG9fcG9zaXgpWzBdKSkp
KQ0KPiA+IGBgYA0KPiA+DQo+ID4gU28gSSBkbyBub3Qgc2VlIHlldCwgd2h5IHJlbW92aW5nIHRo
ZSB3aG9sZSBodW5rIGlzIHRoZSBzb2x1dGlvbi4NCj4gPg0KPiA+DQo+ID4gS2luZCByZWdhcmRz
LA0KPiA+DQo+ID4gUGF1bA0K
