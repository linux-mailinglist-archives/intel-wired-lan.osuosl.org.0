Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id DmnCEAzuOGrLkAcAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Jun 2026 10:10:52 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 75FD16AD8BB
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Jun 2026 10:10:51 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=syhKb1tI;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 034046F481;
	Mon, 22 Jun 2026 08:10:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MSpDVVMyzPbU; Mon, 22 Jun 2026 08:10:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E68BC6F4BD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1782115848;
	bh=AJ88QR/y3smpJwnYnnHFmaQsSxrjzpsxfXj62LHe1PM=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=syhKb1tIQ401+TzgvoXb9vJvJ5FWNkVjLvijNW0hIcP8hoS7gi8tsUyLnbNMzMtB+
	 Ee7Tk4phBChKT7UoKCfUQ+NMwCgdzD+QPEds/Pr22rezOwPgTCLVct8B9bS1DliStT
	 ZlaNDgSzo8rwhQU1ieUrHmToOw3YaFREm7Pz7YlCDLYxy515MabgzuWQmhQ3yH6gtQ
	 zwpWRPhkIzILP0iauIqLb66uxvQUs+ioCzOLs4VYp31roRjAMW1FVN2vEPPpPNziEX
	 mvODfsZZQ+lFlMmw5msBHuRbiSA6CQL1J/wx8x1L9isezYp9BYDZ7zM+yjgCmvQ6MT
	 HfeBc/M7JyavQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id E68BC6F4BD;
	Mon, 22 Jun 2026 08:10:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 3B5F0367
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2026 08:10:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 261596F481
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2026 08:10:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id e8YF9zL-frzi for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Jun 2026 08:10:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=moriyax.kadosh@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 9F46A6EE27
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9F46A6EE27
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9F46A6EE27
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2026 08:10:44 +0000 (UTC)
X-CSE-ConnectionGUID: FHhrKgeRTM6cXvwTKok+Ew==
X-CSE-MsgGUID: c6u83GyHQmaIgGn3QrpQCA==
X-IronPort-AV: E=McAfee;i="6800,10657,11824"; a="82709067"
X-IronPort-AV: E=Sophos;i="6.24,218,1774335600"; d="scan'208";a="82709067"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2026 01:10:41 -0700
X-CSE-ConnectionGUID: 6IAPhs3vQ5i+9IC89ZbLLw==
X-CSE-MsgGUID: SXIk6tUZTryeooU1ZXq3tg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,218,1774335600"; d="scan'208";a="249016219"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2026 01:10:41 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 22 Jun 2026 01:10:40 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 22 Jun 2026 01:10:40 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.10) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 22 Jun 2026 01:10:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Zan3rb4qVJAHejKodptMRYJvQltO04UqJwEAVLRG2rt6FvNKdkxT15H+QoraQaiUuy3a7OXtgQlZZfchyahToeTeXyexFFCMlJ85wAAYZ3DaEkVmjikctm7A0m5rs2XdIUJYw2FQzvyp5ykiDCummZ+W+qg9hS30AnwxFZJEnFOIkFy1zFic5IcgtxlWEbaMLGiaVIHytVcNxKqX+eyNrq0zuc7Lvhbb73y7FEwZ6vfhGgiVKMJQk6bxrDNVIGHlPHSeyc97v7BjuqLEEsEwD1ggX11pd9xOCkyZifIFZ8Y1h8ODrQrsvnUGnajgI+d3G020G4HGp7TM3HK092t3uQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AJ88QR/y3smpJwnYnnHFmaQsSxrjzpsxfXj62LHe1PM=;
 b=YeUMbWEPKXL1aKtNrFD9/OK+BOkY099bXesbQcygBp5drhukdR88tsn3WhwYMbDnhOI8SCsq62tPaZowqGL5qCcTEs7k8WQFD4ouYtorGII9XOYzOmR8zwTDKFMmEurOhyXZ0iYeQsoogcV7E8Gv4uXZOiAAqnTu+yB1mXjXkihGILwOdUtDx0QY+/bX4UEHZ0Qemgsg4cu9OPlezKeOdw/SWoq0xarbK0sn1Pn3VEyTYvvr9vo8DFaz11O8cVGHAN94dqNLfaXUaqQ4RXiMtH9hWn0TpUnEvi6nd3Cp6JP4ZlOJsO0TsTp2Q/+eK96SVboJn46k5tIl4cY9HsnOHA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SA1PR11MB8448.namprd11.prod.outlook.com (2603:10b6:806:3a3::17)
 by DM4PR11MB6094.namprd11.prod.outlook.com (2603:10b6:8:ab::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.139.19; Mon, 22 Jun
 2026 08:10:37 +0000
Received: from SA1PR11MB8448.namprd11.prod.outlook.com
 ([fe80::38f:6a4:ce6b:d5b8]) by SA1PR11MB8448.namprd11.prod.outlook.com
 ([fe80::38f:6a4:ce6b:d5b8%5]) with mapi id 15.21.0139.018; Mon, 22 Jun 2026
 08:10:37 +0000
Message-ID: <5d3a5d29-5dfe-4890-8f03-93aad240bcd5@intel.com>
Date: Mon, 22 Jun 2026 11:10:30 +0300
User-Agent: Mozilla Thunderbird
To: "Ruinskiy, Dima" <dima.ruinskiy@intel.com>, KhaiWenTan
 <khai.wen.tan@linux.intel.com>, <anthony.l.nguyen@intel.com>,
 <przemyslaw.kitszel@intel.com>, <andrew+netdev@lunn.ch>,
 <davem@davemloft.net>, <edumazet@google.com>, <kuba@kernel.org>,
 <pabeni@redhat.com>
CC: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <faizal.abdul.rahim@intel.com>,
 <hong.aun.looi@intel.com>, <hector.blanco.alcaine@intel.com>,
 <khai.wen.tan@intel.com>, Faizal Rahim <faizal.abdul.rahim@linux.intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
References: <20260507214706.309984-1-khai.wen.tan@linux.intel.com>
 <20260507214706.309984-2-khai.wen.tan@linux.intel.com>
 <7d4b2a62-231a-4f61-8561-5c26d6ed3125@intel.com>
Content-Language: en-US
From: "Kadosh, MoriyaX" <moriyax.kadosh@intel.com>
Organization: Intel Israel (74) Limited
In-Reply-To: <7d4b2a62-231a-4f61-8561-5c26d6ed3125@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: TL2P290CA0007.ISRP290.PROD.OUTLOOK.COM (2603:1096:950:2::9)
 To SA1PR11MB8448.namprd11.prod.outlook.com
 (2603:10b6:806:3a3::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA1PR11MB8448:EE_|DM4PR11MB6094:EE_
X-MS-Office365-Filtering-Correlation-Id: 5b6c16f4-13f8-4cf6-d583-08ded035bdc7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7416014|23010399003|22082099003|18002099003|921020|11063799006|56012099006|6133799003|4143699003;
X-Microsoft-Antispam-Message-Info: M057ohCQJhzxPNYreE4n8g/gfN9dE+FWLuOScgrIBjU+NK9wrr5qFruB7WP55n8wCP09Msgul1QjzdCtUmZxWKHMIIu1rvY0uGoLCBbwh4DWA6DFRx9P1NfJYn5xBgvl2qhkZzS0CwvfM0xdsgW91vMarSIDs54mJrnSF5+Xp3zGKk7ltnSTyE92yye72U8kQr6u4ZUGDOhOPbtgQDj7fb+cBUYPDLKr6S3ltfmWXsyFn1UlXz1v7vAJUL7UYEmgwRG1T/dGuwNy2Qw37wavcCwHWyktgoVyRnvF/WBp8FbuGT+hihrd5NVXnSHgHRs86s3VF2sRY7WxRLmjCV+Lo3kh7tM+dIKRxL5hzLCf6GZ8IdrgcthcbxKEumYm1TdT4NIXUC3rTS01w8ySwyPvdmZX3vbrE59WlSh1G+m78iQ9VfvBD6PqPlWkxm+FWIYY+10LMybsyJu8x9xYPxGZn0R7UKes66aLmNFb0kCU2C1lHWFMuhspHmdXSQmzlXNJLpyg8HMJ5Jl2BgpODxNLb1EtGzuMcKXWZlDAkWukTXEBQjDyr7PFhzUzVPoRolLFxdZgK7b+f8GalIa3t5Blm5PvMe2vlqQKD7SKog7Ht9uE7lWfqcnEj6XYM4ud/ubP4tikRDNywxDEq6UNgJ2d/UbX5rLJwkRjytNCrx+ed345WewIsfBj8bY08I8jCgO90k0qw3wzcx0DBwuwH4iCVw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA1PR11MB8448.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7416014)(23010399003)(22082099003)(18002099003)(921020)(11063799006)(56012099006)(6133799003)(4143699003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aTA1NVVMZ3BhZ3V3dEFRQ3RxblVIRnNWMGpvTU1sUHZGOTIwN1VOemVraE02?=
 =?utf-8?B?OHpSZzNjQU5GaXhuZjJCQytPN3IxblVUaHlsdmdKQXBwd3dTbW1zTkxPSWho?=
 =?utf-8?B?M3hxS3o1VmpqNUZKQjlPT2pxQkh1QWVzRjRucjVvRFNhbDZFdENzQnlZb1Fy?=
 =?utf-8?B?bTFOVE1vRzVpRnErcE1TWkJXRmdSek9MMGZraWtHblE2VU5wZTdoV0srbnJu?=
 =?utf-8?B?QUpPdnZwOEN2VlNibHdlK0VRQkhaSSs3SjgraWFEMENSRzc3MmRxdTVNa1ht?=
 =?utf-8?B?RldKNEd3Z1c0OGoya2p0Zk90U3MwVFhHQjcrNVVwZW1HeGRBWVp4OTVJTzJx?=
 =?utf-8?B?OE9OV1dPRDdCbGZjQk1Sc0l2QWIxWUpjSkgwcFVNbGNsZG1Yc3lCZUx6M2xO?=
 =?utf-8?B?eFN2K0E2UnJIQ1Z4RFJ0THZVdTZKYzRXRnFxeDkzQnVNYmJJVmY1R2hhS2h3?=
 =?utf-8?B?MThiMG9rNE9ydXE4TGJBRC9wSmJMN2ZYWGhFeVhZZW1sSjZ4bXMxV3F2ektj?=
 =?utf-8?B?citwRDJ4QkdUbEtRWjR1bmxkWDZCTXFITWJnNkdkUmZ3NzB0N0VkUUxmNmtN?=
 =?utf-8?B?UWk1UkFBWUk4eDM4bUYrcVpoNFpubVZHYXo4QStJYkcweXoyb0FuYnF6ek10?=
 =?utf-8?B?NE1yQzU0aGpQWmova1RIaHZYenpmOUpLVDNiMVlLRW5MK2krQ2RRS3liU2lS?=
 =?utf-8?B?VHF0dTUxSWpjeEFtbHppRisvbzZ3aXpYbTVtUnhDSmZJZGtQUUhtYkdLb2Zm?=
 =?utf-8?B?aVRRYjhkeHVaZzljbTAwd0NuNW50dFowMnFtTFM2amU4czJwTENrbWhBYVFB?=
 =?utf-8?B?UnpzQlE1VUxLUTlzMkR6Um9WeHArZWRPRjVQRzQ2OVZoQ0U3L3NmWHFnZDQw?=
 =?utf-8?B?Yk9ETjM0eXFLdFVNQm96bE1OckNiV3l1cFBuU2p2aHhheVNlbEhad1VwWXJL?=
 =?utf-8?B?eXg4eVdwL1YzVHBUZnFLWk8xRGgzQzBLdXRFUEVwNWhycmZHVGJxazJkdGJD?=
 =?utf-8?B?Y1FXak12am90S0pMQzRPN2Zqckozd1J5V1RJbXlINFBhZUh3NEp4bTV4OGhx?=
 =?utf-8?B?cm1xVE82UUViZW84UXIxdVRCSWRXbTYreElZd1ZEdklLYXoyd3F4dytkaUtK?=
 =?utf-8?B?WHRKcDVucWE1ZjczRFhwSllneDg4WlQ5S2VKalUxTDA4OHhYcVlWWU1rbVZU?=
 =?utf-8?B?V21iK0RwSE41cEFEZTArbnZkUmZlaVkzaXVza29RZnlkbG5TakxDSXJES29E?=
 =?utf-8?B?ZndydE9zclZRT0xFcDRjajk4ejZiWW9xK0hPalRzTXBpaFpyMGw3V0s4akh0?=
 =?utf-8?B?eTZPSWJldHdqS0Q4R3FaRTJYUHhiVm1xK0kvUG1WcXJoWXR6MGVJMW1CMW50?=
 =?utf-8?B?WEJIRXk0NUlwNStJMFhQRmw2ZlVMV3RRbnJCY2YzRElvNnBjYmlUbGlkMVJ2?=
 =?utf-8?B?K3JPSzlIZHZyNSszaldHWmJxY1JrSFB4R205Y3BkU1dkSVlEaGMwVEtlYTZF?=
 =?utf-8?B?TWJVMEdjTk5pTGt6Tkt3bXZ2aFhsdkJOd2dKdHY5a0lsV2lDNldGVUlzbzA4?=
 =?utf-8?B?Zms5SVV4R2h3c25VVlFwNTBKeTNYTWE4M0pCb0pmVDRDcjRCU0RXMUNGQ1JO?=
 =?utf-8?B?YWNDaC83a21rV0Y3d0lzN0hsUXh5ZFBxZ1lpcngyTENxY05MRDJMQ3FhSUJC?=
 =?utf-8?B?ZnVmeDJ2b2d4dTRaU3RXc0RORzF2R2ZhaFREZE5DblhOUEhJKzQ2bUp1TG0z?=
 =?utf-8?B?TVAxUEtrZTJ5eHNaWEgzVmR4Z0RSM3lJQU4wSE8vRTBXOHZvaTdpZS82V1p2?=
 =?utf-8?B?NGpidWlibVpBK096aWZYODk3T0JDSXc3TXcyN0l0c2pMTm9qZ3l1cktjVUhm?=
 =?utf-8?B?WFpkNGs4Q1JLdldSWkhsRnBTZUhpQVhUQjNhcHpUVkZqNjltNC9VaDV4ZEdp?=
 =?utf-8?B?TktFaXV1S0xWSGQrNy9RN1VyQ0sybmZ6Ky9BcGJLVVZadEtGNVlwTXBkenF6?=
 =?utf-8?B?cWpkUUQ2aHFkMGlybWorVEtVeGdwT2lRbzByTlZMcGRPM05sbXNRNlp2Z2lK?=
 =?utf-8?B?K2hHVmhBbit0aEVEUTFSWllFMHR2Tms4Rk9sdnRzamlPUFo2VkJ3cVIvUGs5?=
 =?utf-8?B?NXlvYitqUUFYVXVrNHBoNEVEMGF0TzJLb05BMkJhTzl2UGhQbHNGMGVEc1VH?=
 =?utf-8?B?Q0NXU09NR3o1TEN5cjUwUlVFVXU2UkJHeDRndVJra1drLzZuaWRNYkxpOUR0?=
 =?utf-8?B?R2E5Um1TK2E4Q3k2RXZxa2pQcWdVSHl0SDErUGM5RjdwQi9keVdNcElpYjE5?=
 =?utf-8?B?M2xrVG1pRHpvb3NuTmZQM1pNNy9LWks2Z2w5SUo1RTU3VmJjU1VkVjRNeXVY?=
 =?utf-8?Q?dofwsMOcxWpXUedU=3D?=
X-Exchange-RoutingPolicyChecked: Lw5qFWLXtS3x+bFIdrIpvdwLPuF5QcstWCPFxfKwqYqVv4R+7e2lAW0FKim0qI9HcxaR6qdqbnxWihz3euWshvK8oHoL/5rcbFzGJLPbdQU7PpIRucwaF5ZpM5i7ag6Xj6/r4b2icNkRZolE1H5b2ad9b3tCx3R0XKqzGZdg3QLdp6gxnLUfROZHNLz5hhPcx/8p8lERKCteoRR8HzxGI8x9UAdFAOD9DKTI4m45UKpqhwvVPJHTH2owm4Cp/T8OhG6b+jN4xUS2UAn2IKGIzVbEUVBoieeeMrRVRe0DBTX6lGNB/aOkdrzW91OxdZF8EwQ2w31O4enjwqpPVkqFbA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 5b6c16f4-13f8-4cf6-d583-08ded035bdc7
X-MS-Exchange-CrossTenant-AuthSource: SA1PR11MB8448.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Jun 2026 08:10:37.1880 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: r9UOlCruLazyyWzHjP3l8N9q/1Pr+7sICTcnU5qyU1DueP6Lwd8v2xIBUOPXKtNEyK8oPhSDmXmrXpwcld5hGLmvT7IjAfWCpTnnEkmqti0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6094
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782115845; x=1813651845;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=vX/FSyNZfszXvCCcGFPbCodoqB0RbqShmTe0D+GcRLY=;
 b=MXk2DotjGn43/A5PqZimG9GS7e/G6hx3ctmy00ZmVIM6ZG2z+tCJlxH6
 J6lBM5Io2DUfAbnN16z/Jnr3mGyh77+mOLAuArBicoNOQT7OoGgiVxDNl
 dWyFM7Qk7r77VngdtPZaSPsUC6kHhSLcQt/ioUbpT5IjKf6vUCi0ZDjPi
 hfW6gJHhBXEfyzPmEZ280xGHxurRfCuNFfvPVFrKGOD8LINVEM6SBfQ0d
 awb1FCGWNiqkZ5XIOU/P+tximWiZWGrrG/NZTkXIjFfX5qD19I0yySmBU
 slurstkUqr3/dF7s2vmqdPGRWh6itRkdok1l5e132Fdi+MOg4GuRg/KBB
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MXk2Dotj
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 1/4] igc: remove unused
 autoneg_failed field
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	HAS_ORG_HEADER(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:dima.ruinskiy@intel.com,m:khai.wen.tan@linux.intel.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:faizal.abdul.rahim@intel.com,m:hong.aun.looi@intel.com,m:hector.blanco.alcaine@intel.com,m:khai.wen.tan@intel.com,m:faizal.abdul.rahim@linux.intel.com,m:aleksandr.loktionov@intel.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[moriyax.kadosh@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[moriyax.kadosh@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,osuosl.org:from_smtp,intel.com:email,intel.com:mid,intel.com:from_mime,smtp3.osuosl.org:rdns,smtp3.osuosl.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 75FD16AD8BB



On 14/06/2026 10:16, Ruinskiy, Dima wrote:
> On 08/05/2026 0:47, KhaiWenTan wrote:
>> From: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
>>
>> autoneg_failed in struct igc_mac_info is never set in the igc driver.
>> Remove the field and the dead code checking it in
>> igc_config_fc_after_link_up().
>>
>> The field originates from the e1000/e1000e fiber/serdes forced-link
>> path, where MAC-level autoneg timeout sets it to signal the flow-control
>> code to force pause. igc supports only copper, so it never needs to set
>> this field.
>>
>> Reviewed-by: Looi Hong Aun <hong.aun.looi@intel.com>
>> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
>> Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
>> Signed-off-by: Khai Wen Tan <khai.wen.tan@linux.intel.com>
>> ---
>>   drivers/net/ethernet/intel/igc/igc_hw.h  |  1 -
>>   drivers/net/ethernet/intel/igc/igc_mac.c | 16 +---------------
>>   2 files changed, 1 insertion(+), 16 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/igc/igc_hw.h b/drivers/net/ 
>> ethernet/intel/igc/igc_hw.h
>> index be8a49a86d09..86ab8f566f44 100644
>> --- a/drivers/net/ethernet/intel/igc/igc_hw.h
>> +++ b/drivers/net/ethernet/intel/igc/igc_hw.h
>> @@ -92,7 +92,6 @@ struct igc_mac_info {
>>       bool asf_firmware_present;
>>       bool arc_subsystem_valid;
>> -    bool autoneg_failed;
>>       bool get_link_status;
>>   };
>> diff --git a/drivers/net/ethernet/intel/igc/igc_mac.c b/drivers/net/ 
>> ethernet/intel/igc/igc_mac.c
>> index 7ac6637f8db7..142beb9ae557 100644
>> --- a/drivers/net/ethernet/intel/igc/igc_mac.c
>> +++ b/drivers/net/ethernet/intel/igc/igc_mac.c
>> @@ -438,28 +438,14 @@ void igc_config_collision_dist(struct igc_hw *hw)
>>    * Checks the status of auto-negotiation after link up to ensure 
>> that the
>>    * speed and duplex were not forced.  If the link needed to be 
>> forced, then
>>    * flow control needs to be forced also.  If auto-negotiation is 
>> enabled
>> - * and did not fail, then we configure flow control based on our link
>> - * partner.
>> + * then we configure flow control based on our link partner.
>>    */
>>   s32 igc_config_fc_after_link_up(struct igc_hw *hw)
>>   {
>>       u16 mii_status_reg, mii_nway_adv_reg, mii_nway_lp_ability_reg;
>> -    struct igc_mac_info *mac = &hw->mac;
>>       u16 speed, duplex;
>>       s32 ret_val = 0;
>> -    /* Check for the case where we have fiber media and auto-neg failed
>> -     * so we had to force link.  In this case, we need to force the
>> -     * configuration of the MAC to match the "fc" parameter.
>> -     */
>> -    if (mac->autoneg_failed)
>> -        ret_val = igc_force_mac_fc(hw);
>> -
>> -    if (ret_val) {
>> -        hw_dbg("Error forcing flow control settings\n");
>> -        goto out;
>> -    }
>> -
>>       /* In auto-neg, we need to check and see if Auto-Neg has completed,
>>        * and if so, how the PHY and link partner has flow control
>>        * configured.
> Reviewed-by: Dima Ruinskiy <dima.ruinskiy@intel.com>
Tested-by: Moriya Kadosh <moriyax.kadosh@intel.com>
