Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 65F319C8798
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Nov 2024 11:32:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2015560A6A;
	Thu, 14 Nov 2024 10:32:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cI6g8hqAY4cZ; Thu, 14 Nov 2024 10:32:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4DDE160A5B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1731580323;
	bh=IAA88w+az+KKVCfadwACCbSo142aTu0TG3y1wRLj910=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Wp3dI7tiIMPaMS8WI7YCq6bugQAjwVAUzfQ5IAZLt53a2dN2NfNw8r2RBi1ZbGqgq
	 ToLRCWXxgAd5KMx0NRrnFjTAR+1B4YLa0PMkuB0ghgHeiTLvjSj2UBtXtghbbSe9Ii
	 d23ndDu//iUtQ40BE6vT2yOncQRQHcj5ePjl5cJzkOZBmvyQEkSLF7+L35JvEDuAyJ
	 BSojw1Vcwj/a0NMXWdcAsMZTwgYGqCn41XrnJ55qKP+kLy+jsUFtI5wmxIzZCeRpnV
	 QW4ftY4B/PqqLZviiVfNKpg00suL0pjkKGrs4cLyD5a2FtTyYcD27nMfGjW02qqakL
	 kfCQdyDuSm+YA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4DDE160A5B;
	Thu, 14 Nov 2024 10:32:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id E1929972
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 10:32:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C11DC4061A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 10:32:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zh0jn8sxgfF5 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Nov 2024 10:31:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 803C940684
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 803C940684
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 803C940684
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 10:31:59 +0000 (UTC)
X-CSE-ConnectionGUID: C1hOYxCATP+w+AX5yeoXeA==
X-CSE-MsgGUID: 3isXeVmtR/qxc8KS5Cvzmg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="31292791"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="31292791"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2024 02:31:58 -0800
X-CSE-ConnectionGUID: gA/fGRGZSYGFxg3x61WPpw==
X-CSE-MsgGUID: v3FQOtyQTuajW7JUES1c7A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,153,1728975600"; d="scan'208";a="88591925"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Nov 2024 02:31:57 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 14 Nov 2024 02:31:56 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 14 Nov 2024 02:31:56 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.172)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 14 Nov 2024 02:31:54 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xqtH6bhiSRx6Kw+Y207K1oe00W4uetZr/yGEVOsEK+TzHVJ58CCZEHR7ugPazV6ro9IOC31k+wBNXAudC5YR1u6AF6DP+JfyXvabHPi7mzm5HNfQ8mjAgwyjojiINnDkZYVkc1XWsvh7GziAy9wad7vxl3yYe8M8dSlPeIkTuaCNv7aW/D0tE1gO2tZgrpeg8MI1WqZHt8hO60U1rzipWRu+b2u8MapaYpJiEdo0a9XIlkYpoTwnQLMivffMaDbXDSxKOx7EdpqXIhVdjrcIw6dKqnkxlsdW9+hHIj6wUsAdbcOrn/kN2kYU4QGqAvxx2nIwTBBaNS5uYx+VCCkVsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IAA88w+az+KKVCfadwACCbSo142aTu0TG3y1wRLj910=;
 b=Nya8v/2A+kzm5n1mfmL12YNWounfuOCePE5w9exGN29Ucu69JeSFybWvggOjvEqzAEN9vNrXk+M917T8VFGNfTjvAufaN4mpvcj2iEPl3i30w1STWH59fjQNCwZHn8hto2oea4ROmv24fo8HMuh4JcTDW/vV1283H9tyfC+9gjOVs/577gB+hTLKaXQAMvZeDbMxVXaPaGjCY4rf9UxpiAp5TjngiZSDLK2McNIA06UWtQfhUj3ZuTqtuDrQG/BVrgGifwjioWunCbYtEj2FkbYme+N+hlRG6PJBYcJ9i9Ny+XDNX5o4csunM/NuUIXppMMzEsHmLY30ZtiL1E9ZaQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com (2603:10b6:a03:428::13)
 by LV8PR11MB8581.namprd11.prod.outlook.com (2603:10b6:408:1e5::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8114.30; Thu, 14 Nov
 2024 10:31:47 +0000
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5]) by SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5%5]) with mapi id 15.20.8137.027; Thu, 14 Nov 2024
 10:31:47 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Paul Menzel
 <pmenzel@molgen.mpg.de>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Yifei Liu <yifei.l.liu@oracle.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net 2/2] ixgbe: downgrade logging
 of unsupported VF API version to debug
Thread-Index: AQHbLLKrp7hN20vmsEy2HCFA1EHVSLKjjoOAgAXCRICADVaN0A==
Date: Thu, 14 Nov 2024 10:31:46 +0000
Message-ID: <SJ0PR11MB5865C4EB9A1AC25B2F5265A08F5B2@SJ0PR11MB5865.namprd11.prod.outlook.com>
References: <20241101-jk-ixgbevf-mailbox-v1-5-fixes-v1-0-f556dc9a66ed@intel.com>
 <20241101-jk-ixgbevf-mailbox-v1-5-fixes-v1-2-f556dc9a66ed@intel.com>
 <4458eca8-f0e8-485f-9b7d-d5d17105d090@molgen.mpg.de>
 <4bffa148-caae-4004-960f-a4d09e82329e@intel.com>
In-Reply-To: <4bffa148-caae-4004-960f-a4d09e82329e@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5865:EE_|LV8PR11MB8581:EE_
x-ms-office365-filtering-correlation-id: 70af5629-75b4-4e45-c322-08dd04978ab2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?V2E1RC92bmJqOU1oVzEyaGpaT2pvZkFOeWtTZm1sOWw2K3ViWkF0a0RVbGsr?=
 =?utf-8?B?akZKaVVVRkdGMlozVzNMQStOMkdKbFBCbTVVd2V5TE5xK2tQRHlvK2JhSmsz?=
 =?utf-8?B?RENSQ3ZaRmlvMUFaTHhTZGRkS28zS200VG9teVdydGxEZzZLLzR1ZEgvN3JI?=
 =?utf-8?B?MGEwS1d3Vis2ODBWWlYzWDdsbjJadVhlNzg5eWdGU2c3SG43UGdGa3JuSUJl?=
 =?utf-8?B?STQxL0R4YWh4MGRIK21Dbk45VTNqR1JuWXUxN2Vaa0JPcTFMQytyak5LME0y?=
 =?utf-8?B?Z0hYN1gvbmsvaHR1SE9TWGxaZFh4dStWMEI4RnhvVEZkSk1kWVNrdW00T0xU?=
 =?utf-8?B?YTV0eVhDaHoxUjZhSGlYaUhGRDB5NzVaV1VmRjcxRXB3bmkrdFFZZHZrWk9Z?=
 =?utf-8?B?Q0NRcEtLdHoyYnF3TTBNQWtNaEF6WVlPd0k1eVFHQTQxbVBqOEZ0ZjNWRjFo?=
 =?utf-8?B?SHQyZjAxa1NIemtUY3NGdU9CbzZyM08ybDZjVWhIeGNrZTZhR05ocTVHa3N0?=
 =?utf-8?B?WG9IZGkyb0VYNWJmL1JaaW50bG1FM3YvVlgrZWFsR2ZndzFtbndWUmthSmNu?=
 =?utf-8?B?Y1ZlTFJtdWIvUm5sbXJybTFIUWFiUmx5dytjbmpQUVBneENuWVpsNnArVWhQ?=
 =?utf-8?B?R0lNWVVZS1BOL0VtRXJPS3hYa0RoOUd5b3E4TGdhM2VQRWQyQnc4VkMycTNC?=
 =?utf-8?B?WlVTa2lnTHNGWEs4bi9GUDU2U3NQeG9IQWQ2bi9mb0RUQ1ZMQ3F2QXlNVzM4?=
 =?utf-8?B?d0YvQW5zWUZrRVk4a3FIQ3VHOTRWYVpMNWVUaDVSdFc1RXFYdEpPS0c2UTBI?=
 =?utf-8?B?eTdDc1BBRDJuU2w0WUt1YVVVLzE3U1k2bUlSTDcwckJiR1I5S3EwL1YvbnlE?=
 =?utf-8?B?UWNVUXRLN3hCMmZiTjhzTVN5VDBsN3FlOHhGMGEvOTlGQ2YvUWNuSU0vT3Er?=
 =?utf-8?B?UldraHh2QnllNlo4eEFUdFV2UU9zMG44cHo4NlhURm1ReUFhbE43Z3BjRHZQ?=
 =?utf-8?B?TnQ0LzJ6bkpOVDBrRytTOUcrYUpXR0dzYkxRTkRDTExzb1V1ODc0SDNmK1Nh?=
 =?utf-8?B?WmhPaG1TWGhld0ZiVnhCTzlITjBYcHNJSWZ6NTZhLy9NM0QwMktYMXY2dU9q?=
 =?utf-8?B?Nkh6VlE2WWtUYUR0Y3IrdCt5VGc5N1VaNGpaVFRxTm14Z0VsdEx1Ly9vaHNq?=
 =?utf-8?B?dmc1Z1BPY1kyQVNnb2JLbXdsUWJIUlRCaVlzblEyN3l6WTZSdVdyeDdzYTZF?=
 =?utf-8?B?WHFGZXJaSlpOMlNPc0RDVTRpdlJIOHoxQlJOUFZGUjBiYXBVeHRCN09CMzlm?=
 =?utf-8?B?anRhQng0bTB2Ly8vd2svRjZlZjJLbm1oenBYTDR3QjRFZWdiRjFWUDdNM0Vy?=
 =?utf-8?B?c3hSVWJMZ2h2RGRtSVBaMGRLQTNCdWthRDBBdjJpTjg3bEh6SzVyanl4QWZX?=
 =?utf-8?B?cHJEb1ZlblgxYVE2K203SjRNMjNqRWZMYXA4VGVzdjZnaHVTQ2tKU2FDWkgy?=
 =?utf-8?B?ME41ZVBsZUNxbWdtUzR1V1paVjYzTXNLQjFuclBxUHRsQWFDa1BkWTJGYXds?=
 =?utf-8?B?ZFBsMVdhQTV2Z2tUaTQxVnQ5YXBaeGNZOHVMczN2elZrcDgvandBcUUrSHFz?=
 =?utf-8?B?aHkwclc1OUx1M3pwRW8rcmdFMXc0TDhmc21tOGVNVW4vcDQ4cGQrRlB4YmNL?=
 =?utf-8?B?WUR4T0hrREJpRlNobnBZQUhLNFNGY3dYTHRqM3RqK0I5STdpY1paUnlIVG1i?=
 =?utf-8?B?cE5HNmpvU21YT0hkaUt1S1oyZThMaUJDamV3clIxaFVZK2FEdUZLamRQdzNv?=
 =?utf-8?Q?uyZd+BDsYpaw0uOrC03lQQZ+j4HGBBOv7UvMs=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5865.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NTMyNDR0bUdxOEx4dEMxVWxMajNNeVNUbU90dm8xZkcrNGhYNE5GWEZjVk1I?=
 =?utf-8?B?aHVXU3VOOTNKOUNXd1hQK25LTHJJaTByT28wbHk1VVR2UmJiSG95Z282VFhR?=
 =?utf-8?B?TE0xbUpWUW1wRW5nOWM2QWQ4SjQ1MDc1bzVjVVZ5UE95dnpxcEdZTFkvTDU4?=
 =?utf-8?B?dzhpVmNqMWdWOHorVWhRV256VjFwemU1OWgwVk5RMmcwNUJTVEs5VER4dHRq?=
 =?utf-8?B?SFAvcXhRSEZ1UFhTZHlxdXR2THFENngwVFllcTdRdEk1RTlRZXJERFdGbkhD?=
 =?utf-8?B?alBlcEVUWjZLSEJyN2RIMlBoM0k2c3duNnkxOUVjWkxmaEVGRnVnRVIxeFlm?=
 =?utf-8?B?NllVY2lpSnlwNkdrYytERExmNlZFb3VHTHZPWnNXNEp4Zm5mTW9uREJOZS9V?=
 =?utf-8?B?VDhtRGlvbDZLaXV1ZHdQUTIzT3hwaHcwSm1pZ1AwSTFheVlDakRmZlpjS0Nm?=
 =?utf-8?B?VWZ4a2lrS3FEMzFBeEtCckJkR2dickFNVXBCV3hqTGM5N3VDWlZtV1d2YjlQ?=
 =?utf-8?B?UE5Ud1lDK3dBWTVYRTl1Z05OL2lHNUhrQUtkL3dRQ1pCNVZhL0Q3Zm5QUWRv?=
 =?utf-8?B?aWhHcjJ3UkFYampWOWFpSHlQWW05Y3o4NU5DUnVwSW0rQWMxSlRDb1VRWFZU?=
 =?utf-8?B?elFDQVQ5c0NPc2JSQkkvSzBYeVNWaEtVNFBlaE9qZFpRUVNkeXBvajg5OE0y?=
 =?utf-8?B?VHhjZEs3NG9xUzRXYWxaY1NLRGd4Q2ZhZThHdGJiUVI5Wjk5cXpiOEUrOGJG?=
 =?utf-8?B?V3NjU2tibFZxd01zWmRwUVdDQmEzSlNXYzRWd3J2Q3ZZK2QrK0huUDd2Q1V4?=
 =?utf-8?B?RXI3TnRVa3VNSjFNS1E0NDgzUWE4VUgxcEsvajVYYUdncXFnM1ZodVkzb0hL?=
 =?utf-8?B?QkJsRWlpN3F4akVsNXhPd0hqaTBIenR0bVo1eGEwTnhCdkRGd1pRNWNwNFEr?=
 =?utf-8?B?T1JqTGhYZUJ6TjZ0cTJzYVBHQ3E2a1Z2a3BJSmczOTlQUTlQRkNZcFNZTldk?=
 =?utf-8?B?VGdmQVFsRG5KZHFzZFBUWDJrQ1VQMzFOSmU4R3pKM29Ga2JZR0dxYWEyaldE?=
 =?utf-8?B?TENycVRXQUY4Y3k4NnhXU1lLSTJuSUVXRzJBd1VFOVkvSHFjakNVSjJHbTc3?=
 =?utf-8?B?ajV2RFBtTzVaMjQzNnpoZm1QMEtQWS9Rc2sxREdLUm84SWJHRFhoQmIrMmVa?=
 =?utf-8?B?TFBvajVrTFQyUjluMEplVTlMaXprRU81V2FkV2VJVXZ2SURabEQyYitVdkVk?=
 =?utf-8?B?OHRHUURFLzVYTE54V0RQb3N2V0dCRjYxRXRNTklEVHhrRTI0OHc2YWNxYmtM?=
 =?utf-8?B?YTlaNW1GV2hsOW1uQnNUa2lZckpOOER4ZDRLWGx3RU9SWXVFOWs3MHVucWV3?=
 =?utf-8?B?Wm1obGtia2FLVnlFMS9hSHdGYWhTNmdONmVlUG00RmxkUE51VHlleDRIQWh4?=
 =?utf-8?B?OG5WQjRrTGZuQ3RSUVZNLzFuS0pjNUcrN0ZZRlB1Z292QmxNOHlhTFVWRWph?=
 =?utf-8?B?ZWl0anAwN2QzL1JCUkJoem1JczRTT0hqeXU0OWlCaVc3Vld4SWgxZ0ZkaVhq?=
 =?utf-8?B?S1RoUk5ZY3FzTnpYcVNUcU0yd3NraFhOMDJBam0yZjB2Ti9kZUtzSFJENnhU?=
 =?utf-8?B?MFBtdVQwckljNU1PM21IdVZTR2xxMmhPQWJoWTlwUWo3WFBSSGxBUFhjaWpv?=
 =?utf-8?B?b0VaUHBoejBHdHg1cW5tNWVqZFpnTmsvSldoclM0ZE83cHlhM2NRc2V0SStz?=
 =?utf-8?B?c2dmK2l4a3VFNUF5cE4zNnYwSnJJNmRaODJZTmZnRlJuK0E2WmoxUHd4NDB4?=
 =?utf-8?B?SkZSQjJFVkhyYTZyQkpmRWVUY0dzMUdSVWFhaWxnV1BsSUdHZm03YjFuZDBB?=
 =?utf-8?B?TUc3TFBuWkxSaGZaa0sxZEczOS9JZXR1a0dFZVpSU0ozMTI1T2dmUjZ0Y2ZR?=
 =?utf-8?B?RFFpL0dTUlRxTUF1R2RRZDFGUlJic1lRWWFDMjJCdnZzSnNLSjVCYkVVemxx?=
 =?utf-8?B?TERSZzJLNTFYZWhoOVNwNGVyQkpoRDY5dFNVWkFnZWM3ci9DQ3UxNEUwTi92?=
 =?utf-8?B?dDRuK0h0YXVsNGdUTkd2NHlnbzZWc0ZKT1BDdXlzTU9YT0JIaithdERCNm8r?=
 =?utf-8?B?UVNQUjZOZytSR0JFMTFjSmRZaWNQQTVOQVhQOGsxeGVMbHJLOGFqUFJWeWZ2?=
 =?utf-8?B?eEE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5865.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 70af5629-75b4-4e45-c322-08dd04978ab2
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Nov 2024 10:31:46.9492 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NVyum2cHBzo9t8g2N+bFl5I2rghA/SaO5QLyprcbPzZu7WM36OFOd8RDTCFnMDbgXalIhwCChGzqgKN4K7Us48VTDNVrHT72kYuqMb6VfDk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8581
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731580319; x=1763116319;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=IAA88w+az+KKVCfadwACCbSo142aTu0TG3y1wRLj910=;
 b=PqJW9BCZZR1WevD70skot5SjkF5kKxD2H63K1uW7dgyJ2M1PQx+OPeIA
 AYp9vJ+/1IhaxxXz8WxGbvpaB9zTOdIr01Fxd5hWfA5Wsbg4sKYHRzM6I
 7Frm19zYpkrxYkgj4UqKnEge5qM1ygfSEzWOjKm3RkNn2odQOACECUzGi
 /6MqrdV0MgwBt/KPeQ1cJdBlBZg1Hq0dnlntzGC5ZWNf80pp3HhGUQYAE
 ruZkRkgB/4SgHEwVJbal2I6H33RLg5eTcdkZ3T+ctxA+FPOKL3+ci7u58
 9aKWBWZ+X9YN+ZmNtIcL8Jiah0Nf0UegXvuM3ZszsWzL3DvDhBoPxO0DB
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=PqJW9BCZ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 2/2] ixgbe: downgrade logging
 of unsupported VF API version to debug
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC13aXJlZC1sYW4gPGlu
dGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZiBKYWNvYg0KPiBL
ZWxsZXINCj4gU2VudDogVHVlc2RheSwgTm92ZW1iZXIgNSwgMjAyNCAxMTo1MCBQTQ0KPiBUbzog
UGF1bCBNZW56ZWwgPHBtZW56ZWxAbW9sZ2VuLm1wZy5kZT4NCj4gQ2M6IGludGVsLXdpcmVkLWxh
bkBsaXN0cy5vc3Vvc2wub3JnOyBZaWZlaSBMaXUgPHlpZmVpLmwubGl1QG9yYWNsZS5jb20+OyBL
aXRzemVsLA0KPiBQcnplbXlzbGF3IDxwcnplbXlzbGF3LmtpdHN6ZWxAaW50ZWwuY29tPg0KPiBT
dWJqZWN0OiBSZTogW0ludGVsLXdpcmVkLWxhbl0gW1BBVENIIGl3bC1uZXQgMi8yXSBpeGdiZTog
ZG93bmdyYWRlIGxvZ2dpbmcgb2YNCj4gdW5zdXBwb3J0ZWQgVkYgQVBJIHZlcnNpb24gdG8gZGVi
dWcNCj4gDQo+IA0KPiANCj4gT24gMTEvMS8yMDI0IDExOjUzIFBNLCBQYXVsIE1lbnplbCB3cm90
ZToNCj4gPiBEZWFyIEphY29iLA0KPiA+DQo+ID4NCj4gPiBUaGFuayB5b3UgZm9yIHRoZSBwYXRj
aC4NCj4gPg0KPiA+IEFtIDAyLjExLjI0IHVtIDAwOjA1IHNjaHJpZWIgSmFjb2IgS2VsbGVyOg0K
PiA+PiBUaGUgaXhnYmUgUEYgZHJpdmVyIGxvZ3MgYW4gaW5mbyBtZXNzYWdlIHdoZW4gYSBWRiBh
dHRlbXB0cyB0bw0KPiA+PiBuZWdvdGlhdGUgYW4gQVBJIHZlcnNpb24gd2hpY2ggaXQgZG9lcyBu
b3Qgc3VwcG9ydDoNCj4gPj4NCj4gPj4gICAgVkYgMCByZXF1ZXN0ZWQgaW52YWxpZCBhcGkgdmVy
c2lvbiA2DQo+ID4+DQo+ID4+IFRoZSBpeGdiZXZmIGRyaXZlciBhdHRlbXB0cyB0byBsb2FkIHdp
dGggbWFpbGJveCBBUEkgdjEuNSwgd2hpY2ggaXMNCj4gPj4gcmVxdWlyZWQgZm9yIGJlc3QgY29t
cGF0aWJpbGl0eSB3aXRoIG90aGVyIGhvc3RzIHN1Y2ggYXMgdGhlIEVTWCBWTVdhcmUgUEYuDQo+
ID4+DQo+ID4+IFRoZSBMaW51eCBQRiBvbmx5IHN1cHBvcnRzIEFQSSB2MS40LCBhbmQgZG9lcyBu
b3QgY3VycmVudGx5IGhhdmUNCj4gPj4gc3VwcG9ydCBmb3IgdGhlIHYxLjUgQVBJLg0KPiA+Pg0K
PiA+PiBUaGUgbG9nZ2VkIG1lc3NhZ2UgY2FuIGNvbmZ1c2UgdXNlcnMsIGFzIHRoZSB2MS41IEFQ
SSBpcyB2YWxpZCwgYnV0DQo+ID4+IGp1c3QgaGFwcGVucyB0byBub3QgY3VycmVudGx5IGJlIHN1
cHBvcnRlZCBieSB0aGUgTGludXggUEYuDQo+ID4+DQo+ID4+IERvd25ncmFkZSB0aGUgaW5mbyBt
ZXNzYWdlIHRvIGEgZGVidWcgbWVzc2FnZSwgYW5kIGZpeCB0aGUgbGFuZ3VhZ2UNCj4gPj4gdG8g
dXNlICd1bnN1cHBvcnRlZCcgaW5zdGVhZCBvZiAnaW52YWxpZCcgdG8gaW1wcm92ZSBtZXNzYWdl
IGNsYXJpdHkuDQo+ID4+DQo+ID4+IExvbmcgdGVybSwgd2Ugc2hvdWxkIGludmVzdGlnYXRlIHdo
ZXRoZXIgdGhlIGltcHJvdmVtZW50cyBpbiB0aGUgdjEuNQ0KPiA+PiBBUEkgbWFrZSBzZW5zZSBm
b3IgdGhlIExpbnV4IFBGLCBhbmQgaWYgc28gaW1wbGVtZW50IHRoZW0gcHJvcGVybHkuDQo+ID4+
IFRoaXMgbWF5IHJlcXVpcmUgeWV0IGFub3RoZXIgQVBJIHZlcnNpb24gdG8gcmVzb2x2ZSBpc3N1
ZXMgd2l0aA0KPiA+PiBuZWdvdGlhdGluZyBJUFNFQyBvZmZsb2FkIHN1cHBvcnQuDQo+ID4NCj4g
PiBJdOKAmWQgYmUgZ3JlYXQgaWYgeW91IGRlc2NyaWJlZCB0aGUgZXhhY3QgdGVzdCBzZXR1cCBm
b3IgaG93IHRvIHJlcHJvZHVjZSBpdC4NCj4gPg0KPiA+PiBSZXBvcnRlZC1ieTogWWlmZWkgTGl1
IDx5aWZlaS5sLmxpdUBvcmFjbGUuY29tPg0KPiA+DQo+ID4gRG8geW91IGhhdmUgYW4gTGluazog
Zm9yIHRoaXMgcmVwb3J0Pw0KPiA+DQo+ID4+IFNpZ25lZC1vZmYtYnk6IEphY29iIEtlbGxlciA8
amFjb2IuZS5rZWxsZXJAaW50ZWwuY29tPg0KPiA+PiBSZXZpZXdlZC1ieTogUHJ6ZW1layBLaXRz
emVsIDxwcnplbXlzbGF3LmtpdHN6ZWxAaW50ZWwuY29tPg0KPiA+PiAtLS0NCj4gPj4gICBkcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9peGdiZS9peGdiZV9jb21tb24uaCB8IDIgKysNCj4gPj4g
ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9peGdiZS9peGdiZV9zcmlvdi5jICB8IDIgKy0N
Cj4gPj4gICAyIGZpbGVzIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQ0K
PiA+Pg0KPiA+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUv
aXhnYmVfY29tbW9uLmgNCj4gPj4gYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9peGdiZS9p
eGdiZV9jb21tb24uaA0KPiA+PiBpbmRleCA2NDkzYWJmMTg5ZGUuLjY2MzkwNjlhZDUyOCAxMDA2
NDQNCj4gPj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmVfY29t
bW9uLmgNCj4gPj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmVf
Y29tbW9uLmgNCj4gPj4gQEAgLTE5NCw2ICsxOTQsOCBAQCB1MzIgaXhnYmVfcmVhZF9yZWcoc3Ry
dWN0IGl4Z2JlX2h3ICpodywgdTMyIHJlZyk7DQoNCg0KVGVzdGVkLWJ5OiBSYWZhbCBSb21hbm93
c2tpIDxyYWZhbC5yb21hbm93c2tpQGludGVsLmNvbT4NCg0KDQo=
