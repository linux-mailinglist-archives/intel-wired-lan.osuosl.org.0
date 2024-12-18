Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id ACD6C9F6A37
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Dec 2024 16:39:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 69D4484E93;
	Wed, 18 Dec 2024 15:39:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CAx2SXqUuvrr; Wed, 18 Dec 2024 15:39:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9C75580C56
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734536394;
	bh=uFLNXt5BGbYu5CR1198ALTYYrQ50p6KHmvb+Uq38kJY=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=4x/QK2yNvOyzP9723RR6twLKCMZShcMhFrcSUKdKym37JlkIkn5akOiawW4rt15ki
	 YVFqRWoS5Hm9/IgLtYL6p9efmE6Ky3qhnDGI2somcOLa2YiyAeTGzSi5CVR43Age1U
	 LtH4Wa8c+VSocqpuny2mVQPRtq5siTTEK9+3dFTNBdQ2GvBGr34ahC1WwAg8mhIH9q
	 mH6BjNEniJEx4dt4Md5iJ0ZbhOpbeNHMtnl5n1bRAQK69tKCrbKxQuGGD+dw4rPKZ/
	 +vMov/f0YbX/pGF7yDkf589TTszvzHMVUQ+Lm/m3UbY9eG+5FpCEpTvHolgzqV0Abm
	 6LKQEWioXhiMA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9C75580C56;
	Wed, 18 Dec 2024 15:39:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 16B1CE3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2024 15:39:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0516640588
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2024 15:39:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id N2Gq1y46MwOg for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Dec 2024 15:39:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=milena.olech@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org DCA92404D7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DCA92404D7
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DCA92404D7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2024 15:39:51 +0000 (UTC)
X-CSE-ConnectionGUID: lkpvuDj0RjirKUqRknJ6UQ==
X-CSE-MsgGUID: HUUQhhGVSOOewhJ/PGJhtg==
X-IronPort-AV: E=McAfee;i="6700,10204,11290"; a="38694339"
X-IronPort-AV: E=Sophos;i="6.12,245,1728975600"; d="scan'208";a="38694339"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2024 07:39:13 -0800
X-CSE-ConnectionGUID: aVFonygqSjOu96rytH1HPQ==
X-CSE-MsgGUID: tJo2H+dRRC+0/67etz+D8Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,244,1728975600"; d="scan'208";a="102904110"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Dec 2024 07:39:13 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 18 Dec 2024 07:39:12 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 18 Dec 2024 07:39:12 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.177)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 18 Dec 2024 07:39:10 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xws9INoh5BW9Pcs1uJKoFEPsIHbkCJ7igJVRP3mYE/xmRED7JaU4Yblmc9xQRMa5/7Qz0ycxMGbd/grv9N/ZkNv+/AYPdcwQV2GHigKoOFIJb8h2rxnC4c0AmMBIZnA38XeXDc8RjJfpBfvPnasrkWJU2K7DV3sXYIf52oAecIDnpph5qY5ekxUldL7EJO2k047AhqEiAFpPuZ1QzIGS1oIvvIS/w0xhLJDL2106yv5jI/wysbecYtFQ/pTtdQgLI3LEp2e4hV84iTjRdkTG31us9U/09ERi/I4CfEq10nlyKURLYO/dY9iyx8FhNGYpChFtCPf/9McGWZzArEfVVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uFLNXt5BGbYu5CR1198ALTYYrQ50p6KHmvb+Uq38kJY=;
 b=RozzPp8u9WePe0Sz+/dTAo4IV9xXuWGEV+qc2lbj5qY1x99JYmJcng9UFGOTqfSpD3BYkrNb5kAnSEFWPpc51mKIdht6Wf8oMb7KLsAd2WOGWezFhpbghoQvxEwl34uCdE2k0cEVPYazJD42sc+3xngDspj1OCHOfOa/Mf7ptl8ThJaNIAVrZLbXOoP4+BzVk050OjxuF39sKopJmxhTgBqsdTQUTHTb8gtcUNhrU0jge0qvfc5s9UpoZIcFqfI7vZ+ty4BZSMv3izjEscw/7vMbBVFN6I5bhA3AyhdGqnx2T4CkUnreI1D+wP5+2x+w/p1lprUPrntN6vXXYoq1HQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5885.namprd11.prod.outlook.com (2603:10b6:510:134::22)
 by CY5PR11MB6283.namprd11.prod.outlook.com (2603:10b6:930:21::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8272.13; Wed, 18 Dec
 2024 15:39:08 +0000
Received: from PH7PR11MB5885.namprd11.prod.outlook.com
 ([fe80::b1f3:809e:5b8a:c46e]) by PH7PR11MB5885.namprd11.prod.outlook.com
 ([fe80::b1f3:809e:5b8a:c46e%6]) with mapi id 15.20.8251.015; Wed, 18 Dec 2024
 15:39:08 +0000
From: "Olech, Milena" <milena.olech@intel.com>
To: Willem de Bruijn <willemdebruijn.kernel@gmail.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Lobakin, Aleksander"
 <aleksander.lobakin@intel.com>
Thread-Topic: [PATCH v2 iwl-next 09/10] idpf: add support for Rx timestamping
Thread-Index: AQHbP/oDGfYSqo72NU6l/mYNuQteJrLObFWAgB3ZXzA=
Date: Wed, 18 Dec 2024 15:39:08 +0000
Message-ID: <PH7PR11MB5885BD1D700903BEFDC0B8FA8E052@PH7PR11MB5885.namprd11.prod.outlook.com>
References: <20241126035849.6441-1-milena.olech@intel.com>
 <20241126035849.6441-10-milena.olech@intel.com>
 <6749e251407f0_23772a2948f@willemb.c.googlers.com.notmuch>
In-Reply-To: <6749e251407f0_23772a2948f@willemb.c.googlers.com.notmuch>
Accept-Language: en-US, pl-PL
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5885:EE_|CY5PR11MB6283:EE_
x-ms-office365-filtering-correlation-id: 55dd4931-a2e2-41e8-1483-08dd1f7a1c87
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?blZBY3E0SWdzdDhjVVpLMXd1THd0cjE5K01tK0YwS0gzZGpaN0JxdTBKdmUy?=
 =?utf-8?B?K3pWakJJYlRrRk1jWXBkWitGU0lJWmNvTjYvRDZHOW1ZNFBxblAxRHhXT2RI?=
 =?utf-8?B?TFhJalNWVnlDNGowR2ZoWUF2QzNsUUxhZUFnbURaYTJnandENGNrTmhaTDRu?=
 =?utf-8?B?anVvZit3dTNDTkFJUlJsU2dNN1N0OEZrbDI3WTdwZlVKWW5TbkdPSUwxWHli?=
 =?utf-8?B?RHg3V1ZOUjhIei9WbVB3VGx1WlhwSEhQUHNqM2dZYSt2ZytKdk9idnNJaWxv?=
 =?utf-8?B?K0NsTW9mSHVvWHZrM0c3em5xTm5oWmtGTDhTM2h5cUVZSGlCOFQ0QnVHc0lI?=
 =?utf-8?B?QVdVZmN1WlpUL2RBSUlxWm9CdSt0TWJ5Q05ReEU3QUJZNFNGdFdoUU93OHRu?=
 =?utf-8?B?eHFQRGZMWkgwVy9pZW56SWhCYkVCOERoWlQwcStHNWNOZnFwMzR0UWJGa3Uw?=
 =?utf-8?B?YnZaeWU2YkVMNGN0WExSeDlrUHB2MmJTZEs3dkZ4eko5OGE2UDBMcmM0WCto?=
 =?utf-8?B?UWJBWXkvV3RIYTYxUWViWStlOVlldStBUUFMR0I2SnlOTjcvczV3bkNXWmpH?=
 =?utf-8?B?c1VUQUlJYWg4UVMrNUdnNGUxYkZ6emRWQVo1QWVibjNWbmxTM2w1alVRQ2gr?=
 =?utf-8?B?Q3M5MmVQcnliMThOa1gzUjA4ZkFwdjJyWnh2SWl1WGxzL3BtZTFjYXRpQzRm?=
 =?utf-8?B?N0FiSVphd0J3YTR0NGZNMEpQNVpsY0VuNXBLZ1lXdU14S3VuZ2RKSENOUDlW?=
 =?utf-8?B?YnUyLzByM013amVlU01kL3E0RjBVOXFJWUYzREE1NEVydUphaWMrcWpQS2Nu?=
 =?utf-8?B?QkltcGNvK2wwR2E3ZzU0NEFPNXhHSWhjczhLak1kV2pzWmhOemhpQ01yOVI5?=
 =?utf-8?B?a2VOQk16Q2R4eDViUjZLdGtmcStkaTgvU2JzSEVCQmVlRjRHbERxd1NCYmNr?=
 =?utf-8?B?ZWtYbmR0RnNYb2MwdzBjT09IMEpCLzhnRTNibUtKQjYvcStodXd5NC92cjd2?=
 =?utf-8?B?RElSdXB2aVZwUlduTm42Y2kzTFBGQUhjZ0VYcXZxOUk4aWdqVWdoU2NNYlBN?=
 =?utf-8?B?UUhYY0hnMkYvOHdlMEdvKy9xN0d4d1NBOGdXenQrWmIxM3FmNmtUTTNnZnEv?=
 =?utf-8?B?aE0xUHNMUTRzZ2JEZnlPUm9UZko0WUFxN0duVjBWbjBERlJETC91Y1hqUDBL?=
 =?utf-8?B?V0EvNERRT3VtL0M0dXlKSlRDQmRld25LbytqMmlzU2xGZ01ES0kycHdrQXRB?=
 =?utf-8?B?cHpYSjdENkR0MGU5bWU4WDYvcVNNeGkzZkRSVUlOSFN5ZWduTzIzZ1JmSlF5?=
 =?utf-8?B?RElOaFRCaHVSNkJiSHYxWUIrSTN3V24vemRwbURpdHBrdFB1RHBSRXp4cnNJ?=
 =?utf-8?B?UC9BUmZaYjRTTlRmbEpEZjQyYmcyNzd0SVY1K3dLNW9CKytCUnJadUV5U1Fv?=
 =?utf-8?B?aGMxZHZWTjdWcGxhOW9BaUd2NmZKRER1c2o0WTAxdnFYeTNGdXRaemJCa0ps?=
 =?utf-8?B?S0tRK3BXM0FvOXN4UXVpcnFQenE5WndjbllRdUVrSmE3MjJYSDZSZnBlUzNq?=
 =?utf-8?B?S2NycG1SbGVMZ3g5UytvdVM3Tmdzc3hBOEl5Y2xUc2tVdDh2WmdGcVVKOVUy?=
 =?utf-8?B?QjhaTEJFdDNQVVk4S29OTTQ0N3BsV1B6TWlwaEJtT3NCUFZGdU52c0xQUHNq?=
 =?utf-8?B?cVRQOFFESHBYZThWaEpKY1JnbWZmdm44ajl1eUp2cFFQdVA5VytSMmk3T3Rp?=
 =?utf-8?B?UnFISERLejE3M1BScEdqdWFWOHgzbmhHK3o3RS9QS2RZbnJvbVBMdW9LQ3Fm?=
 =?utf-8?B?eHdOdG1VVi8yT1NMNlRBZU9GT0JkbTFza3VwWm41MkFxWnJrd2h3cHptT3RY?=
 =?utf-8?B?QnhpZ08rVGdQMTRTMkt0aktlSmJTQ1hNTjdsNS9VSnR1TFc3ckdKZ2h1S280?=
 =?utf-8?Q?eZBMAjXUEucfzcUx9K+eTBN9ZouBhQ6E?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5885.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MHhDbUZhT1d1eXlEMVNXWlVOSDF4QXZCcHZJdmY4NjN0QWZIQzZUQkVYT3k1?=
 =?utf-8?B?ZGlHOUhRWjVkTzBWcU91dFB5c1lKTFhpYlpzWDNOMXArYys3eVFtOFdUOC9U?=
 =?utf-8?B?OTJzQnhoOG9pUG44eDEyaG4zL0lVSnV2MlBLR2VQbUFjYmVibUt3UXIrWmZF?=
 =?utf-8?B?WmRJcXIzRDIzV2JJZkg1L2V4TmZCSzVGVTNTZ1B3Mk54WE5RTm1DYWVxSlpI?=
 =?utf-8?B?Y1ZWNWJVRndvWXplK1dKOXNYWmlEQ0g0eDNSdUFXSi9OKzJSVFRUUFduNWp1?=
 =?utf-8?B?MmJCbXJJbldIUVRqWjdyYVhYWklOYmU4RlZrc0xSL2hIUlVtNENDQWlqSGFV?=
 =?utf-8?B?UnJncXNGbVZodU1tTFhPTitnNjlqYkREQ01sY1JCeExNRVNxbCszc3ZWR0Qw?=
 =?utf-8?B?b1MzSkRUR2xpb0prVThaS2IzaUVicWp0cjhCVE9FYkZuUG9CYmtXZndJeDJC?=
 =?utf-8?B?QjJacjd0S1ZmbDkrN3pmK3dzbE5Gc1VGTzVBUGtYWktPZy9CVlhxQWFWZnU4?=
 =?utf-8?B?RXd3TFNzUFZqdklpZDFYTDRQQlU1Q1FGV0hndDVQTk11ZTZML0dUS2xzRDFN?=
 =?utf-8?B?MjhTazM0ZUhsN01ETlNSTENuSGY0TGtmeU5DbU9jZGN2VE1oY1dXQXBGUjZx?=
 =?utf-8?B?NjJsYzBvamZ2QlFtQThRQk1WQmYwRk91T0JiY0hWNEcybm1KSVFPWEovRFgy?=
 =?utf-8?B?YnFjNzMzTktpRzlXUmNYZk1ZUTIrOGV6K1EyMTg4ZFloRFNMSGJ1VjJaZTU1?=
 =?utf-8?B?RVRwOXlCN0tUcW1XRzVaaUJ1R1dSeDcrZTgwNWdrYm1obFE0bFBDZzRYUTM5?=
 =?utf-8?B?UlhhbVdiZEdlN0JUdkVyazNPSDBFTUZXSFN3RjNJdFAzOHJXL1dIZjE5SnVz?=
 =?utf-8?B?UVlDRWszODV1RGRWUVl5bkpFeGZNWmxSUnNOWTVJWFhYNmV0cisvUmpOaG9j?=
 =?utf-8?B?MnRqalA2eWNET0s3YVZMQm5IbTZNU3RUelBnSGxCakxvNkVzZDVQWUsxNnlX?=
 =?utf-8?B?dnNRN1hmNVkyRlk1UTFwbVhJUC9nMmtub3hKeFdzemd5S2I5QTRRZlVYc0lK?=
 =?utf-8?B?NS9lTmVBelJsRURXc0xuWjhpaGdCUFlNdDRsdGpUVkRJcjFtSHYyV0J5U1BD?=
 =?utf-8?B?L0x5LzJqMTlnN01vZnNnNGM5WFUwODJTTU51R0FUck9DNG9DU2loK0RwS1JE?=
 =?utf-8?B?ZTVJcUErQzgyREh5YTh6UmxCQmFKTWVWVDdxU3V1ZDVpOHQ4WUMyd2lUajJ6?=
 =?utf-8?B?M0lQdXRRMWppRWUzRzUrLzA0MlZzRDM3M1VBZVByMjZOckF2ZThBUTE1WVVV?=
 =?utf-8?B?TnlBQkpmdHFCOG00R0dGcml0N3lhajRaYUJ1RSswNVJsTDc1dmpIRG96UlRZ?=
 =?utf-8?B?K2hoWkhHT2laREVMKzNyQkNha1JhQmlLZ3lXZ2EwVmVRUmx4MmpFMGw5Nkxi?=
 =?utf-8?B?T0Y3NGhaa3JQYXZpN3JoaUlQTVlnMjQ2S2dvSE1iUGMxWkFoeFRQTDFNMUdz?=
 =?utf-8?B?MS94S1lZYlh3cWZsNWNSSWZyQmpSTzBoTm0rMUprR0Vpb0psb1RudTFPWmlU?=
 =?utf-8?B?OXQzTXZ3RTFnZnB4MCtDN3dmdHVSZ3BHUk43MXg0THZXTVNJUnBIK0l5ODA1?=
 =?utf-8?B?elhJbDk4QUw1Zlg0bTFLbHVITmd1V0lCc2JKYml0enRRY2QxWitOZFFtY1dW?=
 =?utf-8?B?ODRlMFNEbjBFSGplUHdLY2xIbUlySVg4bUVBa2VCeDZ0Q1dvQnVkRDJDdE91?=
 =?utf-8?B?MkEyQkZLamp0YktIK3Q4K2N1NUhEMFZtSUo5TUNLV0l4M2xNUzVURE9RY2da?=
 =?utf-8?B?UkQ0REd3VnJMN0hGUkxkZTFWVGZyeWVGMkdKTnQrOXBjR1ZoV3JIQ1Y5ejVI?=
 =?utf-8?B?c3MrZ1dWWXIycHI1S2g3SkhvcDhyWjdVb1hwdTNaTHBRL2pKUkZkbTludENO?=
 =?utf-8?B?dThDelY0VHdkSFdCM25UMkhuRkpkK3BrejgyRVFDZk5IUDdNMHNmbjQyRmNW?=
 =?utf-8?B?bk5VMXhFMENIWUU4cFlQbk9Jb0lsY0NRK1ROQWl4RnBGZ2JDbW5sZFNIVllm?=
 =?utf-8?B?VzJXSUdrSENnM0ozMmhjcDc1SExKL2l6RFN3Q2w2RTQyTGF6OUR4ejZPWlVo?=
 =?utf-8?Q?OyGwXGiiv/dLMtGwdArlENCs3?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5885.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 55dd4931-a2e2-41e8-1483-08dd1f7a1c87
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Dec 2024 15:39:08.0992 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Sx0hB1jRkr5tOl89Zg61GKluF0jzWrcqPF7lm2nwaLgkkVldDIxx+fImP6YyHbniyRR71txG6cz5FJmoaLYflg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6283
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734536392; x=1766072392;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=uFLNXt5BGbYu5CR1198ALTYYrQ50p6KHmvb+Uq38kJY=;
 b=EVOFF8tih8VkVR373D0gTsP6v3c4M96fu5t79LtS4vBWcXlLDwFJroL0
 9Fr7alDXV1/j8tfXxjeb8UdOqd3UJVEWej5YMdWgBUKZPFvwB7K5rU5ws
 0HJ3voaN6cyO7/VGXFT8DGrTvDL2z9s4QNWR1YsUXgFVGLn1E89X5+E9F
 1J3kagrjNMlYNMk2f6DIQsSZpPq5w1PNKlw+H90DIYIj4DTM2W4U73q+O
 2u9VO+mXWz5MG14T8rpxM1F84Ew3KimPIt6CBIBI7czyWOv/cOHJETeXX
 XgXgDltzJkhX7y+EJzhRaHFzx13eV/SnRBztUATXbKOG2ZuD5AFj5GJka
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=EVOFF8ti
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 iwl-next 09/10] idpf: add support
 for Rx timestamping
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

T24gMTEvMjkvMjAyNCA0OjQ5IFdpbGxlbSBkZSBCcnVpam4gd3JvdGU6DQoNCj4+IEFkZCBSeCB0
aW1lc3RhbXAgZnVuY3Rpb24gd2hlbiB0aGUgUnggdGltZXN0YW1wIHZhbHVlIGlzIHJlYWQgZGly
ZWN0bHkNCj4+IGZyb20gdGhlIFJ4IGRlc2NyaXB0b3IuIEluIG9yZGVyIHRvIGV4dGVuZCB0aGUg
UnggdGltZXN0YW1wIHZhbHVlIHRvIDY0DQo+PiBiaXQgaW4gaG90IHBhdGgsIHRoZSBQSEMgdGlt
ZSBpcyBjYWNoZWQgaW4gdGhlIHJlY2VpdmUgZ3JvdXBzLg0KPj4gQWRkIHN1cHBvcnRlZCBSeCB0
aW1lc3RhbXAgbW9kZXMuDQo+PiANCj4+IFJldmlld2VkLWJ5OiBBbGV4YW5kZXIgTG9iYWtpbiA8
YWxla3NhbmRlci5sb2Jha2luQGludGVsLmNvbT4NCj4+IFNpZ25lZC1vZmYtYnk6IE1pbGVuYSBP
bGVjaCA8bWlsZW5hLm9sZWNoQGludGVsLmNvbT4NCj4+IC0tLQ0KPj4gdjEgLT4gdjI6IGV4dGVu
ZCBjb21taXQgbWVzc2FnZQ0KPj4gDQo+PiAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWRw
Zi9pZHBmX3B0cC5jICB8IDc3ICsrKysrKysrKysrKysrKysrKysrLQ0KPj4gIGRyaXZlcnMvbmV0
L2V0aGVybmV0L2ludGVsL2lkcGYvaWRwZl90eHJ4LmMgfCAzMCArKysrKysrKw0KPj4gIGRyaXZl
cnMvbmV0L2V0aGVybmV0L2ludGVsL2lkcGYvaWRwZl90eHJ4LmggfCAgNyArLQ0KPj4gIDMgZmls
ZXMgY2hhbmdlZCwgMTExIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pDQo+PiANCj4+ICsv
KioNCj4+ICsgKiBpZHBmX3B0cF9zZXRfcnhfdHN0YW1wIC0gRW5hYmxlIG9yIGRpc2FibGUgUngg
dGltZXN0YW1waW5nDQo+PiArICogQHZwb3J0OiBWaXJ0dWFsIHBvcnQgc3RydWN0dXJlDQo+PiAr
ICogQHJ4X2ZpbHRlcjogYm9vbCB2YWx1ZSBmb3Igd2hldGhlciB0aW1lc3RhbXBzIGFyZSBlbmFi
bGVkIG9yIGRpc2FibGVkDQo+PiArICovDQo+PiArc3RhdGljIHZvaWQgaWRwZl9wdHBfc2V0X3J4
X3RzdGFtcChzdHJ1Y3QgaWRwZl92cG9ydCAqdnBvcnQsIGludCByeF9maWx0ZXIpDQo+PiArew0K
Pj4gKwl2cG9ydC0+dHN0YW1wX2NvbmZpZy5yeF9maWx0ZXIgPSByeF9maWx0ZXI7DQo+PiArDQo+
PiArCWlmIChyeF9maWx0ZXIgPT0gSFdUU1RBTVBfRklMVEVSX05PTkUpDQo+PiArCQlyZXR1cm47
DQo+PiArDQo+DQo+U2FtZSBxdWVzdGlvbiBhcyB2MToNCj4NCj5TaG91bGQgdGhpcyBjbGVhciB0
aGUgYml0IGlmIGl0IHdhcyBwcmV2aW91c2x5IHNldCwgaW5zdGVhZCBvZg0KPnJldHVybmluZyBp
bW1lZGlhdGVseT8NCj4NCj5JZiBub3QsIHdoeSBub3QuIFRoZSBmdW5jdGlvbiBjb21tZW50IHNh
eXMgZW5hYmxlIG9yIGRpc2FibGUuDQo+DQoNCldpbGwgZml4IGluIHYzLg0KSSdsbCBjbGVhciBQ
VFAgYml0IHdoZW4gdGhlIHJ4X2ZpbHRlciBpcyBlcXVhbCB0byBIV1RTVEFNUF9GSUxURVJfTk9O
RS4NCg0KPj4gKwlmb3IgKHUxNiBpID0gMDsgaSA8IHZwb3J0LT5udW1fcnhxX2dycDsgaSsrKSB7
DQo+PiArCQlzdHJ1Y3QgaWRwZl9yeHFfZ3JvdXAgKmdycCA9ICZ2cG9ydC0+cnhxX2dycHNbaV07
DQo+PiArCQl1MTYgajsNCj4+ICsNCj4+ICsJCWlmIChpZHBmX2lzX3F1ZXVlX21vZGVsX3NwbGl0
KHZwb3J0LT5yeHFfbW9kZWwpKSB7DQo+PiArCQkJZm9yIChqID0gMDsgaiA8IGdycC0+c2luZ2xl
cS5udW1fcnhxOyBqKyspDQo+PiArCQkJCWlkcGZfcXVldWVfc2V0KFBUUCwgZ3JwLT5zaW5nbGVx
LnJ4cXNbal0pOw0KPj4gKwkJfSBlbHNlIHsNCj4+ICsJCQlmb3IgKGogPSAwOyBqIDwgZ3JwLT5z
cGxpdHEubnVtX3J4cV9zZXRzOyBqKyspDQo+PiArCQkJCWlkcGZfcXVldWVfc2V0KFBUUCwNCj4+
ICsJCQkJCSAgICAgICAmZ3JwLT5zcGxpdHEucnhxX3NldHNbal0tPnJ4cSk7DQo+PiArCQl9DQo+
PiArCX0NCj4+ICt9DQoNClJlZ2FyZHMsDQpNaWxlbmENCg==
