Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CASbEiD52Gm1kQgAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Apr 2026 15:20:32 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B3753D80E4
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Apr 2026 15:20:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 33BB382237;
	Fri, 10 Apr 2026 13:20:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vdstXSwH3y9i; Fri, 10 Apr 2026 13:20:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 497A7815D7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775827228;
	bh=v0/D7CwyuL5DBA8LZVvPSmGLKHQTXN5ZIh67ojbotUg=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=qpPwiT7GRU0U4hLrIfhGb8uyUWQ7rMly8h6Y+u5t5NSjbs/P3uip7OwNgKThCVQkD
	 zGx6KCv0zkrQqaS6XB3Xvln4npbvI2ChOJ2hztpkDSwCuIGevQNqmGNdtPmYYNTf5o
	 g7Tx0/15hVs3bd75AMrG/1wn3+zVW3C3TK2EWQ19KxTDBEqZctlSbNFsYyrVL+es35
	 21cAj1YuatpNNvdjnp9V26mFsCCYKaukuDmuXVMCByhY851gdNr8csU1cSGuMO5OSw
	 Xo2TltLFIQSKhUS5rL7XIy58a+lf8CN7stTYuOGEM+c1xJp3+uhBm47bWNZarKlOWE
	 iDlqFjo7ngfNQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 497A7815D7;
	Fri, 10 Apr 2026 13:20:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 9FAC1237
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Apr 2026 13:20:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9175540283
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Apr 2026 13:20:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZDVI2ZVY4C8i for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Apr 2026 13:20:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=przemyslaw.korba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 6F2724005B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6F2724005B
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6F2724005B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Apr 2026 13:20:25 +0000 (UTC)
X-CSE-ConnectionGUID: G9iyrMK8QqKYpJZSrLYt3g==
X-CSE-MsgGUID: 14ZmzjRgT9Wfg74QslDfrA==
X-IronPort-AV: E=McAfee;i="6800,10657,11754"; a="87131649"
X-IronPort-AV: E=Sophos;i="6.23,171,1770624000"; d="scan'208";a="87131649"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2026 06:20:25 -0700
X-CSE-ConnectionGUID: fuavghfCSWOpwER4NYtwFA==
X-CSE-MsgGUID: reRDOlR6RGim9IzKvroUGA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,171,1770624000"; d="scan'208";a="229000230"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2026 06:20:25 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 10 Apr 2026 06:20:24 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 10 Apr 2026 06:20:24 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.57) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 10 Apr 2026 06:20:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KQ68FwTHG7fRvj600KKUQdH7cf8miBTHIgGnWu5I6elYAmhwMc63AyfBeHtHqKZ7alcO8M6BIiYmJv0CM9iB6QSbou9qyOOrU0YpgfdZ8tShp6/mvnV/pkyAakFHD0VpQ25XCAOtAKmf1LTgyOl5w4ZTDkNtHHywhOp069eLqPgpnprlnalZf62XNc7/pg0U4P4/wnbsNcg6D1Bbp3MhI3VAC6uhe2s3fT3C4Ij3hJ6IU8uGaNKxndSpt3c+/gKXIX0+nxDBrtnQijjbolg6m3YIHQc1fDp+WLxpaabEOC8yBA2nWjDPmwcLUr+AqvqrttUK1UwX5uDam6+pkDBifQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=v0/D7CwyuL5DBA8LZVvPSmGLKHQTXN5ZIh67ojbotUg=;
 b=XvsASSgD9ZwWoLPFtr1i9Wa0mQr+oBNthOYjLhI9kTDteKuiBTixYjqTlhCNwi+ts0ORH0uy0TTG55PkaefzoP8FYYJOFdxdUI9iFzOpQos6dpfo5A+EcRf7hNKdXls1rsKHKBThkS+7sqJrXzkwJO87boOLmWXS4pRjiq43Ry9XXy5ccI8e3kS/l3Txc58MSEAqilHnScem1yQVlWTKBBQqPrsldfwqQzJhTBp3szD5JU7E4rCJFmBIt31gEUferh8313KvbWOrSA/ZtXP3XnOSoq+LgGiCIgWVqqWfhNk6vgXuoE0RF4QVK43qfcO1G1rd0R34eR+7Qm6SIwdm1g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB4904.namprd11.prod.outlook.com (2603:10b6:510:40::10)
 by DS7PR11MB7931.namprd11.prod.outlook.com (2603:10b6:8:e5::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.42; Fri, 10 Apr
 2026 13:20:21 +0000
Received: from PH0PR11MB4904.namprd11.prod.outlook.com
 ([fe80::ff04:50e9:d186:6305]) by PH0PR11MB4904.namprd11.prod.outlook.com
 ([fe80::ff04:50e9:d186:6305%5]) with mapi id 15.20.9769.041; Fri, 10 Apr 2026
 13:20:21 +0000
From: "Korba, Przemyslaw" <przemyslaw.korba@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Simon Horman
 <horms@kernel.org>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
Thread-Topic: [PATCH iwl-next] i40e: PTP: set supported flags in ptp_clock_info
Thread-Index: AQHcr86Xy2U0MgoCgUGFZQFkE41emrWoFskAgAExmsCAAzRWgIAAAwjAgBOL6QCAGGvOcA==
Date: Fri, 10 Apr 2026 13:20:20 +0000
Message-ID: <PH0PR11MB4904AB3C1045FA1A2F99A03194592@PH0PR11MB4904.namprd11.prod.outlook.com>
References: <20260309141220.343224-1-przemyslaw.korba@intel.com>
 <20260310182458.GQ461701@kernel.org>
 <PH0PR11MB49044CA89B5D8780D477561D9447A@PH0PR11MB4904.namprd11.prod.outlook.com>
 <20260313133451.GZ461701@kernel.org>
 <PH0PR11MB490443FB49C3F762297A992E9445A@PH0PR11MB4904.namprd11.prod.outlook.com>
 <dce634db-bd85-4c39-ae01-4272c432f017@intel.com>
In-Reply-To: <dce634db-bd85-4c39-ae01-4272c432f017@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB4904:EE_|DS7PR11MB7931:EE_
x-ms-office365-filtering-correlation-id: 80a92e0d-de8b-4776-bed9-08de9703ea9e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|38070700021|56012099003|22082099003|18002099003;
x-microsoft-antispam-message-info: 20NwUgP6WGGspIdWR6kh/ivvoe9zyC2k7lhnV8SmNxLWUWvdFM67V27EVv3ffNmz8kW7Rpy6LISI4WIhW6zLHHKN9ys71O6r9fRYuxIeYWWz/EDsFomhAV3f8iGCLKdw3zJmI7+PrdEFBbblhyDVAC2r7dst74/o7GUoQw2HzyV6hvkCECbFk7elK1jvUsn3qrGZ1sToU0YF5NrpliFy3K45hC93OZGM+Y1TnSSEVrFKQmcMokMnjvEdbFI2snMHBGK7t4KiungSTrtO1DbZ6ZaLa0G3sOikjOvC7qIce1lHoDzsMz6PhUC16RCJ1+QuIqZkztjJPnKszIZBZTkxrrhwZJ+GEugVchZv+o9zANKaEYk4RPBq8YknksqqQpY//nxSN0P8eeDHC+qORGKnhv1JUmJpngKLjKvcOnQqG2z4QapT+NrVwI/i6fBqZrnExksLCdQzqG4oYgjmArohBWWft4UdPBTK3GZVnSntB17XcyM8CELBJYvWFHLoQkuItI+FJxvJTkwIvj13R/rM26+9f/DpU/xk1Vsk6yAMIwNtt/Qof6tSPrDlt+8R2yPL8SdcJlW8oLX0b3mLYjq/spvL8nxn/hN72UTYWwDJwYxf+/M+j46WbN94+TtDx2RvMpwQfh1UCAD0BL77/OIugzp3iJT/7rDAx8LRyF+1ucHjT3uMEiLBGWuASFmtqt1fhLHoxLxGijRg8rH+zMTKiTpOfIPK/tnkYR+98lX4hwXdYwVgU3vC50a3zPsz9GY5NSvFhsS1NYysnjc376bGK8Uasb3Sbkr9Y4vE8962iVM=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB4904.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TEYwQ1FEaXFiUFNtTXFUanQ2eitFM0RBbmNLVGhBSndoQkxXQThjbnVKMzRi?=
 =?utf-8?B?TlBBTVpMaUVYZGNuTFlMMWRONGVPcmVZNVE4czBoZHcrajlCTWQ4TGI1TjBh?=
 =?utf-8?B?eGtnUDV5S1Vyd2x5WHk0bU9oSWdyRmpTOVhkbDhYNmMxdkR6RFQ0WTF5Z3J5?=
 =?utf-8?B?Y3M2aGZoUlpsOFQrdmF3QTZ2VWZxazBqVmY0VWE2WDlYN2FhQURhMFJURjc0?=
 =?utf-8?B?ZHJhYm5seHd5QkloVmFUYmRtOEV1cWNsUWlEWG5HSXJSalVKeU93K0JmOG5m?=
 =?utf-8?B?SXVhK1NQbStyUEU2bHZBNjI1QS8wWXoyMXFHN0kwQUgwWldXQ3hzd3JMNGlB?=
 =?utf-8?B?WVVERkRPYit1bnl2TGFNSGg3N2NYV0dqMDNJOHpZVmFlQzMyeHBwVHhHS1Q1?=
 =?utf-8?B?TDZSb21uS1phSndwaEVoZ2dlNFNrRlN3akFJOUdzK2Rwb0lycTllcHdXdlZx?=
 =?utf-8?B?UDh1VkROYlE0eWlGUlI1MVQwRS9aR2xEaDhMRjBPdUJCNkd6cVNBbVBTak5u?=
 =?utf-8?B?RDArWHlTUG54SklTY2xPWHd3V3UvWGNHNGNITFhwamFkd1k0NlIxTGszeEtK?=
 =?utf-8?B?aHh0N0d2THQ2aitMOTdOdXR0Y213SHpHV04ycGFpM3grTVhLWi95ak5xeFVw?=
 =?utf-8?B?M25kVFVKdFhPN3lPT1BQWDhKN1hXNzdjS014YmNXZ1R4bXlxNVc3Q0tnYWFE?=
 =?utf-8?B?dkdTR0s1Q0lrMU5ZbHhLbzdEUEFMMTlDa2xkSm9MemlxczNVMzNkdVhVbGsr?=
 =?utf-8?B?Mi9UZEVSV0lGV1FyWWFEYkJsOUdGbjVGN1ZndU5JK2R6N2JSUnpJZkNYUUFX?=
 =?utf-8?B?UUV2d0lXeWdJOGJJM2h3UnAyR0xsQzc3ZnNjdmwyWFRFNTlnNEVlSVEyajk3?=
 =?utf-8?B?dkFOSVc5dFp0SG0wVXFJYnNkN01DUE1JOUxPQitjOGYxNnV4VEt0MmJmdUNr?=
 =?utf-8?B?NE5ub0NCZzA3cm4yT0NDcFJMM1RzS0dTcGVyVSt3MExXdjIyS1Q2Si9uT0FG?=
 =?utf-8?B?K1lxUklXVjBLY1ZhdHJ2SGkzSGIvR1hJaUpiZXB1ZlR0UG1LVE1IckhSNFkv?=
 =?utf-8?B?VVRCQ3BTZURXVmZaVDdLd095TFFzYmVxVVhtdXVEVE5jdzdqSWoycTFMU3Vo?=
 =?utf-8?B?bEVURnZzd1NVSDVKdWk4MXN4WDhtREREalV0NUhlYlUrdXdUZW5hV0NTL2Zq?=
 =?utf-8?B?ZWk4QmJpZmF4QThtS1RvdmxVNklZdFhWZkNGcDA3YjEzOUlmeGVVbWFlQnJv?=
 =?utf-8?B?bkpNTW5YVFU0VklLSElPZ2QwM3NJcjQzMEhDNzQ5R2tGM0UwamR6RW1YUEdk?=
 =?utf-8?B?YTJBVWxrR0FHT084SWFiVmttRkgrWHN2bE12cUFldzV0U05HaDA3d3hFazFJ?=
 =?utf-8?B?U3pQa05HU01BY1dVdEdkR2E2WXI2Z1ZWQUphRjd1RE9RT09oQ2NPOVBwZTIr?=
 =?utf-8?B?ZGw4NGxMTXp3cVFCQWlxL3pwWDBnbklSK1BFaEJ5L1dNRFFJUUIwbzVkSVVC?=
 =?utf-8?B?NU5qZTZXUnE3Z0VQZW1qSUtZTWp1VUVuQUU1OTM1LzdWekY1Y3E0c09HM2N0?=
 =?utf-8?B?dGFIWkRjbE9FUW1FWlUxTE5PNVpQYkR5amFMZG9GZ2pQeEZZdmF4S1ArcnZp?=
 =?utf-8?B?TmREVGxPdFFYSU82SEVtYmVsUGxSMVlCVGpJNkprbTZ0U0JQSjFmOXhMelhu?=
 =?utf-8?B?K2pkNDFvby9LaktSRGt4UTFaWnNHSUJGYWdRQzFHdGN3L1ZKOXd5N3BsZ2d2?=
 =?utf-8?B?UXN6MytaV1VIQ240b2lrVzhoMGpwU0UzajZiSUdvc3UyNmpGMDNTV3lDckZh?=
 =?utf-8?B?QjhqZnJpZlBka29IMTV4OEVKQXliMWpLT3F4UkZZWm5aMkd2aFNYZVBIM2Fw?=
 =?utf-8?B?N2x2NWJtbHUxblNTaHlBWTVpUUMveTB5MHJkakdyNkpoV3dTTG9TNDU1a1Nm?=
 =?utf-8?B?dkhRcHBCb2J6T3hHa01ScjVSYVA1ZFJCZ3pUTVJpZ0lRbGhUQ3VzZ0JZaDFI?=
 =?utf-8?B?c05UYWJSY2tDK0NqQ056S1hIcGZpb2pwcXBMRmlVV3djV0wzNURzSFRWMmtE?=
 =?utf-8?B?cGRkS2tyVGUzc014Z1dxZ0JpYWVIQ0dSbHY4cUUzN3l6bmZIMUhxeVFDeitn?=
 =?utf-8?B?cWxyNFBCalFwcE9FQVJHWGVEN3A4MFkrSkNmY2gxSUpEcENQK3FJc0xPMXFF?=
 =?utf-8?B?U0FkK2dUNnpqd28vUVl4ZS84N3FkZ3l6TkdDVnROZWtJbnZEV2tSVzlVTzNC?=
 =?utf-8?B?YWs1RTJhMnpwT2JkMmpZZzdJSERINXRzOU8zR1NTTnV0ZCszaWRIUlN6SVFw?=
 =?utf-8?B?MHEyTE00UDdhNkRmUS94ckpXVmhmSW5abW9pRy96NzZ2aVBkd2ZJQT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: YVXZ0lSwetQYYUAakvf5M8hIsFXqA3ik8/6UZhEfxmiUzcM7Qp3TbhVZ4SnzXqFFCyqAGfmcb/Kf0q+q1GjXZ6TVS+6HZQRKlgTFbhM0UezXws6IGkT5YYd8RKXDcdjJeJYfGvwRYj8Aj0DNnjItazb8Wo50fE+wLg7NoG+7xO1KMs7XIBoahVrbycUbPnZSzYpkaXJOE3wNn+LZm4wLutIkMc0qNBy218sikF/AruTkQ02RzupV/rJ9hPr3F/Eb4NiEuEV6+QJhQ8gUi6ZaEks37A1NInpDGVb526cS4vNN3LjPhErfob0S5F1QZPRPGJmn3vtvxvO5syp1ZbVfLw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB4904.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 80a92e0d-de8b-4776-bed9-08de9703ea9e
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Apr 2026 13:20:21.0025 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: iYPd2uj3w7xUyFJTt7Rekt3hnppTvlMqgs6WIDbph1PeH8TF9poauMr7XV4fTB3NLIv43B2WbtMveLOhsn3QNfu7w9hlCW8WdCi9dO5tNLs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7931
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775827226; x=1807363226;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=v0/D7CwyuL5DBA8LZVvPSmGLKHQTXN5ZIh67ojbotUg=;
 b=VzmAEpXs+BjzWPqqupM+4ulQcJVGhunginJ3x8pCW5odFUDGa8s66GWi
 GuyIrGijXSHMm9bwBDMcxYgww80//D0P4vN/prJkWjDObV0Hxks4iKx+M
 z3tsTpkl1D6s97BN/fOkH1zsZs3mCKyTHBRbjyM7B3Dnf1aia6iPUKa1E
 pkdMu9256Xk48irMk3cQyS3AyFAwvjXui9KCB56ZRFjD4ef8KIEhpJl1k
 Vev8XYHVFAU7YeOOXsebd99uXAT1arjQ9BdYAPvvM92Np7ey9xl9ueLYF
 zWNFcH1kvJAOcXcUEZY79yKxAGaeGTPCQL1N1yqKkyBra4R3yo2Ki+4Zm
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=VzmAEpXs
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] i40e: PTP: set supported
 flags in ptp_clock_info
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
X-Spamd-Result: default: False [1.39 / 15.00];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jacob.e.keller@intel.com,m:horms@kernel.org,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,s:lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[przemyslaw.korba@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[przemyslaw.korba@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCPT_COUNT_FIVE(0.00)[6]
X-Rspamd-Queue-Id: 8B3753D80E4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBLZWxsZXIsIEphY29iIEUgPGph
Y29iLmUua2VsbGVyQGludGVsLmNvbT4NCj4gU2VudDogVGh1cnNkYXksIE1hcmNoIDI2LCAyMDI2
IDE6MTUgQU0NCj4gVG86IEtvcmJhLCBQcnplbXlzbGF3IDxwcnplbXlzbGF3LmtvcmJhQGludGVs
LmNvbT47IFNpbW9uIEhvcm1hbiA8aG9ybXNAa2VybmVsLm9yZz4NCj4gQ2M6IGludGVsLXdpcmVk
LWxhbkBsaXN0cy5vc3Vvc2wub3JnOyBuZXRkZXZAdmdlci5rZXJuZWwub3JnOyBOZ3V5ZW4sIEFu
dGhvbnkgTCA8YW50aG9ueS5sLm5ndXllbkBpbnRlbC5jb20+OyBLaXRzemVsLCBQcnplbXlzbGF3
DQo+IDxwcnplbXlzbGF3LmtpdHN6ZWxAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBSZTogW1BBVENI
IGl3bC1uZXh0XSBpNDBlOiBQVFA6IHNldCBzdXBwb3J0ZWQgZmxhZ3MgaW4gcHRwX2Nsb2NrX2lu
Zm8NCj4gDQo+IE9uIDMvMTMvMjAyNiA2OjQ3IEFNLCBLb3JiYSwgUHJ6ZW15c2xhdyB3cm90ZToN
Cj4gPj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPj4gRnJvbTogU2ltb24gSG9ybWFu
IDxob3Jtc0BrZXJuZWwub3JnPg0KPiA+PiBTZW50OiBGcmlkYXksIE1hcmNoIDEzLCAyMDI2IDI6
MzUgUE0NCj4gPj4gVG86IEtvcmJhLCBQcnplbXlzbGF3IDxwcnplbXlzbGF3LmtvcmJhQGludGVs
LmNvbT4NCj4gPj4gQ2M6IGludGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnOyBuZXRkZXZA
dmdlci5rZXJuZWwub3JnOyBOZ3V5ZW4sIEFudGhvbnkgTCA8YW50aG9ueS5sLm5ndXllbkBpbnRl
bC5jb20+OyBLaXRzemVsLCBQcnplbXlzbGF3DQo+ID4+IDxwcnplbXlzbGF3LmtpdHN6ZWxAaW50
ZWwuY29tPjsgS2VsbGVyLCBKYWNvYiBFIDxqYWNvYi5lLmtlbGxlckBpbnRlbC5jb20+DQo+ID4+
IFN1YmplY3Q6IFJlOiBbUEFUQ0ggaXdsLW5leHRdIGk0MGU6IFBUUDogc2V0IHN1cHBvcnRlZCBm
bGFncyBpbiBwdHBfY2xvY2tfaW5mbw0KPiA+Pg0KPiA+PiBPbiBXZWQsIE1hciAxMSwgMjAyNiBh
dCAxMjo0MjoxMFBNICswMDAwLCBLb3JiYSwgUHJ6ZW15c2xhdyB3cm90ZToNCj4gPj4+PiAtLS0t
LU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiA+Pj4+IEZyb206IFNpbW9uIEhvcm1hbiA8aG9ybXNA
a2VybmVsLm9yZz4NCj4gPj4+PiBTZW50OiBUdWVzZGF5LCBNYXJjaCAxMCwgMjAyNiA3OjI1IFBN
DQo+ID4+Pj4gVG86IEtvcmJhLCBQcnplbXlzbGF3IDxwcnplbXlzbGF3LmtvcmJhQGludGVsLmNv
bT4NCj4gPj4+PiBDYzogaW50ZWwtd2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmc7IG5ldGRldkB2
Z2VyLmtlcm5lbC5vcmc7IE5ndXllbiwgQW50aG9ueSBMIDxhbnRob255Lmwubmd1eWVuQGludGVs
LmNvbT47IEtpdHN6ZWwsIFByemVteXNsYXcNCj4gPj4+PiA8cHJ6ZW15c2xhdy5raXRzemVsQGlu
dGVsLmNvbT47IEtlbGxlciwgSmFjb2IgRSA8amFjb2IuZS5rZWxsZXJAaW50ZWwuY29tPg0KPiA+
Pj4+IFN1YmplY3Q6IFJlOiBbUEFUQ0ggaXdsLW5leHRdIGk0MGU6IFBUUDogc2V0IHN1cHBvcnRl
ZCBmbGFncyBpbiBwdHBfY2xvY2tfaW5mbw0KPiA+Pj4+DQo+ID4+Pj4gKyBKYWNvYg0KPiA+Pj4+
DQo+ID4+Pj4gT24gTW9uLCBNYXIgMDksIDIwMjYgYXQgMDM6MTE6NTFQTSArMDEwMCwgUHJ6ZW15
c2xhdyBLb3JiYSB3cm90ZToNCj4gPj4+Pj4gU2luY2UgdXBzdHJlYW0gY29tbWl0IGQ5ZjNlOWVj
YzQ1NiAoIm5ldDogcHRwOiBpbnRyb2R1Y2UNCj4gPj4+Pj4gLnN1cHBvcnRlZF9wZXJvdXRfZmxh
Z3MgdG8gcHRwX2Nsb2NrX2luZm8iKSBhbmQgY29tbWl0IDdjNTcxYWM1N2Q5ZCAoIm5ldDoNCj4g
Pj4+Pj4gcHRwOiBpbnRyb2R1Y2UgLnN1cHBvcnRlZF9leHR0c19mbGFncyB0byBwdHBfY2xvY2tf
aW5mbyIpLCBrZXJuZWwgY29yZQ0KPiA+Pj4+PiBub3cgcmVxdWlyZXMgdGhhdCB0aGUgZHJpdmVy
IHNldCB0aGUgLnN1cHBvcnRlZF9wZXJvdXRfZmxhZ3MgYW5kDQo+ID4+Pj4+IC5zdXBwb3J0ZWRf
ZXh0dHNfZmxhZ3MgZmllbGRzIGluIFBUUCBjbG9jayBpbmZvLiBPdGhlcndpc2UsIHRoZQ0KPiA+
Pj4+PiBhZGRpdGlvbmFsIGZsYWdzIHdpbGwgYmUgcmVqZWN0ZWQgYnkgdGhlIGtlcm5lbCBhdXRv
bWF0aWNhbGx5Lg0KPiA+Pj4+Pg0KPiA+Pj4+PiBpNDBlIGRvZXMgbm90IHN1cHBvcnQgcGVyb3V0
IGZsYWdzLCBzbyByZWplY3QgYW55IHJlcXVlc3Qgd2l0aCBwZXJvdXQNCj4gPj4+Pj4gZmxhZ3Mu
DQo+ID4+Pj4+DQo+ID4+Pj4+IFNpZ25lZC1vZmYtYnk6IFByemVteXNsYXcgS29yYmEgPHByemVt
eXNsYXcua29yYmFAaW50ZWwuY29tPg0KPiA+Pj4+PiAtLS0NCj4gPj4+Pj4gIGRyaXZlcnMvbmV0
L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9wdHAuYyB8IDEyICsrKysrKysrKysrLQ0KPiA+Pj4+
PiAgMSBmaWxlIGNoYW5nZWQsIDExIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCj4gPj4+
Pj4NCj4gPj4+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUv
aTQwZV9wdHAuYw0KPiA+Pj4+PiBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQw
ZV9wdHAuYw0KPiA+Pj4+PiBpbmRleCA3YmNlYTdkOTcyMGYuLjhkNzk1ODY5MjIzNSAxMDA2NDQN
Cj4gPj4+Pj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX3B0cC5j
DQo+ID4+Pj4+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9wdHAu
Yw0KPiA+Pj4+PiBAQCAtNjAxLDEwICs2MDEsMTggQEAgc3RhdGljIGludCBpNDBlX3B0cF9mZWF0
dXJlX2VuYWJsZShzdHJ1Y3QgcHRwX2Nsb2NrX2luZm8gKnB0cCwNCj4gPj4+Pj4gIAkvKiBUT0RP
OiBJbXBsZW1lbnQgZmxhZ3MgaGFuZGxpbmcgZm9yIEVYVFRTIGFuZCBQRVJPVVQgKi8NCj4gPj4+
Pj4gIAlzd2l0Y2ggKHJxLT50eXBlKSB7DQo+ID4+Pj4+ICAJY2FzZSBQVFBfQ0xLX1JFUV9FWFRU
UzoNCj4gPj4+Pj4gKwkJaWYgKHJxLT5leHR0cy5mbGFncyAmIH4oUFRQX0VOQUJMRV9GRUFUVVJF
IHwNCj4gPj4+Pj4gKwkJCQkJUFRQX1JJU0lOR19FREdFIHwNCj4gPj4+Pj4gKwkJCQkJUFRQX0ZB
TExJTkdfRURHRSB8DQo+ID4+Pj4+ICsJCQkJCVBUUF9TVFJJQ1RfRkxBR1MpKQ0KPiA+Pj4+PiAr
CQkJcmV0dXJuIC1FT1BOT1RTVVBQOw0KPiA+Pj4+PiArDQo+ID4+Pj4+ICAJCWZ1bmMgPSBQVFBf
UEZfRVhUVFM7DQo+ID4+Pj4+ICAJCWNoYW4gPSBycS0+ZXh0dHMuaW5kZXg7DQo+ID4+Pj4+ICAJ
CWJyZWFrOw0KPiA+Pj4+PiAgCWNhc2UgUFRQX0NMS19SRVFfUEVST1VUOg0KPiA+Pj4+PiArCQlp
ZiAocnEtPnBlcm91dC5mbGFncykNCj4gPj4+Pj4gKwkJCXJldHVybiAtRU9QTk9UU1VQUDsNCj4g
Pj4+Pj4gIAkJZnVuYyA9IFBUUF9QRl9QRVJPVVQ7DQo+ID4+Pj4+ICAJCWNoYW4gPSBycS0+cGVy
b3V0LmluZGV4Ow0KPiA+Pj4+PiAgCQlicmVhazsNCj4gPj4+Pg0KPiA+Pj4+IEkgYW0gYSBsaXR0
bGUgY29uZnVzZWQuDQo+ID4+Pj4NCj4gPj4+PiBNeSB1bmRlcnN0YW5kaW5nIG9mIHRoZSBjaXRl
ZCBwYXRjaGVzIGlzIHRoYXQgdGhleSBhZGQgY2hlY2tpbmcgb2YgZmxhZ3MgdG8gdGhlIGNvZGUu
IFNvIGNvZGUgbGlrZSB0aGUgYWJvdmUgaXNuJ3QgbmVlZGVkIGluIGRyaXZlcnMuDQo+ID4+Pg0K
PiA+Pj4gSGkgU2ltb24sIHRoYW5rIHlvdSB2ZXJ5IG11Y2ggZm9yIHRoZSByZXZpZXcuIE15IHVu
ZGVyc3RhbmRpbmcgaXMgdGhhdCB0aGUgZHJpdmVyIG5lZWRzIHRvIHNldCB0aGUgc3VwcG9ydGVk
IGZsYWdzIGZpZWxkLCBvdGhlcndpc2UNCj4gcmVxdWVzdHMNCj4gPj4gd29uJ3QgZ28gdGhyb3Vn
aCBrZXJuZWwuIFRoZSB0ZXN0IEkndmUgYmVlbiBkb2luZyBjb25maXJtIG15IHRoZW9yeS4gSGVy
ZSdzIGFsc28gZXhhbXBsZSBwYXRjaCwgdGhhdCBhZGRzIHN1cHBvcnRlZCBmbGFncyB0byBkcml2
ZXJzOg0KPiA+PiBodHRwczovL2xvcmUua2VybmVsLm9yZy9pbnRlbC13aXJlZC1sYW4vMjAyNTA0
MTQtamstc3VwcG9ydGVkLXBlcm91dC1mbGFncy12Mi0xLWY2YjE3ZDE1NDc1Y0BpbnRlbC5jb20v
DQo+ID4+DQo+ID4+IFNvcnJ5IGZvciB0aGUgc2xvdyByZXNwb25zZS4NCj4gPj4NCj4gPj4gTXkg
dW5kZXJzdGFuZGluZyBpcyB0aGF0IHRoZSBodW5rIGFib3ZlIGlzIG5vdCByZXF1aXJlZC4NCj4g
Pj4gQnV0IHRoZSBodW5rIGJlbG93IGlzLg0KPiA+Pg0KPiA+DQo+ID4gV2VsbCwgeW91IGFyZSB2
ZXJ5IGNvcnJlY3QuIFRoYW5rIHlvdSBzbyBtdWNoIGZvciB0aG9yb3VnaCByZXZpZXcgYW5kIGxl
dCBtZSBzZW5kIGEgbmV3IHZlcnNpb24hDQo+ID4NCj4gWWVzLCBTaW1vbiBpcyBjb3JyZWN0LCBi
dXQgd2UgZG8gaGF2ZSB0byBiZSBjZXJ0YWluIHRoYXQgdGhlIGRyaXZlcg0KPiBhY3R1YWxseSBp
bXBsZW1lbnRzIHRoZSBmYWN0cyBjb3JyZWN0bHksIGkuZS4gdGhhdCBpdCB3aWxsIGFjdHVhbGx5
DQo+IGhvbm9yIHRoZSBSSVNJTkcgb3IgRkFMTElORyBlZGdlLCBiZWZvcmUgeW91IGFjdHVhbGx5
IGFkZCB0aGUgZmxhZ3MgdG8NCj4gdGhlIHN1cHBvcnRlZCBmbGFncyBsaXN0Lg0KPiANCj4gSSBk
b24ndCBzZWUgYW55IG1lbnRpb24gb2YgUFRQX1JJU0lOR19FREdFIG5vciBQVFBfRkFMTElOR19F
REdFIGluIHRoZQ0KPiBkcml2ZXIuIFRodXMsIEkgY2FuJ3QgY29uZmlybSB3aGljaCBlZGdlIGlz
IGFjdHVhbGx5IHRpbWVzdGFtcGVkLg0KPiANCj4gVGh1cyBJIHdvdWxkIE5BQ0sgdGhpcyBwYXRj
aCB1bnRpbCB5b3UgY2FuIGNvbmZpcm0gd2hldGhlciB0aGUgaGFyZHdhcmUNCj4gZWl0aGVyIGEp
IHRpbWVzdGFtcHMgb25lIGVkZ2UsIGluIHdoaWNoIGNhc2UgeW91IHNob3VsZCBzZXQgb25seSB0
aGF0DQo+IGZsYWcgYXMgYWxsb3dlZCwgYikgdGltZXN0YW1wcyBib3RoIGVkZ2VzLCBpbiB3aGlj
aCBjYXNlIHlvdSBzaG91bGQgc2V0DQo+IGFsbCBmbGFncyBhbmQgdGhlbiBleHBsaWNpdGx5IHJl
amVjdCB0aGUgY2FzZSB3aGVyZSBvbmx5IG9uZSBmbGFnIGlzDQo+IHNldCwgb3IgYykgY2FuIGJl
IGNvbmZpZ3VyZWQgYmFzZWQgb24gd2hpY2ggZmxhZyBpcyBzZXQsIGluIHdoaWNoIGNhc2UNCj4g
eW91IHNob3VsZCBzZXQgYWxsIHRoZSBmbGFncyBhbmQgdGhlbiBjaGVjayB0aGUgZmxhZ3Mgd2hl
biBwcm9ncmFtbWluZw0KPiB0byBlbmFibGUgdGhlIGFwcHJvcHJpYXRlIGVkZ2UuDQo+IA0KPiBU
aGlzIHBhdGNoIGRvZXMgbm9uZSBvZiB0aGVzZSwgYW5kIGlzIHRoZXJlZm9yIGluY29ycmVjdC4g
QXBwbHlpbmcgaXQNCj4gd2lsbCAiYWxsb3ciIHRoZSB1c2Vyc3BhY2UgdG8gd29yayBidXQgdGhl
eSB3aWxsIG5vdCBnZXQgdGhlIHN0cmljdA0KPiBiZWhhdmlvciBvZiB0aW1lc3RhbXBpbmcgdGhl
IGRlc2lyZWQgZWRnZSwgd2hpY2ggY29tcGxldGVseSBuZWdhdGVzIHRoZQ0KPiBwb2ludCBvZiB0
aGUgc3RyaWN0IG1vZGUhDQo+IA0KPiBBcyBhbiBleGFtcGxlLCBsb29rIGF0IHRoZSBpY2UgZHJp
dmVyOg0KPiANCj4gI2RlZmluZSBHTFRTWU5fQVVYX0lOXzBfRVZOVExWTF9SSVNJTkdfRURHRSAg
ICAgQklUKDApDQo+ICNkZWZpbmUgR0xUU1lOX0FVWF9JTl8wX0VWTlRMVkxfRkFMTElOR19FREdF
ICAgIEJJVCgxKQ0KPiANCj4gICAgICAgICAgICAgICAgIC8qIHNldCBldmVudCBsZXZlbCB0byBy
ZXF1ZXN0ZWQgZWRnZSAqLw0KPiAgICAgICAgICAgICAgICAgaWYgKHJxLT5mbGFncyAmIFBUUF9G
QUxMSU5HX0VER0UpDQo+ICAgICAgICAgICAgICAgICAgICAgICAgIGF1eF9yZWcgfD0gR0xUU1lO
X0FVWF9JTl8wX0VWTlRMVkxfRkFMTElOR19FREdFOw0KPiAgICAgICAgICAgICAgICAgaWYgKHJx
LT5mbGFncyAmIFBUUF9SSVNJTkdfRURHRSkNCj4gICAgICAgICAgICAgICAgICAgICAgICAgYXV4
X3JlZyB8PSBHTFRTWU5fQVVYX0lOXzBfRVZOVExWTF9SSVNJTkdfRURHRTsNCj4gDQo+IA0KPiBJ
dCBzZXRzIHRoZSBhcHByb3ByaWF0ZSByZWdpc3RlciB2YWx1ZXMgdG8gZW5zdXJlIHRoZSBjb3Jy
ZWN0IGVkZ2VzIGFyZQ0KPiB0aW1lc3RhbXBlZCBhcyByZXF1ZXN0ZWQuDQo+IA0KPiBUaGFua3Ms
DQo+IEpha2UNCg0KSGksIHRoYW5rIHlvdSBmb3IgeW91ciByZXZpZXcsIGFuZCBzb3JyeSBmb3Ig
bGF0ZSByZXNwb25zZS4gDQpUaGUgb3JpZ2luYWwgcG9pbnQgb2YgdGhpcyBwYXRjaCB3YXMgdG8g
Zml4IHRoZSBpc3N1ZSwgd2hlcmUgdHMycGhjIGZhaWxzIGR1ZSB0byBub3Qgc2VlaW5nIHN1cHBv
cnRlZCBmbGFncw0KKG5vdyB3aGVuIEkgdGhpbmsgYWJvdXQgaXQgaXdsLW5ldCB3b3VsZCBiZSBh
IGJldHRlciBwbGFjZSBmb3IgdGhpcyBwYXRjaCkNCkkndmUgcmVhZCBpbiBvdXIgZG9jdW1lbnRh
dGlvbiBGVkwgc3VwcG9ydHMgYm90aCByaXNpbmcsIGZhbGxpbmcgYW5kIGJvdGggZWRnZXMsIA0K
YnV0IGluIGk0MGVfcHRwX3NldF90aW1lc3RhbXBfbW9kZSB3ZSBhcmUgaGFyZGNvZGluZyBFVk5U
TFZMIHJlZ2lzdGVyIHRvIFJpc2luZyBlZGdlIG9ubHkuIA0KSW1wbGVtZW50aW5nIG90aGVyIGVk
Z2VzIHdvdWxkIHJlcXVpcmUgRENSLCBhbmQgSSBjb3VsZG4ndCBmaW5kIGFueXRoaW5nIGxpa2Ug
dGhhdC4gDQpJIHRoaW5rIGZvciBub3cgc2V0dGluZyB0aGUgcmlzaW5nIGVkZ2UgYXMgYSBzdXBw
b3J0ZWQgZmxhZyB3b3VsZCBiZSB0aGUgd2F5IHRvIGdvLiBEbyB5b3UgYWdyZWU/DQo=
