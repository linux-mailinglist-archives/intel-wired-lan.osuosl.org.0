Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id CDC26B419B9
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Sep 2025 11:15:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 39CA684613;
	Wed,  3 Sep 2025 09:15:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dZF6um8rYAUv; Wed,  3 Sep 2025 09:15:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 48AD38462E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756890941;
	bh=vVt76Eji2EeQc5CIEWJTHkrntGPA06N75KYH4pOW65M=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=tS9cOLiPnPSRhtj5c72vdjku/rgOypmEP76lFzflPp8CCbPF61N8FPlM0O/HSn1+9
	 fx5m8Ws4H+uRMdrIo9WKxtQQGp9m9aKR0Iw7Hd2voei+0ml95WoHhtho2dUhYcRwW6
	 +KjDJjOoUbicjI1uphDSOO4PbmjbRV3ZkmnmY6PeJji8Ithn0DFh9NQRu5NlhO42DI
	 3yOYNWOj2EEBl9KjGMv4+UdXW24ggVs8i6Sq/KB397Ns90h/ZaOHYwEilG4ijd0eem
	 10OlPoOTM6RJpZixeff/u2JhUSY4FDvBCqBHAHC/zbJaAHp1YtThL2XAlWAPKwuUqk
	 MuS35nsD4/ibw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 48AD38462E;
	Wed,  3 Sep 2025 09:15:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 276682BA8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Sep 2025 09:15:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0BC16414B6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Sep 2025 09:15:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0CxIb3riG0L3 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Sep 2025 09:15:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 26B6D414B5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 26B6D414B5
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 26B6D414B5
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Sep 2025 09:15:38 +0000 (UTC)
X-CSE-ConnectionGUID: pO3kj4RjQ0awhvs+LASHJg==
X-CSE-MsgGUID: lEnr+aZXRxatUSiZD3oMVQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11541"; a="61835617"
X-IronPort-AV: E=Sophos;i="6.18,233,1751266800"; d="scan'208";a="61835617"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2025 02:15:37 -0700
X-CSE-ConnectionGUID: jIEEy99wRAux3gSQ3b5vKA==
X-CSE-MsgGUID: 06OYx2RKSm2De6o4ilT0Jg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,233,1751266800"; d="scan'208";a="170795519"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2025 02:15:37 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 3 Sep 2025 02:15:36 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Wed, 3 Sep 2025 02:15:36 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (40.107.93.84) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 3 Sep 2025 02:15:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=B0m1bpTHic7JecBWUgJsvWz2IwSgG+TrbrqSxcFIcrIbZpegvwUV5ZbYRzxei+NnANEBJvWD8AuCsXi205VEEqKA+BbXC8gyJ14A8SHz7pvgaA3q5oOqtCdsisp/0ehQtvhjkjZ7CnwXUfH7HRLRqHo5L6CF1YiuMiGVU9YXC9VE9uGhUCupg+YHSKs2/SlQUwLDkbjhH1et9+erIiBLWBe5o6aLFtCQbwyIdjiNMjXYMxilQwn3+DjkVGf5VqiKlMBTraVcn8f55tw6w4ZuH5yad73ALDEpuZyuShzaUkx2G9fg3EzojNZwOfYdP0qVdpM9a0APDhxmoAefCqfiOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vVt76Eji2EeQc5CIEWJTHkrntGPA06N75KYH4pOW65M=;
 b=jhbz+nmu6ktNsjGBhFh+0krphYz9MmNdx0BgRCH/I/IFUsozHI1uPKfaaZC0YZLX6vqU33hiWaeSKByrDQReDywuanL4u9xhCuPWxbB6dplWCS6GRuLGyIZkSfaBz1rKjAlTM3j2XLZMKXUZi6BdoNkIShPl5xIGfXA9LwQ7bQQ/UJPhIhd1ul3NbnofCMUVay8UbQamP+uJ8rTOCoBhtTRt2pcul8Ni6oQgNoRAqKQW5vLzyX1O8lzsWfaVDj625FUyjKumB4ELdTT49X5qfM1rzG7NdaLOpFN4ZACxlDYDMCDpK7Fr01TugmiU9NXUz5qLLWsCmvnE3162Rc7Lag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SA0PR11MB4542.namprd11.prod.outlook.com (2603:10b6:806:9f::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9073.27; Wed, 3 Sep
 2025 09:15:29 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%4]) with mapi id 15.20.9094.015; Wed, 3 Sep 2025
 09:15:29 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Brahmajit Das <listout@listout.xyz>
CC: "vadim.fedorenko@linux.dev" <vadim.fedorenko@linux.dev>,
 "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "davem@davemloft.net" <davem@davemloft.net>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "kuba@kernel.org" <kuba@kernel.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH v2] net: intel: fm10k: Fix parameter
 idx set but not used
Thread-Index: AQHcHBq3FK4xPYtfpEWHVTltoaj/+7SA+a+AgAAziYCAAADhAA==
Date: Wed, 3 Sep 2025 09:15:29 +0000
Message-ID: <IA3PR11MB898620E835A7700451F0ADA1E501A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <e13abc99-fb35-4bc4-b110-9ddfa8cdb442@linux.dev>
 <20250902072422.603237-1-listout@listout.xyz>
 <IA3PR11MB8986925DD6DBF282C160AADBE501A@IA3PR11MB8986.namprd11.prod.outlook.com>
 <dyfxrfwy3qulor3sgfuuzxpx7jc4mbot4b7ci5marqlyxdusp4@uvf5fknefnfb>
In-Reply-To: <dyfxrfwy3qulor3sgfuuzxpx7jc4mbot4b7ci5marqlyxdusp4@uvf5fknefnfb>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SA0PR11MB4542:EE_
x-ms-office365-filtering-correlation-id: d972e094-c6e4-4d7e-df53-08ddeaca6d43
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?R3BZMTdmTTdLZzBqSzhkSExabjVOcWRuc0d6Vk1Hc0FmTVB2bVprTlJDVERs?=
 =?utf-8?B?VTY1UEZBZDZyMWliRXFHdnpGTy93QnNrcDQrZ1RDcmVLWDlPOTNvcDNZUWlJ?=
 =?utf-8?B?NnVWalJPRDVSaTZBWHB0OUJqMGphWldpVnBPV0lidDhwUHE0c21pZkZvcGlo?=
 =?utf-8?B?U1QvWHRNRFVXMnpNVUQyTGwwemZUWWlBN21wWWRxYThGbzJnR0dxckd0Nm1R?=
 =?utf-8?B?djJrWDlKMjhiYVR0U2p5OHRsM3FDZ1pJVzdNOHpuUUFLWG1jYXJsTm5EbnZj?=
 =?utf-8?B?SkM2TGZFYi9NbDkwNy8rMlFNRUlubERiL0htSFFnTjdWUFZ4emRmMzVLWEJ4?=
 =?utf-8?B?ZjVMMHI2bVhUTTYyS3pkekRqdk5TYUl4MytxeWRXdXlDRGFzTlFrRzBlOXU1?=
 =?utf-8?B?RGNNaGR6VmtUcTJnZW54YWphVTRDcUdKbHZlUHRsN1VWQ1dqUWZ6aC90WkFy?=
 =?utf-8?B?dmpYMHBLOXVXUlF3N1RjbElxVkpGYU50MjdrVCtadkNVT0Y2R3plMmpDMWkr?=
 =?utf-8?B?ZEV5a0dsY1BoOHZONi8yRStFNVZVODRIYUdYUEpEbnRYaDVVSm03d3dLc0FG?=
 =?utf-8?B?bEkva0dxSEw3QnVDeGhEL3JMSHJaa2hQTWhWYVVuQnhIVGVBQ0Zna24yd0M2?=
 =?utf-8?B?UkUxQk1sM09Qc1ljcXl0aEFPY1JBdkphZmhkNHBoOUNvNXVrSEFENm40eHd5?=
 =?utf-8?B?UmlOMVk0ajdmSURDQ0xFTGc0Y1h6Y3o0dHc3UzhVWHBtc1RMbzl5QzRHTlMz?=
 =?utf-8?B?S0JIV0YrOEFtT2E5M1JWYkh1ZXZmcGRqWWljRHpOYUlUcG1KaTZ3MTJzQjJN?=
 =?utf-8?B?Y1Y0UU9QUGx6SFRkaHJkdWRIcUNkR043ak54eGFRcGtRbzY4eTNqSER5TXpj?=
 =?utf-8?B?S3kyTHFyek5WQkEyQWJ1TEFoQmNOa0ZKTFRmMjh4a2pFRy9Jak0yUmdJYWNH?=
 =?utf-8?B?cTZsdWVVM0U0OEdXTjNiWmdjcmNWeXBVVDdBY2FoaUI3UTg1MWZ1cGJmWUNX?=
 =?utf-8?B?ejRKdDliK0xhelRjMVdVUWpnYnZHNFk1T2NOd0pLZUQ4K09NQm9mN245ZE9a?=
 =?utf-8?B?SWlpNFZGM3hMbGhGMzRVNkI0VmVoWFUvK3d5NEY0RDNTL0hsQXNtenZ5WVJh?=
 =?utf-8?B?QnM1VXlzdDV3Zk1WaGI2VXRJK1VkM1V0Tm9LdEZ3KzRnV1EvY1FPdVc5NXc1?=
 =?utf-8?B?SzZPcjREc29sZ2dWSUovTS9LRWh1VW45aVhIUGphSVRvbnBVN0RNUllhVUtH?=
 =?utf-8?B?U0swVmYxQVNuaWpzL0hGQVd6YjZoaFkwT1I4Y3luQlJhb2JLWi85anNlZlNX?=
 =?utf-8?B?bWE5cFAzWGplTTh3bkcrTU5MVTVkcmgwZ2wzRzR1Q3pBaGprdnd1RzVES3V6?=
 =?utf-8?B?ZHQ3ZEFlbFE3OWw1UXNXV29lU3RDcy9IRXM4d0tvT1BIOVZtRlRZdDJGZEU2?=
 =?utf-8?B?aFpNNy9qWk9DMTNJRnRpMzRpaUNpMHBmQi96dWtVTmEvbE90dENIVnZkVGhE?=
 =?utf-8?B?b3BERXlVcURzRVBUY2xPWTBpaEVWOXRuQmVvWGJlUGNLV09XSVNTM0FSVUdr?=
 =?utf-8?B?YkdHaGg2N3NhNDVjR3ExYUFWT1FENHQzWEJrRy9ocjVsWTZvcFRSK1lUVzRz?=
 =?utf-8?B?c3RvUnFQYVN3VWE3QXkzVWlHVXlEcGZzbk5LYXlQMGpmQmRPY28rNjlIT2dy?=
 =?utf-8?B?akQ1QkNmR3NlN0l5YXlaZ0p1OUZHL2tWMStYbWhXZW9MSGdRVlJPM3dYUGI5?=
 =?utf-8?B?U0RMVXR0dkEwL1lremFFWjJGNC9GbytKbStuUVo5bkszR1VIQjNiYis5SVNT?=
 =?utf-8?B?OU9nQXhSSE43NFRPVW9PSFlmRC9sRFJNanYzWGJlZlQxMGZIRU5TcUl6cGxX?=
 =?utf-8?B?UWZid3dLYTN3WEEwbXF1L2UrT2Fnb0NDeG9JdURxdDdPcEpKdC9uVFhmMCty?=
 =?utf-8?B?ZUNwcmp3bFZuS1U0MmRjcDhGeDhsZzZqUlBvbk1Mb3RLaHNHdm5ObENBUnhQ?=
 =?utf-8?B?L2tQc2VnUXVBPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WGJGVjFub1VCbVhSSzAyVVhqdVYvQVVuQ2dGK0s0bzM4cDdoVlZ4ODhETGNV?=
 =?utf-8?B?dm5NTG9Uc1UxOGx2RUpra2p4eElvaEtXV3VNdjFKa0wrWml6MEhqZkxZL0c5?=
 =?utf-8?B?R2FDYVVMNG0vN3VaeEQ3bVBuVHJNOGVJSDg3SHdiRUU3eU5WV0Fzd1lLcURZ?=
 =?utf-8?B?WmM5NTg5Zy80NXQyS3JYdWx0RlBHcGE5V2wxTW02eUpPNG8vRDJlakd1b1Mx?=
 =?utf-8?B?dVVucHEyOGhJYTdDNkpFRnhiZHFVeGZTamhvcGFqUEY1dFVKTHpPNExQcUxQ?=
 =?utf-8?B?VCtOQmg4Ync5WVphQ2JaZFJMQTBhSnlNbzgway94Z2t6dERGWHZDSWxSTnoy?=
 =?utf-8?B?UlgzcVlrTUNJMzBzNWFOa2Npd296dThVb0pvVnVLRzFSODZtL1V1bU1TRm1r?=
 =?utf-8?B?T1ZVS1JReGlWNFdDWTZGbHI0QnFNVlZPVHExb3luc3k2aUVTTHhsY2RmM1Rn?=
 =?utf-8?B?bnVRZlpEQ3hGWnJtTS9ZOXZYUkJhN2JaVlVrYlZPYUNnbDJvMWRmQWhCNkVL?=
 =?utf-8?B?WDBiVnJrZU03TkhkTW4wbGdIWkJuVVNTT3F0T2FZUEc3RlFYM2ZFWDVYQW5U?=
 =?utf-8?B?UHZoZGtFRFJDemp5OFg0NGhBUDE1b2lrT0M3SVRtSFBKK1Mvd0RNT0VLdDBY?=
 =?utf-8?B?VVNJcjY1VkNodGdRb3dNNWJ4ZHc4dVdnSUZxOG4xOUtIdng0SnpNTVc1cDBJ?=
 =?utf-8?B?SE5EM2hZb2h3Q0xZWS9uNG03QkpyMGJwVjdFMEhBUlNDK0RaY1pubWZtRnZU?=
 =?utf-8?B?SUVrQ1ZURzJaTTdPdzd1OFJFZmZCNStCa2ZyVGFOYTFIYUJ2NFFXVWJFWG1n?=
 =?utf-8?B?MTdobis3bmxVWTJFRjY0YTBvbnM1VG5ZVE1tSzRUcXEzWDl2dDZuWVdaV2Fp?=
 =?utf-8?B?dU56eEgxTHRrbFRPQlJDV0VwM1NvYXRNaDYvekVOSXFRMEx5ZVpJNloreDl2?=
 =?utf-8?B?T2J3QXV2ckpTU1A5M1E0bkRaYVpXcm50Y1JDRHJ2QnhkaHdtc2kwQ2dHalU2?=
 =?utf-8?B?Njh2RSt3UXRiN3dGMXJNZzJ5SVhHVG9OUGcwLzRwZGVLVi9QSHhkTnlxeldm?=
 =?utf-8?B?eStVZHFhNzRoVmZCeTJheFI1aG43NCtBWENUbmpNM2F2Tk5JRUMrQ2E3T2ZU?=
 =?utf-8?B?dEVSa0dIYzdnWk40cG1LbFJDNjcvS2QrZER5SlJZeFJuQWlnL0xkZlBaMUty?=
 =?utf-8?B?RmxvckRYK0NhNzVVdzlsc1MydVA2SURRRWdDbkZsbW5EaTRjTGk5UkloTThy?=
 =?utf-8?B?YlhYYlY5Zm81aDY1N0hTUkdMRzZHc2lNTEdKSEJQV045cENFNzZvSVY3bVdK?=
 =?utf-8?B?ZXdadG5FTWZMeHNKdm9IcGdiQ0ZIYkM5OUhYWllsTmN0SWcwOXNmbGsveWtn?=
 =?utf-8?B?NDdPdEc4R1ZHK2NkQi9wVU5MdHJwaFlsQU9qZElhK2oxOENKNC9kQzBZYnUw?=
 =?utf-8?B?ZHVXbnZTWHRWRW1XeTNEZ3pncWo3SWk1WnpacC9LdFFhTkprL2tLY0Y1bDdV?=
 =?utf-8?B?L3RNUTViY1JXbmJGeC9xczRTcmRpNGNPanplaEpFa0ZuODkyY3R1ekt2cVJz?=
 =?utf-8?B?bkxSQk9oYTNqcWJvTVh1cHRKZEpjSnJhYXNiN1RHZ214Y21EckpiTVpLREo5?=
 =?utf-8?B?eHFhaXZUTWcxdjdvOFdMSGgwUGxqcHp1ODA5ZWhlaTJneHg3SnVRMStmTkgw?=
 =?utf-8?B?TFRJMUVZU0ttK051ZmRDb0Q4dGxUZ2RkZkljdE5XL1RtVy92ZGFFeEYyTHlR?=
 =?utf-8?B?NFdRbHhVZjhSR2x0aEE3ZGhoeVJoUGpQQjFMN2ZlRmo0Z0V5cUdRaFJqOVQr?=
 =?utf-8?B?Nm1wd3I4QVRUK21jT1NhcSsrYlRpYnRvVzMyeThJQmJwOTVwWCtUOExhZlho?=
 =?utf-8?B?RkRyTGZkU0RLbG1NbldUSWRzVE1OU1BDaXJoMGxMWHpXYW9GSklRclZBb1Vp?=
 =?utf-8?B?ckgrZ2wzV3VsV28xWkljVDZWbjNVOVBQK3RrY1lZdFdQUTJlYkpFQllORGQv?=
 =?utf-8?B?ZVIvay9xempianBHVGJQdjlhSks4SWlWM3ZQbzZ1NENPNER6bm9odjZNdE1U?=
 =?utf-8?B?VmRhT0JNQTFaWFp6WjNoVVFwckpVVUE2REhhN2tPVUJrS0JEOHV1MW9RR3Ru?=
 =?utf-8?B?TGlZQWxsOUw1TVRsYXBIc1NDbnVZcURIeGlRWGNkbU95bzNteW1aalFqdlpu?=
 =?utf-8?B?ZUE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d972e094-c6e4-4d7e-df53-08ddeaca6d43
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Sep 2025 09:15:29.3741 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: o5VvlfTGz87yY9d6z6QM9hLzUkgkljNaIHHsrvf/wigWfdPTgEkle4gbMD3GLSP5QWdUI7IOVBs+kOZl17xXxnMGqp2QOCcHCUg3rSi5sJI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4542
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756890938; x=1788426938;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=vVt76Eji2EeQc5CIEWJTHkrntGPA06N75KYH4pOW65M=;
 b=m0rGC3F4uEgZpbuwYQU1H0hwiewCUiI54nb+BNLCDqP9hYH+xmKez6ds
 pcpvoiNM3uIJZHRfG+meI3Z9w5mjSgBULTOo7jfYsayw2Q5XZXoWJaaQB
 uLKem//QjTqkekwNeIYQP/uOuFZfxb1u/fXJs0oT01Noh9ORqNvJlPJOb
 hIqbLtGNSiTqFDf2u0nusU9Re5oetKMbJHsRKjFa4GE8B14BUgceBdzIw
 KMrzCcBa6F3JA0nMOZjc6Pz1LLTORubk2FNTwH+H6SJbEtW8aiPx7eh2v
 wPaPEFl7VEjLjy2C02LPrQwRkcTr0G5x8giEG5wkrhdi+v+7uoa1DJq+M
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=m0rGC3F4
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2] net: intel: fm10k: Fix parameter
 idx set but not used
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogQnJhaG1haml0IERhcyA8
bGlzdG91dEBsaXN0b3V0Lnh5ej4NCj4gU2VudDogV2VkbmVzZGF5LCBTZXB0ZW1iZXIgMywgMjAy
NSAxMToxMSBBTQ0KPiBUbzogTG9rdGlvbm92LCBBbGVrc2FuZHIgPGFsZWtzYW5kci5sb2t0aW9u
b3ZAaW50ZWwuY29tPg0KPiBDYzogdmFkaW0uZmVkb3JlbmtvQGxpbnV4LmRldjsgYW5kcmV3K25l
dGRldkBsdW5uLmNoOyBOZ3V5ZW4sIEFudGhvbnkNCj4gTCA8YW50aG9ueS5sLm5ndXllbkBpbnRl
bC5jb20+OyBkYXZlbUBkYXZlbWxvZnQubmV0OyBpbnRlbC13aXJlZC0NCj4gbGFuQGxpc3RzLm9z
dW9zbC5vcmc7IGt1YmFAa2VybmVsLm9yZzsgbmV0ZGV2QHZnZXIua2VybmVsLm9yZzsNCj4gS2l0
c3plbCwgUHJ6ZW15c2xhdyA8cHJ6ZW15c2xhdy5raXRzemVsQGludGVsLmNvbT4NCj4gU3ViamVj
dDogUmU6IFtJbnRlbC13aXJlZC1sYW5dIFtQQVRDSCB2Ml0gbmV0OiBpbnRlbDogZm0xMGs6IEZp
eA0KPiBwYXJhbWV0ZXIgaWR4IHNldCBidXQgbm90IHVzZWQNCj4gDQo+IE9uIDAzLjA5LjIwMjUg
MDY6MDgsIExva3Rpb25vdiwgQWxla3NhbmRyIHdyb3RlOg0KPiA+DQo+ID4NCj4gPiA+IC0tLS0t
T3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4gPiBGcm9tOiBJbnRlbC13aXJlZC1sYW4gPGludGVs
LXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uDQo+IEJlaGFsZg0KPiA+ID4gT2YgQnJh
aG1haml0IERhcw0KPiA+ID4gU2VudDogVHVlc2RheSwgU2VwdGVtYmVyIDIsIDIwMjUgOToyNCBB
TQ0KPiA+ID4gVG86IHZhZGltLmZlZG9yZW5rb0BsaW51eC5kZXYNCj4gPiA+IENjOiBhbmRyZXcr
bmV0ZGV2QGx1bm4uY2g7IE5ndXllbiwgQW50aG9ueSBMDQo+ID4gPiA8YW50aG9ueS5sLm5ndXll
bkBpbnRlbC5jb20+OyBkYXZlbUBkYXZlbWxvZnQubmV0OyBpbnRlbC13aXJlZC0NCj4gPiA+IGxh
bkBsaXN0cy5vc3Vvc2wub3JnOyBrdWJhQGtlcm5lbC5vcmc7IGxpc3RvdXRAbGlzdG91dC54eXo7
DQo+ID4gPiBuZXRkZXZAdmdlci5rZXJuZWwub3JnOyBLaXRzemVsLCBQcnplbXlzbGF3DQo+ID4g
PiA8cHJ6ZW15c2xhdy5raXRzemVsQGludGVsLmNvbT4NCj4gPiA+IFN1YmplY3Q6IFtJbnRlbC13
aXJlZC1sYW5dIFtQQVRDSCB2Ml0gbmV0OiBpbnRlbDogZm0xMGs6IEZpeA0KPiA+ID4gcGFyYW1l
dGVyIGlkeCBzZXQgYnV0IG5vdCB1c2VkDQo+ID4gPg0KPiA+ID4gVmFyaWFibGUgaWR4IGlzIHNl
dCBpbiB0aGUgbG9vcCwgYnV0IGlzIG5ldmVyIHVzZWQgcmVzdWx0aW5nIGluDQo+IGRlYWQNCj4g
PiA+IGNvZGUuIEJ1aWxkaW5nIHdpdGggR0NDIDE2LCB3aGljaCBlbmFibGVzDQo+ID4gPiAtV2Vy
cm9yPXVudXNlZC1idXQtc2V0LXBhcmFtZXRlcj0gYnkgZGVmYXVsdCByZXN1bHRzIGluIGJ1aWxk
DQo+IGVycm9yLg0KPiA+ID4gVGhpcyBwYXRjaCByZW1vdmVzIHRoZSBpZHggcGFyYW1ldGVyLCBz
aW5jZSBhbGwgdGhlIGNhbGxlcnMgb2YgdGhlDQo+ID4gPiBmbTEwa191bmJpbmRfaHdfc3RhdHNf
cSBhcyAwIGFzIGlkeCBhbnl3YXlzLg0KPiA+ID4NCj4gPiA+IFN1Z2dlc3RlZC1ieTogVmFkaW0g
RmVkb3JlbmtvIDx2YWRpbS5mZWRvcmVua29AbGludXguZGV2Pg0KPiA+ID4gU2lnbmVkLW9mZi1i
eTogQnJhaG1haml0IERhcyA8bGlzdG91dEBsaXN0b3V0Lnh5ej4NCj4gPiA+IC0tLQ0KPiA+ID4g
Y2hhbmdlcyBpbiB2MjoNCj4gPiA+IAktIFJlbW92ZWQgdGhlIGlkeCBwYXJhbWV0ZXIsIHNpbmNl
IGFsbCBjYWxsZXJzIG9mDQo+ID4gPiAJZm0xMGtfdW5iaW5kX2h3X3N0YXRzX3EgcGFzc2VzIGlk
eCBhcyAwIGFueXdheXMuDQo+ID4gPiAtLS0NCj4gPiA+ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9mbTEway9mbTEwa19jb21tb24uYyB8IDUgKystLS0NCj4gPiA+IGRyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2ZtMTBrL2ZtMTBrX2NvbW1vbi5oIHwgMiArLQ0KPiA+ID4gIGRyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2ZtMTBrL2ZtMTBrX3BmLmMgICAgIHwgMiArLQ0KPiA+ID4gIGRy
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ZtMTBrL2ZtMTBrX3ZmLmMgICAgIHwgMiArLQ0KPiA+
ID4gIDQgZmlsZXMgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQ0KPiA+
ID4NCj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9mbTEway9m
bTEwa19jb21tb24uYw0KPiA+ID4gYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9mbTEway9m
bTEwa19jb21tb24uYw0KPiA+ID4gaW5kZXggZjUxYTYzZmNhNTEzLi4xZjkxOWE1MGM3NjUgMTAw
NjQ0DQo+ID4gPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9mbTEway9mbTEwa19j
b21tb24uYw0KPiA+ID4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZm0xMGsvZm0x
MGtfY29tbW9uLmMNCj4gPiA+IEBAIC00NDcsMTcgKzQ0NywxNiBAQCB2b2lkIGZtMTBrX3VwZGF0
ZV9od19zdGF0c19xKHN0cnVjdCBmbTEwa19odw0KPiA+ID4gKmh3LCBzdHJ1Y3QgZm0xMGtfaHdf
c3RhdHNfcSAqcSwNCj4gPiA+ICAvKioNCj4gPiA+ICAgKiAgZm0xMGtfdW5iaW5kX2h3X3N0YXRz
X3EgLSBVbmJpbmQgdGhlIHF1ZXVlIGNvdW50ZXJzIGZyb20NCj4gdGhlaXINCj4gPiA+IHF1ZXVl
cw0KPiA+ID4gICAqICBAcTogcG9pbnRlciB0byB0aGUgcmluZyBvZiBoYXJkd2FyZSBzdGF0aXN0
aWNzIHF1ZXVlDQo+ID4gPiAtICogIEBpZHg6IGluZGV4IHBvaW50aW5nIHRvIHRoZSBzdGFydCBv
ZiB0aGUgcmluZyBpdGVyYXRpb24NCj4gPiA+ICAgKiAgQGNvdW50OiBudW1iZXIgb2YgcXVldWVz
IHRvIGl0ZXJhdGUgb3Zlcg0KPiA+ID4gICAqDQo+ID4gPiAgICogIEZ1bmN0aW9uIGludmFsaWRh
dGVzIHRoZSBpbmRleCB2YWx1ZXMgZm9yIHRoZSBxdWV1ZXMgc28gYW55DQo+ID4gPiB1cGRhdGVz
IHRoYXQNCj4gPiA+ICAgKiAgbWF5IGhhdmUgaGFwcGVuZWQgYXJlIGlnbm9yZWQgYW5kIHRoZSBi
YXNlIGZvciB0aGUgcXVldWUNCj4gc3RhdHMNCj4gPiA+IGlzIHJlc2V0Lg0KPiA+ID4gICAqKi8N
Cj4gPiBUaGUga2VybmVsLWRvYyBjb21tZW50IHN0aWxsIG1lbnRpb25zIEBpZHguDQo+ID4gRXZl
cnl0aGluZyBlbHNlIGlmIGZpbmUuDQo+ID4gUmV2aWV3ZWQtYnk6IEFsZWtzYW5kciBMb2t0aW9u
b3YgPGFsZWtzYW5kci5sb2t0aW9ub3ZAaW50ZWwuY29tPg0KPiA+DQo+ID4NCj4gSGkgQWxla3Nh
bmRyLCBjYW4geW91IHBsZWFzZSBwb2ludCBvdXQgaG93IEkgY2FuIHJlbW92ZSB0aGUga2VybmVs
LWRvYw0KPiBjb21tZW50LiBJIHRob3VnaHQgcmVtb3ZpbmcgdGhlIGxpbmUNCj4gCUBpZHg6IGlu
ZGV4IHBvaW50aW5nIHRvIHRoZSBzdGFydCBvZiB0aGUgcmluZyBpdGVyYXRpb24gZnJvbQ0KPiBm
bTEwa19jb21tb24uYyB3b3VsZCBkbyB0aGF0Lg0KPiANClNvcnJ5LCBteSBtaXN0YWtlLCBJIG92
ZXJsb29rZWQgJy0nICENClJldmlld2VkLWJ5OiBBbGVrc2FuZHIgTG9rdGlvbm92IDxhbGVrc2Fu
ZHIubG9rdGlvbm92QGludGVsLmNvbT4NCg0KDQo+IEknbSBvcGVuIHRvIHNlbmRpbmcgaW4gYSB2
MyB3aXRoIGFueSBjaGFuZ2VzIHJlcXVpcmVkLg0KPiA+ID4gLXZvaWQgZm0xMGtfdW5iaW5kX2h3
X3N0YXRzX3Eoc3RydWN0IGZtMTBrX2h3X3N0YXRzX3EgKnEsIHUzMiBpZHgsDQo+ID4gPiB1MzIN
Cj4gPiA+IGNvdW50KQ0KPiA+ID4gK3ZvaWQgZm0xMGtfdW5iaW5kX2h3X3N0YXRzX3Eoc3RydWN0
IGZtMTBrX2h3X3N0YXRzX3EgKnEsIHUzMg0KPiBjb3VudCkNCj4gPiA+ICB7DQo+ID4gPiAgCXUz
MiBpOw0KPiA+ID4NCj4gPiA+IC0JZm9yIChpID0gMDsgaSA8IGNvdW50OyBpKyssIGlkeCsrLCBx
KyspIHsNCj4gPiA+ICsJZm9yIChpID0gMDsgaSA8IGNvdW50OyBpKyssIHErKykgew0KPiA+ID4g
IAkJcS0+cnhfc3RhdHNfaWR4ID0gMDsNCj4gPiA+ICAJCXEtPnR4X3N0YXRzX2lkeCA9IDA7DQo+
ID4gPiAgCX0NCj4gPg0KPiA+IC4uLg0KPiANCj4gLS0NCj4gUmVnYXJkcywNCj4gbGlzdG91dA0K
