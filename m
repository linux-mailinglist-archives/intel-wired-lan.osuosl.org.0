Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4746B98813B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Sep 2024 11:23:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AAF1D845B3;
	Fri, 27 Sep 2024 09:23:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ne6JOYCUU_cA; Fri, 27 Sep 2024 09:23:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D62C6845A8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727428984;
	bh=CJu3nfTcoQyXCwokAkdptoxJV4E81OJ7RiJIXELqlzE=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=UFuBPpmTkz2BQCs2OpFzxqayr6ONMl85ltFYpfyLH5ZEUz94lUNItaJLoFMhwp+qk
	 glAufnJnLP2ol2FX+MruzmNdfPcF6mIbHq4ixPIxG5iJ4X1+OJ0hV4KIQ4Iw9KV3YR
	 jXkV4/CUBQyuvi4+eDX9gw511yIh1RRIE2y9qbV4LqCjtJu84+MpLA2COrGxn7yuY6
	 8bolP4icajPRrCc/s+bTzNHdVC6sCrMj4kSJCEaiyTzK47W6lB3DL+k6YPmv8b63Jw
	 +PR8yScm/YUDu9A74siOI+6RrvEBcc5Clpwu+qIKuSDbeygtxR7iVcZuNlKh77r85W
	 01eM1NITs3ZEQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D62C6845A8;
	Fri, 27 Sep 2024 09:23:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 356BA1BF2F0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Sep 2024 09:23:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 234FC84131
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Sep 2024 09:23:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4Xg2L5VBZymN for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 Sep 2024 09:23:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4AC1F840E3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4AC1F840E3
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4AC1F840E3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Sep 2024 09:23:02 +0000 (UTC)
X-CSE-ConnectionGUID: rxdKrAsoTIyPXXG0c3GLXw==
X-CSE-MsgGUID: 2VHAzgB1QoqXCzhJfbi5gw==
X-IronPort-AV: E=McAfee;i="6700,10204,11207"; a="51982163"
X-IronPort-AV: E=Sophos;i="6.11,158,1725346800"; d="scan'208";a="51982163"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2024 02:23:02 -0700
X-CSE-ConnectionGUID: 7UiFQS8xSWeF0C2Ovt7ItA==
X-CSE-MsgGUID: HTNsfIpyQAuharkG2RnMvg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,158,1725346800"; d="scan'208";a="77309250"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Sep 2024 02:23:01 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 27 Sep 2024 02:23:01 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 27 Sep 2024 02:23:01 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 27 Sep 2024 02:23:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YYokiGv7fx9ol9t1sOqLU0HrUcnU3ZNckmsc+DTKsuCY+ZrzEIfOZihZpJGfuRwgcvnVQ+Sadpr8n57smEx7hjIq8TyBhappgpUqMpu7GXAR4e2OoX2pG9YXcFmSkootQTrOQabOBwd3nGhSe5WmHoY8ADd130B3ck0iuVRDZe6oEzym76D8ucgZ06nCxyhJX0yi2XWAFoR3JljTC0nG8iSdPeZmDdwDrIlCim5N7e3d3BYxY7gz9SRCfsJS5+QfKMLMDAp1TFZ3EbGn9UxuWpbgZOu2gZe7qXEPog1q07I/xStkwKlFYmWmTQArZ2+49tdA/PkFMS/bp622rR4Xvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CJu3nfTcoQyXCwokAkdptoxJV4E81OJ7RiJIXELqlzE=;
 b=YplfZ1rGK6GsStzaNhoLYReUSHOqhn2UpKPD+w3im1n/3FUI0qMBWMdUfBWVmJHJvOefN+2H6iZimb6JiH5d1ZSwW4NwoXRt1uCiVCd3A7GayJ78s4Ap2RYzx5dg1P47InYXNQTzeQbTpiBcusUX67Ey+0czhYWbQNdM+RwCvPb/sui0izCd0Qcgi0Jt42tXmNgLwiwW246LtSYY5d1pcLYPrr+HrEVTEBn+MkMvCbEfQmQy/Y9u7ezVJLwbVHcEbWInjU1GIJBRBxM3e6iIkKgZoTnosgZb5DFLN5vsxuUxQ9hgnWtgUzLeaAlG2mmH4u78Ucv8oIhRjW71ChMpoA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com (2603:10b6:a03:428::13)
 by SA2PR11MB5050.namprd11.prod.outlook.com (2603:10b6:806:fb::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8005.23; Fri, 27 Sep
 2024 09:22:57 +0000
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5]) by SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5%6]) with mapi id 15.20.7982.029; Fri, 27 Sep 2024
 09:22:57 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next 2/2] ice: store max_frame and
 rx_buf_len only in ice_rx_ring
Thread-Index: AQHbAw0tzroUp9CFNU+cqKDnXr8XurJrd3cw
Date: Fri, 27 Sep 2024 09:22:57 +0000
Message-ID: <SJ0PR11MB58656F86D7490A52D8F2B3B38F6B2@SJ0PR11MB5865.namprd11.prod.outlook.com>
References: <20240909-e810-live-migration-jk-per-queue-max-frame-rx-buf-len-v1-0-f955205bc78f@intel.com>
 <20240909-e810-live-migration-jk-per-queue-max-frame-rx-buf-len-v1-2-f955205bc78f@intel.com>
In-Reply-To: <20240909-e810-live-migration-jk-per-queue-max-frame-rx-buf-len-v1-2-f955205bc78f@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5865:EE_|SA2PR11MB5050:EE_
x-ms-office365-filtering-correlation-id: faf7e603-17cb-4aaf-a658-08dcded5f942
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?YmcxL0pUY3JkMDNsT1h6NzhCMnY0ckREVHFkRlFZQ3MyZXMxRys4ZFJtcHcv?=
 =?utf-8?B?OWVZdkNPR1lmLzI3RUs0S0RWQVVubFprbUFVSktBcW8wMUhOWnQxWE95cGht?=
 =?utf-8?B?ZTk0aTFnU1ZLU05lQ0hncnZobm9sdEJZeVkrSVhPeFo0Vyt5R29KZ3E1dzRL?=
 =?utf-8?B?Z3J3OEJrTHIyeTlhWlJEblkyWHQ3L29NZFduaFMrTTZ5cmllbmk4ekFkRkRk?=
 =?utf-8?B?ZXVDMVdmT0wrYk83M2FWeDFQOGNlWmErSGVLUzFvd3dTUzlqU1F5Tmg2eWNj?=
 =?utf-8?B?aXBORUtucUFqWjZQdlRqSU15M2tNQVR6Z1RUVWo0NGk2eDhsYnhzeEUzM3NS?=
 =?utf-8?B?UkNSbXFFUFFUU2FacWpPV3JBd29reUZadnZiL2cxVEErNW94OVZhU2U5bGJr?=
 =?utf-8?B?S0FYV0xSS2pjVUEzaEI5VmZKb3c2WGlyREIvbTFYMXBsNE9ZZ2VpWW1SaHdS?=
 =?utf-8?B?VzVIYkFsTnp6bzhrRG5veHV0L3BpbUIvVjFhekxxUXBGcDFwVHg1MFpkbGdl?=
 =?utf-8?B?MlJVVEZyUitsSUFNVEl4Y2Jhd3c4WmZ3K3RQclNJT3BjZXlhRkl1cFV6eDBq?=
 =?utf-8?B?Y1oyUHpkeUtYSTJnbG10QmxBQWdhY2VFcGVqNm1taVdIVTFOZ1FEQUNuTkxv?=
 =?utf-8?B?L2pBRmh4aWJKbE9PUXR1UE5Ga3F2MFJROE53a09DbnI4Y1RoSG1JTUxjanhv?=
 =?utf-8?B?M000QkNXL3VqN09zUHJTdjUzNjJEQXc2bVdGcHhmNm1xYk5yczB1TkRldEZX?=
 =?utf-8?B?akFPZ3RrSTZXQzVHS0RvVnhPTUR3d3BoYklGeERuVmxwNDNPYnVnaVJNdDJF?=
 =?utf-8?B?M2VlL0QwV2F5TldsOEplQUdwUDhIbGM1MFI0d2xsd0NNOGF2UDl1M0xGMEo5?=
 =?utf-8?B?ZGZVbXNHZDMreTM3L1VVWWc4VWpaVjJpQmlSRGI2NmNNYkNvOTdYc0lRSkdH?=
 =?utf-8?B?MDhaS003OHpSaHhqcUVZZ2tJdFYxWlhQSDFFcHhmL0E4cUVid0RIMDVaRzVl?=
 =?utf-8?B?YmRBZG5aUnhyb2ErU3d3d1ZwKzE0VDV5MDNUVlJUaW5MeG9ENTVTRmpZZ3dz?=
 =?utf-8?B?YlQ0cE9pR3l1ZktxR1I0UHdhNE1CTEVFRG10a3NiVUJJOExQckJkWTdUY3Rh?=
 =?utf-8?B?S3RrMkRzUnhNbWR2OGtZZFA3MzJaUFdBQ3lTYkRPMkp4ZWIyV2ZuRkgxM1Av?=
 =?utf-8?B?MW9ieVNKSi9ldkduTmIzcy9SU1VYVnZzYTQ3NnEybjMzZzU5UEk3ZGRJSXY1?=
 =?utf-8?B?Uk5TYU1aRnhkK0xmb2t3TGJkODRtZENGTmdBaDB0QTgrNHFiZGIvWHZrYTZN?=
 =?utf-8?B?M3lrNnorYnA1VmZtNnB2YmhCZEErTURzMGFUd2t1SDlMRlJiT3UzRjgxT01G?=
 =?utf-8?B?RzlnVTcwbWRRdDRIYitFNGdmWUcwMFFXSEYvTHFSTGR6VmY3a2YyUE44bGFm?=
 =?utf-8?B?cHY5SUdpcHkrMWpqU1dnWFlJV0pnY2dFWlpyUDQ0U0w0S3dQd3FPZ3FiREg4?=
 =?utf-8?B?VWx5bW5mNGh4WUI4RHRIWEJrYm9sc1RTeTMvSVV4VFIwdnhDVXhXK2dtcHkz?=
 =?utf-8?B?d2pHZis5RUtMS2dycXo5SUtaaFRnR2xZbEFEeEY4cWMyd2Vtd2Fmd2hmSHFX?=
 =?utf-8?B?ODZsYllLZU1mWTVPenorbVVQLzJHR1ErVGM0NnQxUSs5ejNCYXVHRUZPNTBQ?=
 =?utf-8?B?TDBHVXFtZXBaZTF1MGlXRUplN0hOMnRBenR4NlNFT0tMZk5tRE9iQXdhc2k1?=
 =?utf-8?B?Y0s3K3k4WlNaNURwRVhHbWNpNndYWndiS0VKN3A3OTAvSFFJOE9Ibld5SE5O?=
 =?utf-8?B?ZFlJQjhmZlZUQ3dRb3NxMng4WGZRaE9WMGN4VkNXMjBpbG1NT3ZDWjJNTWdz?=
 =?utf-8?B?cGlvdDQ2WFo0RWI5MnpiTGJvckt4WUdWaGlzdlZseGRkeEE9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5865.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?R2ZtQ3dEN1FkS1JMbmEybG52NEtsVDU1YmVDcDZMdVA4R1hDamJjMEIxVVpZ?=
 =?utf-8?B?RVk1V3REVzRGWlVLNFlaREJwOWFreTNZMEE1aU9XNnNrQmFYQi9aZDdTWFow?=
 =?utf-8?B?YXd4dk9zSjFmMDRFTitqSSs1S3lYZnpITnFzZnRRU2RoYXdNV1MyVzgzS3hQ?=
 =?utf-8?B?S2wzU3d6OW5CRHRsTlBraXJBRXdZRExlQUxuazgyU085QWVrT0dQeDRBZytr?=
 =?utf-8?B?MXU2SFlRZGpMcXpGbW15Z0kvQW1JS0EyRWFGMzlSakh1bWJCay9GUXNFNita?=
 =?utf-8?B?ekFQR1ZnVXFTSVo1ODJSM2psbUtuWDVyWHVna250ZEhqR21PazNkazJ1QmFo?=
 =?utf-8?B?NWFQaWhNeTRNeG8waU5qWkNjNkg3ZlYyWERtMFhBVnk5ems0aktpdkwzUXRB?=
 =?utf-8?B?bzEzU1dOeFVrWlJFU2RvQWc2UFZuVm11ak5peTdTUTdJV2ZmZ3FveGNqVDJS?=
 =?utf-8?B?WG4xSVBibTJHbWoySktENTJObFlSYkNPcTlzQ3VHWWpaRHhxb2ZhMGxnTllW?=
 =?utf-8?B?TkM2OEhnTVhHblZ2cTI3cXRPdmowL3VDcEs2UzNEdGpDaWdOZWxRV2xwako2?=
 =?utf-8?B?VUlEQm1wVFBzdjYydHNoamlFSXRhUHhKNHQwb0tFbjVmcFh2VnVnRWRUUDZq?=
 =?utf-8?B?Ung5YjcveXFmWnh2RnJTOXRTOFA4M05VQi8yUm9yR1VxeHgyTm5nMStXU2hO?=
 =?utf-8?B?N3M2ZkxKOFNHYWk0QXBnNGtUYUVXdFlia2c2bm00VjM0UXYyU21IOEU0ODJh?=
 =?utf-8?B?SUZNaHkwQks3eHpxSC90Yy9vdU9oNWRCd0Q0TnpiZ201Z2tKTlA3cEFoZ082?=
 =?utf-8?B?T2ZEVkhjM2tlTjF6V1ZjcVBHdTlrckhaeS9LWUdnYWtBNGhINE43Rk12VHIr?=
 =?utf-8?B?ZkY1K3pwVzlXVDVVU084QVZjTVlFMGd3Smg1WGpUV0xad1MzbEZVdTdwSUJo?=
 =?utf-8?B?SEFaL3BKWUhuanJtdlhNSWNsaUVEN2V2bXJIQ0kxTkZ6MnZoZWxoY012Uzl0?=
 =?utf-8?B?QzMraWdrd09pWG82VkdMeEtkR25XYlYwOGJmZ3NBdkd1RmpGdWk1QytDUTlG?=
 =?utf-8?B?d01JUDlrNWt0bmxuYWh2VEV4ZmQ5Tkg0YkVXVFB6ODZJQVZHVmhidDcrMXJp?=
 =?utf-8?B?WjFYbkd1cGlwT1FJOFJ1RGpPMWdKT0hoMEtKTVpqV3FJY21xWEpQRmFySUpo?=
 =?utf-8?B?OUZ1NWVtMFhsZkpQK0hHQ1ppbXl2WkkrcjNNb0o2aGw1aCtiazhkSHpxQmdl?=
 =?utf-8?B?SVh0cVJldWQrKzh3a3VaS0dHODVQU3JBaU14ZHVvTGEwcnVlTVBTengvNGpK?=
 =?utf-8?B?b2dDMy9EQ1p4a1MxRzdVejQ0VE8zZ05qNXhTRHZLVlVsWEh4NVlKTS94elJF?=
 =?utf-8?B?Y3o5RmZLcWE4M3EwSy9QTmJnT1Zlb09PSEx5Ky95cWNqcGVpbWpSTUVzSUpl?=
 =?utf-8?B?anhKMWdoeVhEZzhyWnJEY3dEZkZTOG82Vi8rc3IxenluUmU5SjE2S2tKQzlq?=
 =?utf-8?B?NE5qZnNMaWM5OFkyUW9uQ1lEY0F5Z1g1bm5INU1Eajc1bEFpVlRhTVlCNWxZ?=
 =?utf-8?B?bzN0M2VWUkhwR2VXdU43bGJIbW5LcFZLMEIyR0o4SUpBT21VUWo2Rm5RSUVZ?=
 =?utf-8?B?cU1Od0NZc1ZVMjRvNHo2N25kZlhHcVN3cFlSMGxDNGNmdWdVa0xzdTZRNTRN?=
 =?utf-8?B?endNRXArUjBteEJaQjJ1WGljYmVzck1SdjBJWVExRmpNeEo2WmltMitPbURy?=
 =?utf-8?B?ZVBQQzczSEFYbnJKWXBOWlBqTzdzQTJRYVBjQkJTSjkwTzBESk5yS3BXMHFr?=
 =?utf-8?B?Q3RyUUVsRGxHbEZjOEJlQS8wTEh5UDRiQUZ0T1E5S3ZaTjlUVnBib0djcDA0?=
 =?utf-8?B?bEFkR3FVTHJEdHR6TUp0OHVLekEwWVR5eTAwZEtidUJWdE9SZUI2aTN0UXAx?=
 =?utf-8?B?VGZBTTJHQ25NZDNGOFl0d3poVVRSWHh2NXQvQVRVQWNYbk90SHFmQWRITlY2?=
 =?utf-8?B?anR2ZDlxU1FqK0RUbHY5QmhHRGVObGgrOCtoeDE3RWU3T1dDOFdZTHRxKy90?=
 =?utf-8?B?VXRvSHpGS1BnM2d3Z0p1TitnRjBhTk0wRFl1RUpsRE14RlpqTXhEdjUwclhI?=
 =?utf-8?B?dHo1MU56RFZaVEhLeDkxcTh1c2FQUmI4cnBVby9ydkozbXNhNzd1MCtPMkV4?=
 =?utf-8?B?bWc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5865.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: faf7e603-17cb-4aaf-a658-08dcded5f942
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Sep 2024 09:22:57.0669 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /qqnfSfEfGRvRHwp+uGamdfGvk46j2ziWeZtH6UoEKgdJoSRKwRfikY2837QpgrCVR2KwuzwSvrXrsFL4Cm/za+iSbUJLAszsBzcKnwEKWk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5050
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727428982; x=1758964982;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=CJu3nfTcoQyXCwokAkdptoxJV4E81OJ7RiJIXELqlzE=;
 b=e8aSg91j5f3V25QW9wdrL8sxOIYAeaILDXC5rSn99SzR74hJxYoH43vp
 phRY4WHrQJnkp7pth8YXRlfy4igyTawVyYQOW7hQNuoyijV50RLHV7Uk8
 8239hGGfjp8NrQRivmhmAJZbKJMFK02aQKxSnXbB47ATKxr2XkPw+7Afv
 ji5eBCmGYhFyxLFmFhaXTh2veRLFKeJMrVhRscrI7wE3AJS9g3/uuHLyg
 Owp2hHe5nnnBmrSDvTvR3ZULp3e+c83D1np8oGHp5mFx2x4kp0hPa8UJt
 JgMaJe0eBa97sFeHdi2+rtVAIHBYRjfgoIFKDMVfzL8YiT/NH/nZtEkLC
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=e8aSg91j
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 2/2] ice: store max_frame and
 rx_buf_len only in ice_rx_ring
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
Cc: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC13aXJlZC1sYW4gPGlu
dGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZiBKYWNvYg0KPiBL
ZWxsZXINCj4gU2VudDogVHVlc2RheSwgU2VwdGVtYmVyIDEwLCAyMDI0IDE6MDggQU0NCj4gVG86
IEludGVsIFdpcmVkIExBTiA8aW50ZWwtd2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmc+OyBOZ3V5
ZW4sIEFudGhvbnkgTA0KPiA8YW50aG9ueS5sLm5ndXllbkBpbnRlbC5jb20+DQo+IENjOiBLZWxs
ZXIsIEphY29iIEUgPGphY29iLmUua2VsbGVyQGludGVsLmNvbT47IEtpdHN6ZWwsIFByemVteXNs
YXcNCj4gPHByemVteXNsYXcua2l0c3plbEBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFtJbnRlbC13
aXJlZC1sYW5dIFtQQVRDSCBpd2wtbmV4dCAyLzJdIGljZTogc3RvcmUgbWF4X2ZyYW1lIGFuZA0K
PiByeF9idWZfbGVuIG9ubHkgaW4gaWNlX3J4X3JpbmcNCj4gDQo+IFRoZSBtYXhfZnJhbWUgYW5k
IHJ4X2J1Zl9sZW4gZmllbGRzIG9mIHRoZSBWU0kgc2V0IHRoZSBtYXhpbXVtIGZyYW1lIHNpemUg
Zm9yDQo+IHBhY2tldHMgb24gdGhlIHdpcmUsIGFuZCBjb25maWd1cmUgdGhlIHNpemUgb2YgdGhl
IFJ4IGJ1ZmZlci4gSW4gdGhlIGhhcmR3YXJlLA0KPiB0aGVzZSBhcmUgcGVyLXF1ZXVlIGNvbmZp
Z3VyYXRpb24uIE1vc3QgVlNJIHR5cGVzIHVzZSBhIHNpbXBsZSBtZXRob2QgdG8NCj4gZGV0ZXJt
aW5lIHRoZSBzaXplIG9mIHRoZSBidWZmZXJzIGZvciBhbGwgcXVldWVzLg0KPiANCj4gSG93ZXZl
ciwgVkZzIG1heSBwb3RlbnRpYWxseSBjb25maWd1cmUgZGlmZmVyZW50IHZhbHVlcyBmb3IgZWFj
aCBxdWV1ZS4NCj4gV2hpbGUgdGhlIExpbnV4IGlBVkYgZHJpdmVyIGRvZXMgbm90IGRvIHRoaXMs
IGl0IGlzIGFsbG93ZWQgYnkgdGhlIHZpcnRjaG5sIGludGVyZmFjZS4NCj4gDQo+IFRoZSBjdXJy
ZW50IHZpcnRjaG5sIGNvZGUgc2ltcGx5IHNldHMgdGhlIHBlci1WU0kgZmllbGRzIGluYmV0d2Vl
biBjYWxscyB0bw0KPiBpY2VfdnNpX2NmZ19zaW5nbGVfcnhxKCkuIFRoaXMgdGVjaG5pY2FsbHkg
d29ya3MsIGFzIHRoZXNlIGZpZWxkcyBhcmUgb25seSBldmVyIHVzZWQNCj4gd2hlbiBwcm9ncmFt
bWluZyB0aGUgUnggcmluZywgYW5kIG90aGVyd2lzZSBub3QgY2hlY2tlZCBhZ2Fpbi4NCj4gSG93
ZXZlciwgaXQgaXMgY29uZnVzaW5nIHRvIG1haW50YWluLg0KPiANCj4gVGhlIFJ4IHJpbmcgYWxz
byBhbHJlYWR5IGhhcyBhbiByeF9idWZfbGVuIGZpZWxkIGluIG9yZGVyIHRvIGFjY2VzcyB0aGUg
YnVmZmVyDQo+IGxlbmd0aCBpbiB0aGUgaG90cGF0aC4gSXQgYWxzbyBoYXMgZXh0cmEgdW51c2Vk
IGJ5dGVzIGluIHRoZSByaW5nIHN0cnVjdHVyZSB3aGljaA0KPiB3ZSBjYW4gbWFrZSB1c2Ugb2Yg
dG8gc3RvcmUgdGhlIG1heGltdW0gZnJhbWUgc2l6ZS4NCj4gDQo+IERyb3AgdGhlIFZTSSBtYXhf
ZnJhbWUgYW5kIHJ4X2J1Zl9sZW4gZmllbGRzLiBBZGQgbWF4X2ZyYW1lIHRvIHRoZSBSeCByaW5n
LA0KPiBhbmQgc2xpZ2h0bHkgcmUtb3JkZXIgcnhfYnVmX2xlbiB0byBiZXR0ZXIgZml0IGludG8g
dGhlIGdhcHMgaW4gdGhlIHN0cnVjdHVyZSBsYXlvdXQuDQo+IA0KPiBDaGFuZ2UgdGhlIGljZV92
c2lfY2ZnX2ZyYW1lX3NpemUgZnVuY3Rpb24gc28gdGhhdCBpdCB3cml0ZXMgdG8gdGhlIHJpbmcg
ZmllbGRzLg0KPiBDYWxsIHRoaXMgZnVuY3Rpb24gb25jZSBwZXIgcmluZyBpbiBpY2VfdnNpX2Nm
Z19yeHFzKCkuIFRoaXMgaXMgZG9uZSBvdmVyIGNhbGxpbmcgaXQNCj4gaW5zaWRlIHRoZSBpY2Vf
dnNpX2NmZ19yeHEoKSwgYmVjYXVzZQ0KPiBpY2VfdnNpX2NmZ19yeHEoKSBpcyBjYWxsZWQgaW4g
dGhlIHZpcnRjaG5sIGZsb3cgd2hlcmUgdGhlIG1heF9mcmFtZSBhbmQNCj4gcnhfYnVmX2xlbiBo
YXZlIGFscmVhZHkgYmVlbiBjb25maWd1cmVkLg0KPiANCj4gQ2hhbmdlIHRoZSBhY2Nlc3NlcyBm
b3IgcnhfYnVmX2xlbiBhbmQgbWF4X2ZyYW1lIHRvIGFsbCBwb2ludCB0byB0aGUgcmluZw0KPiBz
dHJ1Y3R1cmUuIFRoaXMgaGFzIHRoZSBhZGRlZCBiZW5lZml0IHRoYXQgaWNlX3ZzaV9jZmdfcnhx
KCkgbm8gbG9uZ2VyIGhhcyB0aGUNCj4gc3VycHJpc2Ugc2lkZSBlZmZlY3Qgb2YgdXBkYXRpbmcg
cmluZy0+cnhfYnVmX2xlbiBiYXNlZCBvbiB0aGUgVlNJIGZpZWxkLg0KPiANCj4gVXBkYXRlIHRo
ZSB2aXJ0Y2hubCBpY2VfdmNfY2ZnX3FzX21zZygpIGZ1bmN0aW9uIHRvIHNldCB0aGUgcmluZyB2
YWx1ZXMgZGlyZWN0bHksDQo+IGFuZCBkcm9wIHJlZmVyZW5jZXMgdG8gdGhlIHJlbW92ZWQgVlNJ
IGZpZWxkcy4NCj4gDQo+IFRoaXMgbm93IG1ha2VzIHRoZSBWRiBsb2dpYyBjbGVhciwgYXMgdGhl
IHJpbmcgZmllbGRzIGFyZSBvYnZpb3VzbHkgcGVyLXF1ZXVlLiBUaGlzDQo+IHJlZHVjZXMgdGhl
IHJlcXVpcmVkIGNvZ25pdGl2ZSBsb2FkIHdoZW4gcmVhc29uaW5nIGFib3V0IHRoaXMgbG9naWMu
DQo+IA0KPiBOb3RlIHRoYXQgcmVtb3ZpbmcgdGhlIFZTSSBmaWVsZHMgZG9lcyBsZWF2ZSBhIDQg
Ynl0ZSBnYXAsIGJ1dCB0aGUgaWNlX3ZzaQ0KPiBzdHJ1Y3R1cmUgaGFzIG1hbnkgZ2FwcywgYW5k
IGl0cyBsYXlvdXQgaXMgbm90IGFzIGNyaXRpY2FsIGluIHRoZSBob3QgcGF0aC4NCj4gVGhlIHN0
cnVjdHVyZSBtYXkgYmVuZWZpdCBmcm9tIGEgbW9yZSB0aG9yb3VnaCByZXBhY2tpbmcsIGJ1dCBu
byBhdHRlbXB0IHdhcw0KPiBtYWRlIGluIHRoaXMgY2hhbmdlLg0KPiANCj4gU2lnbmVkLW9mZi1i
eTogSmFjb2IgS2VsbGVyIDxqYWNvYi5lLmtlbGxlckBpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZS5oICAgICAgICAgIHwgIDMgLS0tDQo+ICBk
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3R4cnguaCAgICAgfCAgMyArKy0NCj4g
IGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfYmFzZS5jICAgICB8IDM0ICsrKysr
KysrKysrKysrLS0tLS0tLS0tLS0tLQ0KPiAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNl
L2ljZV92aXJ0Y2hubC5jIHwgIDcgKysrLS0tDQo+ICA0IGZpbGVzIGNoYW5nZWQsIDIzIGluc2Vy
dGlvbnMoKyksIDI0IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0
L2V0aGVybmV0L2ludGVsL2ljZS9pY2UuaA0KPiBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVs
L2ljZS9pY2UuaA0KPiBpbmRleCBjZThiNTUwNWIxNmQuLjdmNjA2ZjkyNzdmMiAxMDA2NDQNCj4g
LS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZS5oDQo+ICsrKyBiL2RyaXZl
cnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2UuaA0KPiBAQCAtMzcxLDkgKzM3MSw2IEBAIHN0
cnVjdCBpY2VfdnNpIHsNCg0KDQpUZXN0ZWQtYnk6IFJhZmFsIFJvbWFub3dza2kgPHJhZmFsLnJv
bWFub3dza2lAaW50ZWwuY29tPg0KDQoNCg==
