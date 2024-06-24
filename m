Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B446914EF5
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Jun 2024 15:43:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0F53E81457;
	Mon, 24 Jun 2024 13:43:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sCUwYwJ5ksRv; Mon, 24 Jun 2024 13:42:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 84B7A81459
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1719236578;
	bh=jaHaoEP+ZZsBGmDyYrjPPPkFmgVkQxibMOUMxxQh+1s=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=E3cszLkML4K4ZakaE6M6V6tOTSHyNOA0AQE4PN8whVHdmvxB4bAjkpQ5h7BTyPcKb
	 2ea9Tj+2qUyIzGOz7s6AbUS3V3Zgb/1pSuuiuNQLJgEy6yXT5UvPbZqYZNKzWZvL5c
	 TGrs3ZSAyt/2dM5oaKDa6nfV3qM6nCs0tcEOUtUrKgcpxOJxMDqxAgXStOm6hYqmQb
	 1AqIpH9R8MR2zvX9KKQWVf1nCRuTEze6pD7tvWM3cZiCCHBLx6jOT7khS/AjWJnPae
	 J2T4sdV1gcw5xpvhgV4ip81fBVyeFImx7gvbXaB1ib+ZnGDh8p7nlyhT8dCAeKHpQt
	 BF45g2Ir3AMEA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 84B7A81459;
	Mon, 24 Jun 2024 13:42:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C48D21BF479
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jun 2024 13:42:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B0898608C8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jun 2024 13:42:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JPH_kMPtywQk for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Jun 2024 13:42:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 5FE2B606EE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5FE2B606EE
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5FE2B606EE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jun 2024 13:42:54 +0000 (UTC)
X-CSE-ConnectionGUID: ijY7PZRMTHaitISLWvESgg==
X-CSE-MsgGUID: 5/hiZYExTDaaF6mldUrXKg==
X-IronPort-AV: E=McAfee;i="6700,10204,11112"; a="16338328"
X-IronPort-AV: E=Sophos;i="6.08,262,1712646000"; d="scan'208";a="16338328"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2024 06:42:54 -0700
X-CSE-ConnectionGUID: MC/lNcYKTU+OVaYj/D7R8w==
X-CSE-MsgGUID: pttoxe5NTcm5IyMSIMvn5Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,262,1712646000"; d="scan'208";a="47826223"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Jun 2024 06:42:53 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 24 Jun 2024 06:42:53 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 24 Jun 2024 06:42:52 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 24 Jun 2024 06:42:52 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 24 Jun 2024 06:42:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=G3mKaUwuJJqhAarhkMB8xL3ySITXhx2AEqyCstEuV3nyE2ZwCqpTpBPvGnsTnKNh6jUUH/RrQMc0x2gmMgywDEJ6rpehMOIOB0B7UIhwVrRFnWw8DJMhF38v96R8j0TFFtQXd/jmlNm2NXmwpn9sgEOIZhU/IKo1UFL5sdl/rpRbBpWoJQ4VZQJdNttswrZw3E+5F/9dRZHyCMoWpIFLJkNNvoIHdILKDjg7rlG2frTRppYNmR+iGnZHCd5F3Q0+8A35OjXp5wpjMDsd5em5tTxCHpp8e4VbVT4mdh9XUfLGFDvTRrx77HM0FRhZnW+nUhWS3OYzVGaIZyoLGBerZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jaHaoEP+ZZsBGmDyYrjPPPkFmgVkQxibMOUMxxQh+1s=;
 b=g+FofbxIRLV9nh7hQszl0RLCONZLNwKW9CsntZy/MTnzuvhaasqKo6iCUf8j9X7XyNTnNpbpHecwGs/Qzm+HL8l1jLFwaWqErHrt+C2mzm6HzSEnFIFYH9ajLmqbAUup79mCYZGR7v7vdUkmB5XUkAWDjBA6m2redgUXUO+YhCh2Y9/nlzp12U2j14I1dNEthHVmWmG+1gxIoZQRNirKqxizczp3ifSC8ZeqP/WQITC9PKWsxSZcHLYrzJxVDlPp38H+Hfb+FV+UKysMx4hYR0KghR5fVduM+r6rOUqkPupipdaylcyNj4PVkCs4EmXRYaOSjQYrPY2/bHunbU2uZg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by SA1PR11MB8489.namprd11.prod.outlook.com (2603:10b6:806:3a9::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7698.26; Mon, 24 Jun
 2024 13:42:50 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%6]) with mapi id 15.20.7698.017; Mon, 24 Jun 2024
 13:42:50 +0000
Message-ID: <26c1dfa1-0f3e-4873-a1d1-b228777336eb@intel.com>
Date: Mon, 24 Jun 2024 15:42:44 +0200
User-Agent: Mozilla Thunderbird
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>, "Nguyen, Anthony
 L" <anthony.l.nguyen@intel.com>
References: <20240618132111.3193963-1-aleksandr.loktionov@intel.com>
 <07519e33-23e8-48b1-a445-c128b40e1c36@intel.com>
 <SJ0PR11MB5866A55691B58852B19FAC5CE5CE2@SJ0PR11MB5866.namprd11.prod.outlook.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <SJ0PR11MB5866A55691B58852B19FAC5CE5CE2@SJ0PR11MB5866.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MI0P293CA0001.ITAP293.PROD.OUTLOOK.COM
 (2603:10a6:290:44::16) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|SA1PR11MB8489:EE_
X-MS-Office365-Filtering-Correlation-Id: 95cdaacb-4e09-415f-71c9-08dc94538a2a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230037|366013|376011|1800799021;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?czU1M0lPM3VrckRvTmR6Y3FjQnlGenBhcmpWSWs5SmR3OXphK2FLUEszOVdH?=
 =?utf-8?B?aXVKTkI1dmpxd1dUTHpjKytmWjE4bDFWYWVGYW0rand5MGoza0Y4VjhHb2FW?=
 =?utf-8?B?UFZrdzk0QWRxbDJqd1V0aVBmTHF0VXBLSlhZRmphVkhReXYxS0FzQWdxMkxJ?=
 =?utf-8?B?SWU0T3R0R1k3Z3NzWlh6b3JJWG4rdEhOMGIwNkdFaWlzZW1raFpOekk5djBE?=
 =?utf-8?B?TXAzSTVqZlVTVTg3UWpyajd6SGoraFgzM251Z0pvOXp4VGZnbk9YOXNPd1hG?=
 =?utf-8?B?THpVSHJiNjc2c1Z1TGlMVlJ1MUVibkkvTDl6emVpRG8xdTFKMTVNOEdlVU5M?=
 =?utf-8?B?R2lpS1RONFhGT2dET09LZmVxSDJkQ1VnejRuZDJxd01xaHVVTWltR1VxblE0?=
 =?utf-8?B?UTJhMGJsTmlyanN4a3NubTVmdEpURTB2ZEVzb3ZjWG43bVJtdGpjTmtkamRG?=
 =?utf-8?B?cEhkR3ZlKytFQUIxQ1RrbDE3Tnk1NkNabUpUdmxJMWRuT3NyNCtMZGxqcGYw?=
 =?utf-8?B?NklWVE9NQVkrSm5SUTFBWTAwK0VqN2RwZThtc212TFpjZGYyTjhVbW5KNWJm?=
 =?utf-8?B?WU9lc3RERjJSNE03WkxlcjVrVFowSWZDazQ4SmU5VjZOK2ZHWWw5L1lDcTI3?=
 =?utf-8?B?UVAwWENyV09yTC9IdEpPaGN2YlpYeml1Zk9lbzVxbFdsYUw4YmhyUEszMFVl?=
 =?utf-8?B?ejRVZktnSW9SY2lzMVh2Q2tRZ0hheWRMYnVGamFhSlBqbTRBZmVFeUF0dEdL?=
 =?utf-8?B?SkZva1c0RFZkdUc3MzIrNXF3bnNSa0lpMlpSdnMvUDl3cW1NbmxLNlRrd1Vl?=
 =?utf-8?B?T2ErckFvSHRxb01LTzd1MWFXbWxTRjZvc255NmxVR3dOTDYwVHZ0Y1NJb2Vi?=
 =?utf-8?B?dEFoNVlsTkczS3pTaWRicWh4L25PcVM2TURlcUxOdXhqMXVzcWVJNlplOVBJ?=
 =?utf-8?B?aHB4dTQ4dys5VG04NGdMZHNTZE9hNGFER3NZOEQrd1VFOTRZWlJIa1FEMm1u?=
 =?utf-8?B?cE93dGtXcEwvNkdXeStidG5kWDNzRkF1LytNSGliMk83b1lQUktybHFMeFZP?=
 =?utf-8?B?NjF1RDZWYVV4SnRQUXduZEhITEZoWWRTaGwrWnc1d2NmS2w3MTFSMU5Pd2Js?=
 =?utf-8?B?S1JkQnFxK1BxTklGQzJzL2ZsaGVkK0hIUm53Wms0a1FYa3ZMK3lvWk45dlgv?=
 =?utf-8?B?UkxCMVdEb3pueGF5OGtqTklFelBBVVlmbjRZQVZoRWZrenM5VWQxRGhhV3Zu?=
 =?utf-8?B?aFF0WXpGTHI3cE9pZVRVeVk1OFBrMzBhYW9GUzNieGQyWlJvcy9oVEY0ZFBa?=
 =?utf-8?B?a3g2RHJJbnNyNm0wWm9DSkdNUzFXcktLRWE1Umc2RWgyM3BxbVBabGIyS0dW?=
 =?utf-8?B?L1ZNNEU0RGFxTTJJTmNPdVlEM2pOcEdtSzVST1poMjJBK3VxYWxPd0t4d0tK?=
 =?utf-8?B?Z09URCt4akpTZ3l4WlY0R1N4M25jOWc0ejVGcGIwOW5QR2U1QVo5UU9EQjJ0?=
 =?utf-8?B?VEEyV0RYaXFOdkVKN0pmeEcrcWxSTUlWeGFneW9VdGViMTBVbWRRT1pqWjZl?=
 =?utf-8?B?K1B3ZlZrSnd6ZWpCUUJTcGZJeUoxNDNJVjB1azBQTUdxU1R4WmZBNDNZVUNi?=
 =?utf-8?B?WlBxemk5OVFRVEFIZ3VreDlHbHNleU9KYWIvTDFMZTk4RHVqMkpibGRVOEE4?=
 =?utf-8?Q?OnawyrtnChMc6Auq+4Ue?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230037)(366013)(376011)(1800799021); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TkJEbnloRU1rcmo1cndXVm1veFRsOWZXeC9JM21ZYklGNWVPbFp4VUp3L2da?=
 =?utf-8?B?K0NFZTNTT2pXc0dORVVlMkh2Skt3L2M4eG9OdU5YU3dGclZmOUJyMjVkSGZG?=
 =?utf-8?B?Ly9PYVQ4aU16RUgvMVI1MFRmUzA3dVp2YU13cUphbGJhNU1XTkFrbXNyT2k5?=
 =?utf-8?B?Qy9xOGRDaXlnb1gzd2NDeFI1NmhDeWhudmZLTkZtVUlOYjZPWjRHb3o0ZFFh?=
 =?utf-8?B?c3ZWdXZ3ekRlNTlaRVZGd1pSdmx4REV4dXg2ZTdwUitvcENoSHZOVDF0WnJo?=
 =?utf-8?B?UFlwUFI5Q3ZLY2JxYzJEVUUxNUdRRElEajBMU2VGOUZzSzlhU3hNTVlJbmhG?=
 =?utf-8?B?MGdNcXJVS3NOL3FIbHpkRGhEWUoxTG5HUXFpRWRrQm15Qi9XendQWG85QUxP?=
 =?utf-8?B?ekJUbFFpRU5Lak0xakJhc1ZJL29KYjgvamI5STZNM2J6MnVZZDU3QUNVR29P?=
 =?utf-8?B?ZWplZ2cvL3JOL3dVOCtMQzhKNzdDMXk5TVU2a3NvSzJjWTU4Z2xQWUlIdy83?=
 =?utf-8?B?MUZWMWhBbGVqb0FISjJKSURnM0NzSjVyTkxqY0pkVjJHZllSc2VHL29VQ1F4?=
 =?utf-8?B?WWVVRU1LbTIveEUvaTdRa2xnelAzamlDY1hKaVdQQWxWb3dGNHk3NTIwNmw2?=
 =?utf-8?B?N0pnM0lqWjNKZ2FUL3Voek4rWHE0VXpOYWY3UTZyTFZHTUtJZ3VCckdSaGs2?=
 =?utf-8?B?aFZ0QVg4VWJCNlI3WERyaHVMQzJtUEpRaFhFdlk5S3VDRkd3Y0JRK1NjUHF0?=
 =?utf-8?B?L0hFNW5lTWtyYmZCSkF4NDI5cVAxUGljK2RvS3R4bXlmbHZpY1pmQ2tMbUhP?=
 =?utf-8?B?bE9iaUdNOVg0NkI5SVl1UzVobW5YeWJ1YzlhRWNJa2dqKzMyNFBMQUEySjlv?=
 =?utf-8?B?eEluSjVjL2JWODBBWHZ6QWFuQ3JwL2JaN042SVpFTHJMSDBPVXRrNmZ3eW1K?=
 =?utf-8?B?enFMOEJSc0l2WkQwNW9SeXNiWHp1azBVbk0wcUQ2RFJqb05rRTZsTmFUbWJp?=
 =?utf-8?B?WEdNTVBZNk5Xbk43OVk3ZG5BRnhzclRWNDJaUWtzN1FzMjg3dnFFZ0k0YSta?=
 =?utf-8?B?K25obmg4TWEwanZma0g2eVZ4cmcrVFV2RDJxY2ZjUGhJWXV5REsraEhLdmZ6?=
 =?utf-8?B?RjM3aWZZUzNVc2R5b284YlN1MEsyWHRpUTdoVFFldDZMbDFaYXhyWFFNc1hv?=
 =?utf-8?B?TG4wYXY3S1phbE1HNXEwZFlBZXpsb1JOTklqbDdjVDg5ZjhZb0UwMDFqSHhn?=
 =?utf-8?B?Wk5mZys4dHRnWm15b1VXZXd5YWJGSFFhakwvcVpKOWxWUEJMU1o4OE5iZTV0?=
 =?utf-8?B?OGMwRG8raFFaaFNxVTMxdURKejBBUFFra2t3dmIrcWUyZk1TSHZGUlRNcSs4?=
 =?utf-8?B?WnF3dmFacXhZUXF3cDgvdzN5RldYS2s4UENvU0wyZmhoUGRBTFVrWkYvU0xs?=
 =?utf-8?B?Y2taTnVFT1NzUXRqSFU2MWdRY2Nmb3NhYlgyekd5LzF4N2xiNFhiajFNUjd6?=
 =?utf-8?B?c1kvT2dIZ3YrbGlvb0ZvbkhEeUNSYksyK0RIOTFsNnMrYlhwYjEwd3VmZk5t?=
 =?utf-8?B?SkdRNGRoeUd0UnRTNmtvVk9vQ2ZJM2ZRbVZibWhuNHRMVUhZSnJJaDRaZ21P?=
 =?utf-8?B?eE1MY0JTTktseTgrRVRqeWM5NytnaWFsVi9UVkkzeWQ0anBKcGltVTB6ZTd4?=
 =?utf-8?B?Y0pGQUVONThlRjhWRXdWc0xOR3RxR0QxbHNFY3hXV0Z3V2RZdG50MXhVYlZX?=
 =?utf-8?B?R1U3MHYyMjNZN2VuL0gyQzZOc0syTGlickVEckkxTTB4RDVtMU82enlHUWZG?=
 =?utf-8?B?R3ovSVhFT2diNy9QYkZRc0QwbWI1eWpRZk1KdWtwRTBiV1Y2TDNQKzBHeU9h?=
 =?utf-8?B?K3N2SmFvNmlwaG1hY21QZHdqMktpUW9Yd1o2OTlBeTljMVdoZitWbmhWR0VY?=
 =?utf-8?B?bE5OR1R5UGI5eFc2V2EvWWgyWFVZSTgzQm0wbHluUUdCMEZsL29zZVVTMjYz?=
 =?utf-8?B?RTdGNURPQng5bHRnL0xLOTZnV0VwSW0zb2ZyZ0hIV1lNWnhtbXh0RW5tQ2JQ?=
 =?utf-8?B?TkxRN3c4ZUJKbWlzb0xXY0JBVTduOUVORHZWTDR4QkJrZm5EYVdzKzFDZXYx?=
 =?utf-8?B?dXRxQ0V0UnFYcWM0dEp0TnJhTVdsdW91eGNWSlJ4QlA2cEdEMFZkdUc5TFpu?=
 =?utf-8?B?TWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 95cdaacb-4e09-415f-71c9-08dc94538a2a
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jun 2024 13:42:50.2759 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: keePoFyxuc9Pcpfk0R3SCaxRxSjfEVd3nKmE4zMiJnqXFsTiiO9kEEDGp1QQy9lSKPp9+sG3yMNMfLlgzVn8jhVOJbRshEr8b5GE92N7ho0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8489
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719236575; x=1750772575;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=u4kQTcL82w99OJQsWsX6vB5v2XEs0hliwgoGzo1RaRk=;
 b=kSkvqsSC5eq6DdNTYyV9HEd8hxK8DHMjXKIguferNyVvu58HWK8ygMvQ
 PHzq4hCYt9bCG/ftelL0gxaKz4fWJTbGxID/XthgCOW42tOHf0Z3wmCDs
 SlxK2dUcJWQ/HCkvwK6sk7P0iioxfrZSHjayV8q3RP1YVu9WcuVDkIjvH
 B/rkk8isLWIYHVGrUONR2COHh2YVQnMmeqgJGFbepHdXdkX5S5awUmNwu
 WlMWTzCqzm7mISNo110qhxP7XBG5GJzkXs/T70gqN0gdHfp8p5c8ltBf3
 vkVWwoyIx7kuDSl/ak1PYUwEEbA8S8jn2/Qt+ybLUKOizNATjSlVLWD9w
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=kSkvqsSC
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v4] i40e: fix hot issue NVM
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kang,
 Kelvin" <kelvin.kang@intel.com>, Paul Menzel <pmenzel@molgen.mpg.de>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 6/18/24 16:21, Loktionov, Aleksandr wrote:
> 
> 
>> -----Original Message-----
>> From: Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>
>> Sent: Tuesday, June 18, 2024 3:50 PM
>> To: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>; Nguyen,
>> Anthony L <anthony.l.nguyen@intel.com>
>> Cc: netdev@vger.kernel.org; Kang, Kelvin <kelvin.kang@intel.com>;
>> Kubalewski, Arkadiusz <arkadiusz.kubalewski@intel.com>; intel-wired-
>> lan@lists.osuosl.org
>> Subject: Re: [Intel-wired-lan] [PATCH iwl-net v4] i40e: fix hot issue
>> NVM content is corrupted after nvmupdate
>>
>> On 6/18/24 15:21, Aleksandr Loktionov wrote:
>>> The bug affects users only at the time when they try to update NVM,
>>> and only F/W versions that generate errors while nvmupdate. For
>>> example, X710DA2 with 0x8000ECB7 F/W is affected, but there are
>> probably more...
>>>
>>> Command for reproduction is just NVM update:
>>>    ./nvmupdate64
>>
>> nvmupdate64 is not an upstream tool, but it's fine to mention it here,
>> as we don't have a better alternative for i40e as of now
>>
>>>
>>> In the log instead of:
>>>    i40e_nvmupd_exec_aq err I40E_ERR_ADMIN_QUEUE_ERROR aq_err
>>> I40E_AQ_RC_ENOMEM)
>>> appears:
>>>    i40e_nvmupd_exec_aq err -EIO aq_err I40E_AQ_RC_ENOMEM
>>>
>>> But the problematic code did silently convert EIO into EAGAIN which
>>> forced nvmupdate to ignore EAGAIN error and retry the same operation
>> until timeout.
>>> That's why NVM update takes 20+ minutes to finish with the fail in
>> the end.
>>
>> this paragraph tells more about nvmupdate tool problems that the
>> driver
> What is your proposal for it exactly?

Perhaps this could be summarized as:
This driver issue leads to nvmupdate needlessly retrying for over 20
minutes to only fail at the end. It is even worse that NVM content
could be broken after the broken update.

But I'm fine with it as is too.

> 
>>>
>>> After commit 230f3d53a547 ("i40e: remove i40e_status"), which should
>>> only replace F/W specific error codes with Linux kernel generic,
>>
>>> all EIO errors
>>> suddenly started to be converted into EAGAIN
>>
>> all or just this one that you are fixing here?
> All error codes from FW which exactly I'm fixing of course.

fine

> 
>>
>>> which leads nvmupdate to retry
>>> until it timeouts and sometimes fails after more than 20 minutes in
>>> the middle of NVM update, so NVM becomes corrupted.
>>>
>>> Remove wrong EIO to EGAIN conversion and pass all errors as is.
>>>
>>> Fixes: 230f3d53a547 ("i40e: remove i40e_status")
>>
>> That is a proper tag, and the description makes it clear that we want
>> the patch finally applied, thank you for the efforts to make it well
>> described.
>>
>>> Co-developed-by: Kelvin Kang <kelvin.kang@intel.com>
>>> Signed-off-by: Kelvin Kang <kelvin.kang@intel.com>
>>
>> this 2 line removal was indeed developed by two of you?
> As written above, yes of course.

fine

> 
>>> Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
>>> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
>>> ---
>>> v3->v4 commit message update
>>
>> Please fix the subject line too, it's what will be the most frequently
>> read part of your work, and with stay in git for decades. You could
>> use:
>> i40e: fix wrong error code replacement
>>
> This patch fixes urgent/hot issue with NVM update, which is stated in the
> title. Wrong error conversion code could lead to different severity issues.
>  From my point it's better to mention in the title the serious problem which
> users meet/see, am I wrong?

I believe so, please send v5 with a new title, like:
i40e: prevent needless retries of NVM update
(no "hot issue", this is as hot as the more severe half of i40e bugs).

I know that you like to have "fix" in the title, but this is not
required for the kernel, as the same info is assumed from Fixes: tag.
If you insist, then:
i40e: fix: prevent needless retries of NVM update

By trying to start the sentence from "fix", you dragged yourself into
this convoluted need for explaining yourself ;)

> 
>> and add link in changelog section:
>> v4:
>> https://lore.kernel.org/netdev/20240618132111.3193963-1-
>> aleksandr.loktionov@intel.com/T/#u
>>
>>> v2->v3 commit messege typos
>>> v1->v2 commit message update
>>> ---
>>>    drivers/net/ethernet/intel/i40e/i40e_adminq.h | 4 ----
>>>    1 file changed, 4 deletions(-)
>>>
>>> diff --git a/drivers/net/ethernet/intel/i40e/i40e_adminq.h
>>> b/drivers/net/ethernet/intel/i40e/i40e_adminq.h
>>> index ee86d2c..55b5bb8 100644
>>> --- a/drivers/net/ethernet/intel/i40e/i40e_adminq.h
>>> +++ b/drivers/net/ethernet/intel/i40e/i40e_adminq.h
>>> @@ -109,10 +109,6 @@ static inline int i40e_aq_rc_to_posix(int
>> aq_ret, int aq_rc)
>>>    		-EFBIG,      /* I40E_AQ_RC_EFBIG */
>>>    	};
>>>
>>> -	/* aq_rc is invalid if AQ timed out */
>>> -	if (aq_ret == -EIO)
>>> -		return -EAGAIN;
>>> -
>>>    	if (!((u32)aq_rc < (sizeof(aq_to_posix) /
>> sizeof((aq_to_posix)[0]))))
>>>    		return -ERANGE;
>>>
> 

