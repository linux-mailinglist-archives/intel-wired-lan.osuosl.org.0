Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id F3797B3738F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Aug 2025 22:02:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B0ABB606FD;
	Tue, 26 Aug 2025 20:02:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9h6hf1hWA6oa; Tue, 26 Aug 2025 20:02:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 13D1660704
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756238567;
	bh=XX4HECKxWt0UIoJzZc4dQN75eLAh9jC15Tddb26AZoY=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=PoTPWOh9AfG2ugY2tqBU/E7iV53JyHvvF+cJq86LQDo4nF0bcOIrmKg/4dXnr+Qwr
	 XuUBJWHao9x/pxkqfOjz8qyHp0OZ0RmUvq3suSpIdSQD/ifsI2grbujiQh2MZtGUHc
	 6dbh7Y+GV6HJ2hLi6i/a1hkC1wprfmqfJtb0tToGjpxGVCzdihXH6VHIw9+MXvxSOc
	 N1htpBOJ1BrtWxf/JOimPqE7NkWwSmCuxnr2NCOVsslF28IagvdOFkNtJG+JbOBt6g
	 LsqyxqbACoe5N3mw4nzuzk43hptoqtiLmSywPsw8M6fdSdHyODuXb7wp1N4FWI682U
	 PeaHHrfjXuCQg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 13D1660704;
	Tue, 26 Aug 2025 20:02:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id BFB90B8C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Aug 2025 20:02:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AAE78606EE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Aug 2025 20:02:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MqBLxy-VOmNM for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Aug 2025 20:02:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 18DCA606CF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 18DCA606CF
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 18DCA606CF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Aug 2025 20:02:44 +0000 (UTC)
X-CSE-ConnectionGUID: wUSuxYzCRCyVtAfpRN4FZA==
X-CSE-MsgGUID: ECE/JDizQw2/M0EvrxdySg==
X-IronPort-AV: E=McAfee;i="6800,10657,11534"; a="75939695"
X-IronPort-AV: E=Sophos;i="6.18,214,1751266800"; d="scan'208";a="75939695"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2025 13:02:45 -0700
X-CSE-ConnectionGUID: 2swF88PLQy6fFIyG5Nx/jA==
X-CSE-MsgGUID: N9GjkUVhR+KSvrQt4NVXyg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,214,1751266800"; d="scan'208";a="174066722"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2025 13:02:44 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 26 Aug 2025 13:02:43 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Tue, 26 Aug 2025 13:02:43 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (40.107.220.82)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 26 Aug 2025 13:02:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZHBvAP4z2t6uTyWHfuRIc85AQqS1DsG5a5D2U//JypXOoImHEPfZsNjtOJjuvu10HeMZZZ1kEcLJDbRQxVqyO3QTdGUEaFQl3GPa9JQC9aYTgJ6231djwhF7RpCO1S7E+L5QPzNduWKm2JfUwokv8AqBHsPjWdNsbwHq49tiv6Wzn03xcXZ+1/vfXFGLeAKqp5dKKzUUaPd71wJeAGRm20xgpJ47ajw64/nkF0JVvkXuPUDcmM7ZlrD3wbzh9JkXQEYVNfYzvdLow4EPR0I3PH1dyXwI0rJc1fnxWy2WCyYdBb3De1GZKisy6e2NTXyCrNyGQ7hTTSDB/oWpx54NHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XX4HECKxWt0UIoJzZc4dQN75eLAh9jC15Tddb26AZoY=;
 b=chzM9FYXgUBHWfnieCXgiyaAz14/1CxI5VhuXTAxqH0TKEqpgXW/k7GBEiWZFZMqUF34UD9wW3hAQgu44IBCbItkUaBNX6lYr7Gfy6BI8JoDQiA3op/uQIaFylCHor++Vyy/fRt7bjOie1aoGYR+C8zxqNBXWZP+yHb+76ME/xG8Kyr/ZrluDjKFPPptgQdALPHq8DK3j6Lo11PmghWwgfJGXMe7hciJLIUiRXqYDslaXLtkLQPYyYTH36/4ThMngQ1dDs9twneay3nrI+nSb6WxZCM/ygrC0UgchZtoK9nxTwalRaN3JyNTmdBqGxSDULd+Od9seXlGsdBkBdHqOg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by PH0PR11MB5927.namprd11.prod.outlook.com (2603:10b6:510:14e::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9052.20; Tue, 26 Aug
 2025 20:02:42 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%6]) with mapi id 15.20.9052.019; Tue, 26 Aug 2025
 20:02:41 +0000
Message-ID: <082137af-95a4-4ad6-b9c1-050e46cb52c0@intel.com>
Date: Tue, 26 Aug 2025 22:02:37 +0200
User-Agent: Mozilla Thunderbird
To: Simon Horman <horms@kernel.org>
CC: <intel-wired-lan@lists.osuosl.org>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, <netdev@vger.kernel.org>, Greg KH
 <gregkh@linuxfoundation.org>, <jeremiah.kyle@intel.com>,
 <leszek.pepiak@intel.com>, Lukasz Czapnik <lukasz.czapnik@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
References: <20250813104552.61027-1-przemyslaw.kitszel@intel.com>
 <20250813104552.61027-6-przemyslaw.kitszel@intel.com>
 <20250826163316.GD5892@horms.kernel.org>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <20250826163316.GD5892@horms.kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DU2PR04CA0170.eurprd04.prod.outlook.com
 (2603:10a6:10:2b0::25) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|PH0PR11MB5927:EE_
X-MS-Office365-Filtering-Correlation-Id: 7133ed0d-d8b7-4ec6-76fe-08dde4db83cd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?YmpXYWVlOGl5dk4ySmkyRnNkNWZUa2dvSW5rUzVKa0RyNXBneHFFQld6T3c4?=
 =?utf-8?B?eWNiNW14dlYrTjhGNGJiWExBYzc0V3FqV1B1ZHRERjB5TldOY0E5eFEzUUxi?=
 =?utf-8?B?WE1EK1NmR2orL3hSVUcvUk05OGlBT3hEMFg1UGgrQW9JM0Z2dWlRUUNxbVdJ?=
 =?utf-8?B?VkVmQTlqSlkxdnl5YlFYQlRuaEZMN0szWHN6TS9GQllxa3hRdWFIa0FzZWlW?=
 =?utf-8?B?c2dqWThyL2lhNVkxRzZuVmNZb0pHLy9zSUlZOUlVQVBOZUxWdDNzanpqK29q?=
 =?utf-8?B?R2xxbzFpcUIyYi9DN0tmcjR6QXBjZmZzNUNZMWk3SkVtVEp1bHBsTk8rQlk2?=
 =?utf-8?B?RUh0Vjdpd0llMVp6cm85MEs1ZUZjVGZYc3hhRWxoeWJFby9Sa0NDM2tHc3Z3?=
 =?utf-8?B?NG1jYURWQnlwczlTSXd2TG1tNjhYRi9zZk1QMVFHcDExa2Qrc1Y1ZmpKRlJB?=
 =?utf-8?B?SEhOMGRYeVBGVVlMQTRCYit4L2F4U29JL0JzNmZFTVJRZUdKdXFaWms3M2Rr?=
 =?utf-8?B?eVFSYjA4czZlY0o1OSt3K0QvVFpacDZLNElEeFpnaGJUWXN2amlZZWRYcUZB?=
 =?utf-8?B?NDZYQ2R4eUd0ZGZaQmxMWmxuTEQ2OEhzVy8rYm1DTkdwUk8yUzB3cTFRcUtj?=
 =?utf-8?B?OVBLbG0yZkFJS3NVbXA1emhoQlUwRkgrc2RublI5YmxyWFR2MmlUZTgzb2Fq?=
 =?utf-8?B?cFU3WW9ua1VtZUlhT3VMelk4RmhUQTlvUWdXekRRSjBFQmFySUVBYlRyRTBQ?=
 =?utf-8?B?TUdLYzJxb0xudERMaFRQUkVNRjhIV29WempFVHRoUU1yaG9MM1Z0Nms4bWFn?=
 =?utf-8?B?dTZtbk5sY1pmOHhRN0c4NnRDRWQxRGo4emlJWHo3NVNhVVNjYTEzejh1aFdH?=
 =?utf-8?B?NDBNcDdLRXRQZHlYVlROYkpVVlFmNCt1cTk2cWs5WGdOb3RBK2RmV2paZHZQ?=
 =?utf-8?B?MlE4a3NoWFRDbDFUby9aY1ZqV2tXZ2NpQzRESGNHb1NMZW9Tb2svZWQ1UTYw?=
 =?utf-8?B?RTFjWmdHdzVQczZVMGhlZURwSzlQZmFVVDRWSElFd1FUZUNYNXgwNlpENHNS?=
 =?utf-8?B?WUZWV0FWRVZ5RDdSdmtxeWF1dldWMkRKYUtJbzUrekN5Z3RIR3E3akw3NHVK?=
 =?utf-8?B?RnpZZEN5eGtnaDhUMVVpY0hBWXd2S01hbCtkSTNjQTZRZlBNcUEzV2RWYU5M?=
 =?utf-8?B?TUZoVG1henBSMGtOL3dPdko0UFIzUVd1d0NlWUt6U3VmOHBhMmRXOXZ1cU5y?=
 =?utf-8?B?bWxXcUpobzAxQXBjTkJLOSs2d3dNcUptczh5NkRUd1FVQTRvVUFSbUNNZFBp?=
 =?utf-8?B?MEJlUjBpRUxZV1VRK1lDWnBWejlZRUV2ZXA2K2xJSVdHNndQVW04OWxQZjc0?=
 =?utf-8?B?eTdFb1FRUit1NWE1UE9lcTZFT0o0TlJvdHlvb3NkOGIvd0xXWkNOSzBuUlNQ?=
 =?utf-8?B?dS83a2Fic1B6eFhBQXAzTVNVUGFJYkp4eHk3YmkrNVhyQmtzcHJsWm5pVWJV?=
 =?utf-8?B?cGtnS2lDQXhPMWNjcFV6b3lKaGZMODJ2dkJRNUJzaTh1cllnNm9sZTZHQno1?=
 =?utf-8?B?TVFONnZTRUNwTXdJWlVCcXN1ZnZJQ1ZYdEVMaXJCVFRkVmk3TWxhWFVWMUg0?=
 =?utf-8?B?RTVtWCt6RlRmV1Q2VGZBT3dlN1UvZjBvcnFKYmlwWnJVc0J0SEdEUWFDMDNL?=
 =?utf-8?B?OVBCTVdRYVJJazlXSjRKTmVWR1ZKSDhCOHpYR3pwZlQ1ZGsvOTdxL0ZqVUFN?=
 =?utf-8?B?dldNM2RHekkwYnhvREQxU1VDbnVTREhBSi9VdFh6bmVWeC9obW5iL2p6Q0ZR?=
 =?utf-8?B?SW9EL0txc04xejV6SUhYc050U1F2cFh3emZ6UUtGSnVmRWI3WGd5SzVyaGkr?=
 =?utf-8?B?YWZlempWb3JFU1RNY3g2ZnIxdnMvV1l5dDF4S1F1TjlEQlZ6ZmkxQXR6S0ZK?=
 =?utf-8?Q?U5pUltX/oFM=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?T3NZR3h6cDVEVDlsU1l2R3NTVXlqeEdiUVpGSERVMkdnQXhtczhMUElHZm1r?=
 =?utf-8?B?bFYwOVVjU3lqVEV1Vk15TjRYL1cyc3lUckdTRkVHM2s4eStidWt5SVVoWnli?=
 =?utf-8?B?MXVZR0U2VHhBWWNBMXdsSDdVUkMya3dDWjFaR1ZVQU1JRE14ck9CNnJZZkw3?=
 =?utf-8?B?eUhTZThIdUtWdE0raXpzT2V5cG9GZ1hSaDR6VXJuMWI4Q1Zadmljd1dPWS8r?=
 =?utf-8?B?YzZ1eXBGUHF0RTY1K2RwMlZzaFNZaHMyQ0R1d1V4TzFjd3NySmNKMFNIWHRQ?=
 =?utf-8?B?VzduUys3MjFJa2R6c1JmQUhkU0ZIbUhNbENpUEhxRWlWc01jYVhmMW00aUJa?=
 =?utf-8?B?cTBPc1JqRUwxSVhFYytWMjljOE1VVy9LLzFNWnlOVGZTa3pOV3ZNQXdkbmZQ?=
 =?utf-8?B?NTBCMDU3SVA5QzNCbUdEdWhrNU5semh4SDRJL2tUN29jMUxSWndVSjJQK055?=
 =?utf-8?B?YW9QYVBSR3FtNGpIaHFhaTVpbjZISWhTZEpHbjhMcDdxeTdmdlg1US9pU09v?=
 =?utf-8?B?ZDAxUi9NbE1JaHJjejlRc0IxcERqcWc4UHNoTVI0SE0vdnJGSzJqME9RcFFz?=
 =?utf-8?B?SFNTL0dyZGNxOU1sWHZzY3A4Mk93dDhhN2tOeXdJQ2hpZ3VNQnhKdnBHaWJ2?=
 =?utf-8?B?cEgrYUJvSEYxbkxjRDlkQ2ZtSTdXT2IrazhQejRxbGlORkRTY082aVd0UFox?=
 =?utf-8?B?R2QrMm5EaXVHaFE5SmJaLytOQ212Y1ZnTzZBT1puUzQ4eCtUdFlGQVJmcGxW?=
 =?utf-8?B?RlZFR0hzMFJIdTdoelJkTW5TY1ZaTjFDZmFWK0dNRXhzUFVDMWszb1psYW9p?=
 =?utf-8?B?bFpNS2xXUXI5WjVxUTBNbkcvelM0QnpvVTNydHFIT1ExOXR0dlJmdE5LVnpC?=
 =?utf-8?B?R1U0b0tkWXZDbmNDODNJdWpoK2F0enU3RU9TaWxhV1M1QUhDek9xVWladVJZ?=
 =?utf-8?B?a2grdC9FbVRFVkdzS1NhQVBMUDVZTGkwUVY2SERmdFF3L3AwQTFXdlJhRE1U?=
 =?utf-8?B?RXFjY1JvMG1jdyt0YjNOaUIxUyttQ3l6MTlIRG1pZ05pUmIxV1cwT2tpTVF6?=
 =?utf-8?B?anI1OWF4MDl2MklMaE9meXpTMDRjNmgrZkc0anRHWVVyYjA2bmpFL3hIem16?=
 =?utf-8?B?Y1EzS1kydmlocnNyeWh0aVgza09BZVBkTlNKMWhDNDlSMHovcWhjY3VkOTgx?=
 =?utf-8?B?c0NuNi9Vc2dZMUNDUVp6MGJxZlk0dnZFNkRqTHJTR08xZHJMMXc0MTdtRmtm?=
 =?utf-8?B?ZWN0ZWdpdTJJcGlZZlk5QVBzNGJjZ2JjMTFaRFBaVVltWW8rTmxEcnlhTUJG?=
 =?utf-8?B?YTIzRzVmZkMyUURhQVF4RWVjdDI3ZHh0OWNzZUlsU2cyVFYydzg5MjI2K2Vn?=
 =?utf-8?B?cGFIYVlrckhrdDlJSHlBNzl6elI1TEduSDNWVERITlZ6SmM5NHNreDROdUpn?=
 =?utf-8?B?UnFoaDhUclk3REdrZzhnMzJxZ3pZVjhkSzQ0aEpDaENEM2I2V2Roa3ZnNlpo?=
 =?utf-8?B?b29aUUhiOEpFL0xBZUo2UUVWLzFlaUp0NFJiRU55azZxQnF0SGduRFJHTnVm?=
 =?utf-8?B?WDBSdUdpQUl0T1FZY09sQjVOQ0dycTA0SDNIVEgwaG1RZjFTM01raksvaHpt?=
 =?utf-8?B?RitrSm5iZE9hWFBOSURHZzZUc1BFSCtnMWd5bTJ1bzYxem1XMTJ1VHJCSDIz?=
 =?utf-8?B?ZlRlQ0NPR2xGVTkwSVN1MUVzV0ZaRDRyNUxmOC8vMmNZK1hwTTdLdmUzMDlM?=
 =?utf-8?B?bTNMcXlEVTRERGJnWElEcDR2RWpWeGk4aTRoYjc0cTN3aHZBZ3NmaER2cjgz?=
 =?utf-8?B?WjRzeENZaW9rVXJUeXprdDh0REN4ZjVpNzA3eFczUkE1OTNwUFBVak1MOWFS?=
 =?utf-8?B?Q0pQVkdmVmVhVWJpMEI0STE1UFI4dkc2SnR0bGFuZWVGbVJPZ0g2aU1WaWhC?=
 =?utf-8?B?R1dZTlBZY2FUYkdsUCtmMXZpMGY5Tmw1dFlUQUovTXl5WEtvUFU2N3Z2b1ly?=
 =?utf-8?B?SzhwQ0g4Ly8wVzBnWnBtZkhvK0QzQWlJS0FXbllzTFFRT0YyOU5uZFMrMjZE?=
 =?utf-8?B?RzZyNXpkL3N0cUFUMlBkdmZjM3c4cEo1c0RaMEU5SVNVbGxrekR6bFQ0aXdr?=
 =?utf-8?B?VVZRbEwvWTlpVWkwV0p6ejNqN1dhZkxGNTVxckhFUzFLQTJvMVVpMlZHYmg0?=
 =?utf-8?Q?gEBOaJP71Fwn7makyxBWvpY=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7133ed0d-d8b7-4ec6-76fe-08dde4db83cd
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Aug 2025 20:02:41.8816 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XG1qQir9jBFH3YCE8aSoVGsFRO5B6bDDiOkr1dRjkrbOAiE8U1MGbyfW3IF/1AoXZAyIdFTnIyBwxbBX1zuwwbmfrH+mkwIobjK9LCWPKH0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5927
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756238566; x=1787774566;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=8Ye2zZZ7M2xC7GuOtg/WG62ExGA2HeuK7/u47Dye1qk=;
 b=nxHw2MacmzGCeV12yZubYtqV3ROBrPiRDB7lQVrRjzvT/dycDae5s0iI
 7xtKj0ujyL+t2207uuQXOxs1gbp0+A20V6U94NOuRnEYD2IAAUdNOCcjf
 5VosQUDdl0qsbWyoNwvIL+72DHr0/Q4o2Fb9MDaJaQ3dPIlIQ+fghle1D
 TkWKV0gwhINDpZK4NO06dYej7qSEFqRKmwLjN1ZMQdAgIBg75raJrkFNY
 BCMI9KlkI+B2WlzyXLkGXVkxSumP6z3riR6i+A2hNU56jB4VpUUBnqk4M
 zBCv7WtoflWYvEOQXtgEYpyX2ZaxkWzfy6KJmgOsEIcIC3UYCfakghcH3
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=nxHw2Mac
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 5/8] i40e: fix validation of
 VF state in get resources
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

On 8/26/25 18:33, Simon Horman wrote:
> On Wed, Aug 13, 2025 at 12:45:15PM +0200, Przemek Kitszel wrote:
>> From: Lukasz Czapnik <lukasz.czapnik@intel.com>
>>
>> VF state I40E_VF_STATE_ACTIVE is not the only state in which
>> VF is actually active so it should not be used to determine
>> if a VF is allowed to obtain resources.
>>
>> Use I40E_VF_STATE_RESOURCES_LOADED that is set only in
>> i40e_vc_get_vf_resources_msg() and cleared during reset.
>>
>> Fixes: 61125b8be85d ("i40e: Fix failed opcode appearing if handling messages from VF")

my initial conclusion was that the above commit changed behavior so it 
opened up a window for the second get-resources message...

> 
> I suspect this could be
> 
> Fixes: 5c3c48ac6bf5 ("i40e: implement virtual device interface")

... while the original impl (your proposal to blame here), while buggy,
would error out more often

> 
> But I guess that either way is fine.

that is also true, so I didn't spent too much time on this
other reasoning is "Fixes: tag should be used to point to a commit that
needs patching", and picking either one here would result in the very
same outcome (the later patch would be applied as a dependency of the
current (5/8) fix)

> 
>> Cc: stable@vger.kernel.org
>> Signed-off-by: Lukasz Czapnik <lukasz.czapnik@intel.com>
>> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
>> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> 
> Reviewed-by: Simon Horman <horms@kernel.org>

thank you again for reviewing this
