Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F646A5DDD6
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Mar 2025 14:22:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3B75082B93;
	Wed, 12 Mar 2025 13:22:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DCHIM3nmjoB1; Wed, 12 Mar 2025 13:22:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2DC6382B84
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741785776;
	bh=j5R+JVnB4H8L3La5OrKxN8vC+sSmj7QMemhax5MeB5o=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=iMuRdwj0+LtMBcHJvGT425B+mzj7fPckjqPIa2FqL0qJJwgNYc76iK59PSQrXCtwu
	 /7aCG/pRgvtpHnpNVRwv3hnC6nWmpPzlWzBITUdM70Eum27GsAkFa0VRWPX1+sW+9o
	 uzixQztCC4TfNNv0xz6W/UWELVlqEl5aYueQRqb3jUq0+jL04eM7bNRz4Yl+ZIiluE
	 te6NBojkxKwb4orx3nOl3VJsXHW18Bf5L7wW0+t4pyBhx56uluMtxbb5x4SKWPtwna
	 qWpXZti8hamm4nnuuKZ/5Qnc3RTOEJPS/tm8leAGrrFitqRf1nbCaKWy3hnb7+gV9q
	 l3GGaD9AWna7A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2DC6382B84;
	Wed, 12 Mar 2025 13:22:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 164D0943
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 13:22:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E46DF82B61
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 13:22:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BoEwZ3SlmK72 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Mar 2025 13:22:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 7CD5982B51
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7CD5982B51
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7CD5982B51
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 13:22:52 +0000 (UTC)
X-CSE-ConnectionGUID: 9ya3aQXrQXaXlNaueDEEAg==
X-CSE-MsgGUID: CWJcscjhSMOLZ9fC+Mtxog==
X-IronPort-AV: E=McAfee;i="6700,10204,11370"; a="53511996"
X-IronPort-AV: E=Sophos;i="6.14,241,1736841600"; d="scan'208";a="53511996"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2025 06:22:51 -0700
X-CSE-ConnectionGUID: oXmyY9hORfiuMXupC+EE3Q==
X-CSE-MsgGUID: VsremPV6T56Ke1PuG+ViuQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,241,1736841600"; d="scan'208";a="121544435"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2025 06:22:51 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 12 Mar 2025 06:22:50 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 12 Mar 2025 06:22:50 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.177)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 12 Mar 2025 06:22:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YcQhti0WKL5PQb2O81AsuRdxANJe0ehW1s/E+eXuAwGiE/1UpyMJ3AplNWDyzqPZMJX1cQ48sNjYqkr0jB1M/xCnDut1BuNAjrHGTSfvs1PC+3Ams65oIzRKjL7qblZcejz6788ujM+AP4zh3AZoGjMj5Fsvc7pYH1hN4jnRfya+rUfxR4NSXjO+q5DGpt2HZnHYtvUnSQ51pq8ZtUYvRf8Bh+JaoKjmvoZ96dKwRDsVysHDSvCU9CHt/aW32JjxN7AP9a8AWUq9TL9SNr4B7c2h3Jd5MfJ0RRWJhs5nVdFaOqL8OvfUtRLhCjNT/JlBEaTnaje3zYHjaDAW+a7MzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=j5R+JVnB4H8L3La5OrKxN8vC+sSmj7QMemhax5MeB5o=;
 b=kvg+dRPkN8oQEP9cb+j8Kw03JSJUvAXUXufZTFIK52sS2CRnGB9UGlVSCXjFVzuMGRQfbGZc7Ummb6rY+y0UCyIo83if+UFlCnNe+AOJxbJc5hvWA1q6z26tg2DLTknbtuS1etRfr7UO6+Zc3Buqtd5z0BaLb9L3+EzPHqimjFBb75k84Fc/I56gGhpkKWcMpJ/fSBKv3EH5v0o9ociDBbHWwBKx10WaXguVDD6JdWg0lV1cUvNK1Fd7gAFrGznozaBybyhQMnRUrj7q5geT/rjvB4sGgeZ2ErzO/yjLFVspO/PD0O0xjAL9TMV3Nas6viui/eYNwhBbGQiP2uKIbg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com (2603:10b6:a03:429::10)
 by PH7PR11MB6721.namprd11.prod.outlook.com (2603:10b6:510:1ad::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.27; Wed, 12 Mar
 2025 13:22:43 +0000
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::265f:31c0:f775:c25b]) by SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::265f:31c0:f775:c25b%4]) with mapi id 15.20.8511.026; Wed, 12 Mar 2025
 13:22:43 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, Kyungwook Boo
 <bookyungwook@gmail.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>
Thread-Topic: [PATCH iwl-next v2] i40e: fix MMIO write access to an invalid
 page in i40e_clear_hw
Thread-Index: AQHbkkS90wyx9nYR7E6giyRu3n2kHLNtp54AgAHXZ3A=
Date: Wed, 12 Mar 2025 13:22:43 +0000
Message-ID: <SJ0PR11MB586660B18AD7AD64E53746EFE5D02@SJ0PR11MB5866.namprd11.prod.outlook.com>
References: <e7e4e5d5-931d-4506-9d75-b87783011379@gmail.com>
 <27e57ba8-af5d-4b4c-ae23-da1c1119a9ab@intel.com>
In-Reply-To: <27e57ba8-af5d-4b4c-ae23-da1c1119a9ab@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5866:EE_|PH7PR11MB6721:EE_
x-ms-office365-filtering-correlation-id: 7c581656-de5c-4936-8c79-08dd6168f899
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?T3dyOWs1T2pUZUJLSFhlaUJLemRncHIxb1Q3dGhuNUI5V1VGT3Y0dm00MGxi?=
 =?utf-8?B?Szg3RGRNTDRYODlPOVFYc00rRGt3dlhaQnZNdE0zYXdzd2hDRmZxdVpsK3cv?=
 =?utf-8?B?K1M4SStCNlY0dHB4Qm5CSE4xbW1BQnFVSy9TMmh6WUQ2Q0xPZUxEYXpmRnVr?=
 =?utf-8?B?NjRCUEhwa0lJZHJvbHJReHhoNTNvYWR4WlZ5RlIzUVhRWFRQc3FLTUJzOXdN?=
 =?utf-8?B?WUlMc0dBNXQxY2RYeVh2WVBOZjduKzgzczZYc2VRYjB1Sm1uOENGWlJJQ2hn?=
 =?utf-8?B?Rmh3YnNsN0dvU25IS0VnbXVRNUYrVGVJaGVMMWdSSDh0dnhqMCtvZ2pqOCtQ?=
 =?utf-8?B?R2NJbFZsdDEwaWU2VXlaK0lsVFRhZmdIZW9PYWhiOFlUaDVxZU5RTEtubmNw?=
 =?utf-8?B?bSswTnZnYVdwVm0yTU5MTHUraDJUMWsvSDZaRElSMC8rODZVZnVkUDVJTTRy?=
 =?utf-8?B?RDFRNUJNTWg1Qmo5Q2U5QVQ0UWN1NHpRakkvY0dKZCs3K3FNZ1dyTGxHbmJJ?=
 =?utf-8?B?V3pKVU9ocERmTS8xaVZYeTh5TWJDSEJRU0w4WnNDVmh4NEhQVnpoaVBTeGxh?=
 =?utf-8?B?WXZHazBIaGF4d0VKZDJOM3NkRHB1MURmcGNHT2NIbTNGaCtsem5NcWcyT0Nn?=
 =?utf-8?B?aVVSRWpncWNoTHBpT01oQ0l1MkhOOGo1ZUxUTUFOL3hUL2lrWkQ4bG9HTVB0?=
 =?utf-8?B?TDJUbkN1TGxKRkloWDVzREJiY01jMEFYZkJZbVJ3TGVrNzFWUHFGTUNRNExV?=
 =?utf-8?B?WmMrK29rNlQ5Szc2QXNiU1VoM3l2ZjZFQW9VUFMyeEJPOGZIZkY2WmpaRDFs?=
 =?utf-8?B?dzgzaXZUZS92N2YybnRmV21WYmVVdys0NXlOcm1tdkpQT3IzMExFYTh6a04y?=
 =?utf-8?B?aW1TdEc2ZGkzZ3NSU1kvbDlDL1RiVkMxc0hNVTF5djVNbkV3TkErTTRxM20x?=
 =?utf-8?B?aG9nT1kybDNIRGQvY005d1NDd3Y1SFdGdUppNm1lOWIvQm5xZ2NnNklaMktp?=
 =?utf-8?B?eHkrZEx1MXNHMGcrWVZPaURiVno4N2U3bC9qTEtuRDFUVDg3Skp2QUoyRFZs?=
 =?utf-8?B?cHBYWVdFOFdzYnFhUEJCQVIrSEc0S24rNGcvclVZUFN6cEhHL1dQMU10OWxQ?=
 =?utf-8?B?K2E3T2llNDluQko1cjI1aXYzcWVhRWJWUDhZa2JZRkwyejFtQmIrT3p1TUFl?=
 =?utf-8?B?WGZLNDNOSUFWamRhVTBFVnVOQk9Kd0Npc0hPTlgrRVVIMjNuVHBGdDJQRnAy?=
 =?utf-8?B?MUVmT2ZjWUpzRW9yYUVGRXJndzBLVWVMOXU5bkJFSEtxaDlRWmtJVE5Hb2Zr?=
 =?utf-8?B?ZkNGMDVNc1NrbVJhM0xTZ0RCR2NVelltM1RwV3QvQmJKcEJwWE4xcXovbFZP?=
 =?utf-8?B?NDJWallubzh0ejBtUkljeDl3ckhreCt0L05JclFod2JjT2FuOFhLd3pzR3By?=
 =?utf-8?B?cmdxY2k3TG1RUnlhMHJOc2tlMjVxUkdQZGF1UmR5WW1nbGpyNkltcERBKzYx?=
 =?utf-8?B?dnBuV0FyaFJyaHBBUDRMdTczR0prU04wU2g1NkRSbmhQMlBPaU9lMXhQTnRn?=
 =?utf-8?B?NEMrN3BtSVF2RlFoVTBhQkVXd3RIZjlqMjA1dmg0MXhPSWh1ZlpweHNmUGY0?=
 =?utf-8?B?TG54d2ljbEp5NHJ3OFhSVzFOcks5Y2Z1NDBERVp5Y0dmc3VtOGs5RmtIdEov?=
 =?utf-8?B?ang5UHFPRUhpS005MERGb1FtbkxIQXcwcm56ckVhU0F6ZGtFeGRJdzhFa0g1?=
 =?utf-8?B?QXU0UGhKUW85NFdjc0xFSllIc0NhOUZSMFBHWGNma1RjS1JtRVYwbUlkSnhp?=
 =?utf-8?B?Y3dlQ2tLbVFFSllFVjUwd0lMTEVvTTlQTjBiV0hMK0g5d2JsSDVmM1haWnpx?=
 =?utf-8?B?QVhMZkEwZkRFT1N5YkpUamo3blpGbHFJQTVVT3gzMmhDanc9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5866.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?QUp6Wi9xOFZkYkxuSHFEZk43eTQvemE3U3ptOGZxZHh2MEhCMVYvVjFYSEV1?=
 =?utf-8?B?b0VRQ25UR3ZXcVJOVngrN21hYVJ0aDh0OEFYSDdETExFUkI0UGdMRkV5c1JM?=
 =?utf-8?B?cW9XRktMSjZiRlJDNm9sSHBzdmc0R0hPUk9JTDY1cjhPVE93UTM1c293VGpj?=
 =?utf-8?B?RnBFQU54UGo5N0luQXRWa1oxK3Z5SnVtSXZ6VjlzK3Zrc2IzY0R0VFROdi9x?=
 =?utf-8?B?KzdHOVpscWRad3JZUUhQR0E2b3ZYNFcvRGNIcGNHc0FrQ1FqYW1lV3lvSnl2?=
 =?utf-8?B?QmF5ZGZMY3pZRTBGMVF2aVNPeEVCUU55UGpKQzhRZU5yL3ZJTXI2MEQ4bFN3?=
 =?utf-8?B?QzZuU3E5WVk0WCt3UDlWSk04d2NkeWlVVUVzZXlPY3ZTN3dqQUFCK3pYTHNR?=
 =?utf-8?B?dzVxeEZIUE4zN1RreDlWdlNhaUU1K1AvWXgrMjBtNTN6aXBBL0FtWFNMeDVL?=
 =?utf-8?B?S0JwMUxaN3QrNkJSbFhudDJ6ZEkyRElZb2x1VFN3RlVKUkQxb09JaVkxL2w5?=
 =?utf-8?B?SHlqeXpSZzZlQ1NFUlNwVVdyNElWM2NqRWRjRHIvaDd3aDhEZVhLSUhKdzZQ?=
 =?utf-8?B?Tm40d2VEV2RQNTE3YVptUXo2VW1vRkpBQjBIclBMN1loeU1keTl0cjVlSXBw?=
 =?utf-8?B?by9UOEJJUlBpOUluM2lvR1lGZldoSFdTTGIyNzZ2My9ONjRVY3lnV1lCU3Q0?=
 =?utf-8?B?V0o4bnFEcjJ6bTR1QlZWOHAzdGVHc1dQSWNnYzVXVXNwMTNBb0VLU2xiNktk?=
 =?utf-8?B?cnV4Yzg2OVhyMmlGa2dyWnhYZ21UdFNwazNJZ0ZDR09SNzJvR2Z3SlFqaDlq?=
 =?utf-8?B?MzN5WFhQcVBNMzNXWDYzaVhXdk5LSm9zUFNnUVN3N2RDdEdFMkJmbDBXU0xL?=
 =?utf-8?B?Rm1ZcEU1QVJndnhndFVrL0lvRHh5TTBTUVhqNFFuUVFIVGlseVliTDVHa0dU?=
 =?utf-8?B?bHJVTUk2SitpMytkcWNBWnY0VXFrWFVlMlpjdWl4S1hPOGJFaWJ5cVhJT2Nw?=
 =?utf-8?B?RTdHOWJWVWVpR3l2NVpwTW8zQ0pUbEhlVTJEcEZWVE1LaFdrMFd1ejNENGkv?=
 =?utf-8?B?ZW5hODNGWFA5aWlxa3BvNmdYall3Sjl2dmhIWE43bnk5T3VLb0I4QnY4UDBk?=
 =?utf-8?B?Vnh2UVFON2FwNi9xd2lRNEZlZlBCWlFNTzZqQkdkdFBmTVhxSEo1MjRVSnNh?=
 =?utf-8?B?V0RTVkFXb2YrNVl2clJ6QWtyZEY4RXl1M2QrUTZrY2hTSXdJZjhYQUlpMEY0?=
 =?utf-8?B?bGFiNTJZRzIvc1RkVHBta0ZwUy80aW9aNHVTZ3FNYTNHQzBSS2FOQkdzcXhT?=
 =?utf-8?B?N1k4OTVlL3p4UTBvaTBUdy9KVkpjREFwcFNPWlUwbXVjR2dKZzRlcUFGUlFI?=
 =?utf-8?B?M2w0eVh1dEVOakZVbnVvM3AyRnNoRWFVeEVtTU9BU1htNHJkeW9hRkplN1VX?=
 =?utf-8?B?YTVTR0J0NDZrS0VFZnY0T1VUVW45U3MrUFI2VjRkWkEzMXR5RG0rR0N3azho?=
 =?utf-8?B?b3JmOWRqZjdNVkNCWEdRSGYyWGxTNW9qVWcvTUs2MWFaQkRiK3NmY2hnakhM?=
 =?utf-8?B?d1hQMUNrWEs5VHpnZXZwcGZSd3RoZWNjYkJRODMweDNnaTFlelFOSyt0KzQy?=
 =?utf-8?B?cEtZNGZNRW9UZUFEd25HK1hERmg4THZXOXpVYWkyeXpkeGFmZWNpclY4a1dH?=
 =?utf-8?B?ZFlEY3NCS0EvTFYxNDloRU9COXhLWEEwSDY0T1h0ZnVDNVVaYnh0UWpyeWdE?=
 =?utf-8?B?MWJtUEs5WFdCUEFrOVo2amFocyt6SXVoOEtTUHlQN0crczN0QVVQRW5qcG12?=
 =?utf-8?B?VXlTY1grY1c1M2t4Q1RRRytFN0lvaWMwVzJUY0V6cTgzQ1ZlUXR3ejd4elFL?=
 =?utf-8?B?YlRSMHVHK3FndmlPZ1YrcitHbmlwbGVlNDlpMnd3Z2xQZkhEK3lJR2dZUmZk?=
 =?utf-8?B?cy9YVVVveHZrTldMM3dzcjFpV05ESXJQV1ZpRmtxYXZrSk5qN29KSit2OTFu?=
 =?utf-8?B?b0NYUTh5bjZiZSt4cC9HZTlGZFdXcHI5UDB0Zm82blByNE5vOEg1SjB5eUJD?=
 =?utf-8?B?dHpOOFdnWk5KankxQUJESzQ0MFpJek1PeEtKU3ROa3lBekRlS21tQmJaWnlp?=
 =?utf-8?B?VkxVcjFLTDRUZy85VkR0anE4bFczV0Z3dzV4dDA3b2ZIVG9RUGdKbW41ZVlt?=
 =?utf-8?B?c2c9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5866.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7c581656-de5c-4936-8c79-08dd6168f899
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Mar 2025 13:22:43.1628 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Fv2UP5nQm64RuNcwoW2l6TUqcsFQrCO46LEboLgW7A4DUZcNGaocWmbGI9HrPl1pShZTxSk6dy27BV0ph34S+XQDuLtpXC+XEmYSNR1S84U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6721
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741785772; x=1773321772;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=j5R+JVnB4H8L3La5OrKxN8vC+sSmj7QMemhax5MeB5o=;
 b=DWAbJttGWBwaBwwMf1hA7RKNN0mwa+FK2qSahzF329BN+0eRUHL/Ohvf
 74zHTTrDTU5s401ry7/n0oHX4rd67j7HNfakv/VSyghhlIHZU1T6RwSSG
 Si9cBf4GZOWH4NZ7bGXW9pYRtK1ETBFXkc7w0X+ziyG65S7W+VmnL3Kd8
 Zr7JxBvAORkd8ZtkLfkZocj1ROTFpanrV1cpMU4vIAchbpLG3NH3xn6Mf
 EXMG6TkwrVjV9eLCqvMT1uRAUdDHx4A/WY8U2XCDetQpNii9vfkI6b6fC
 F9Bu9LOxoQAoehkGWt2YPR6kRBPnlUBBYa2AwE2PDW9Muh9Wlr0KZAUXu
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=DWAbJttG
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] i40e: fix MMIO write
 access to an invalid page in i40e_clear_hw
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogS2l0c3plbCwgUHJ6ZW15
c2xhdyA8cHJ6ZW15c2xhdy5raXRzemVsQGludGVsLmNvbT4NCj4gU2VudDogVHVlc2RheSwgTWFy
Y2ggMTEsIDIwMjUgMTA6MTUgQU0NCj4gVG86IEt5dW5nd29vayBCb28gPGJvb2t5dW5nd29va0Bn
bWFpbC5jb20+DQo+IENjOiBpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZzsgbmV0ZGV2
QHZnZXIua2VybmVsLm9yZzsgTG9rdGlvbm92LA0KPiBBbGVrc2FuZHIgPGFsZWtzYW5kci5sb2t0
aW9ub3ZAaW50ZWwuY29tPjsgTmd1eWVuLCBBbnRob255IEwNCj4gPGFudGhvbnkubC5uZ3V5ZW5A
aW50ZWwuY29tPg0KPiBTdWJqZWN0OiBSZTogW1BBVENIIGl3bC1uZXh0IHYyXSBpNDBlOiBmaXgg
TU1JTyB3cml0ZSBhY2Nlc3MgdG8gYW4gaW52YWxpZCBwYWdlDQo+IGluIGk0MGVfY2xlYXJfaHcN
Cj4gDQo+IE9uIDMvMTEvMjUgMDY6MTYsIEt5dW5nd29vayBCb28gd3JvdGU6DQo+ID4gV2hlbiB0
aGUgZGV2aWNlIHNlbmRzIGEgc3BlY2lmaWMgaW5wdXQsIGFuIGludGVnZXIgdW5kZXJmbG93IGNh
bg0KPiA+IG9jY3VyLCBsZWFkaW5nIHRvIE1NSU8gd3JpdGUgYWNjZXNzIHRvIGFuIGludmFsaWQg
cGFnZS4NCj4gPg0KPiA+IFByZXZlbnQgdGhlIGludGVnZXIgdW5kZXJmbG93IGJ5IGNoYW5naW5n
IHRoZSB0eXBlIG9mIHJlbGF0ZWQgdmFyaWFibGVzLg0KPiA+DQo+ID4gU2lnbmVkLW9mZi1ieTog
S3l1bmd3b29rIEJvbyA8Ym9va3l1bmd3b29rQGdtYWlsLmNvbT4NCj4gPiBMaW5rOg0KPiA+IGh0
dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xrbWwvZmZjOTE3NjQtMTE0Mi00YmEyLTkxYjYtDQo+IDhj
NzczZjZmNzA5NUBnbWFpDQo+ID4gbC5jb20vVC8NCj4gPiAtLS0NCj4gPiBDaGFuZ2VzIGluIHYy
Og0KPiA+IC0gRm9ybWF0dGluZyBwcm9wZXJseQ0KPiA+IC0gRml4IHZhcmlhYmxlIHNoYWRvd2lu
Zw0KPiA+IC0gTGluayB0byB2MToNCj4gPiBodHRwczovL2xvcmUua2VybmVsLm9yZy9uZXRkZXYv
NTVhY2M1ZGMtOGQ1YS00NWJjLWE1OWMtDQo+IDkzMDQwNzFlNDU3OUBnbQ0KPiA+IGFpbC5jb20v
DQo+ID4gLS0tDQo+ID4gICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfY29t
bW9uLmMgfCA3ICsrKystLS0NCj4gPiAgIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyks
IDMgZGVsZXRpb25zKC0pDQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJu
ZXQvaW50ZWwvaTQwZS9pNDBlX2NvbW1vbi5jDQo+ID4gYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9pNDBlL2k0MGVfY29tbW9uLmMNCj4gPiBpbmRleCAzNzBiNGJkZGVlNDQuLmIxMWMzNWUz
MDdjYSAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0
MGVfY29tbW9uLmMNCj4gPiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0
MGVfY29tbW9uLmMNCj4gPiBAQCAtODE3LDEwICs4MTcsMTEgQEAgaW50IGk0MGVfcGZfcmVzZXQo
c3RydWN0IGk0MGVfaHcgKmh3KQ0KPiA+ICAgdm9pZCBpNDBlX2NsZWFyX2h3KHN0cnVjdCBpNDBl
X2h3ICpodykNCj4gPiAgIHsNCj4gPiAgIAl1MzIgbnVtX3F1ZXVlcywgYmFzZV9xdWV1ZTsNCj4g
PiAtCXUzMiBudW1fcGZfaW50Ow0KPiA+IC0JdTMyIG51bV92Zl9pbnQ7DQo+ID4gKwlzMzIgbnVt
X3BmX2ludDsNCj4gPiArCXMzMiBudW1fdmZfaW50Ow0KPiA+ICAgCXUzMiBudW1fdmZzOw0KPiA+
IC0JdTMyIGksIGo7DQo+ID4gKwlzMzIgaTsNCj4gPiArCXUzMiBqOw0KPiA+ICAgCXUzMiB2YWw7
DQo+ID4gICAJdTMyIGVvbCA9IDB4N2ZmOw0KPiANCj4gdGhhbmsgeW91IGZvciBsb2NhbGl6aW5n
IHRoZSBpbXByb3ZlbWVudCwgbm93IHRoZSBjb2RlIGlzIG1vcmUgcm9idXN0LA0KPiBSZXZpZXdl
ZC1ieTogUHJ6ZW1layBLaXRzemVsIDxwcnplbXlzbGF3LmtpdHN6ZWxAaW50ZWwuY29tPg0KUmV2
aWV3ZWQtYnk6IEFsZWtzYW5kciBMb2t0aW9ub3YgPGFsZWtzYW5kci5sb2t0aW9ub3ZAaW50ZWwu
Y29tPg0KPiA+DQo+ID4gLS0tDQo+ID4gYmFzZS1jb21taXQ6IDRkODcyZDUxYmM5ZDdiODk5YzFm
NjE1MzRlM2RiZGU3MjYxM2Y2MjcNCj4gPg0KPiA+IEJlc3QgcmVnYXJkcywNCj4gPiBLeXVuZ3dv
b2sgQm9vDQo+ID4NCg0K
