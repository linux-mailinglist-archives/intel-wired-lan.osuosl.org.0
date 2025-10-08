Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 498D1BC5466
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Oct 2025 15:50:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F3CB34001F;
	Wed,  8 Oct 2025 13:50:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zDw0sHBuSUbM; Wed,  8 Oct 2025 13:50:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6B7ED402FA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1759931433;
	bh=fT+7uNjlBh6EjruW1NjPvqF0zjtFkA93Qqn4QIQRV7w=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=xAV6ozulAD1gRIVTqW3YjE85PqDucnUYGlufCjImdGgWrgXDpJDUfw4QGNoXlS4XO
	 WiJWcmcYLK/trAdPbZRg0xZLJ228bj6F4B6za/fOyPbuAjfnrUKL/1YrhjsgrFo3xb
	 KK4LPn06geS7eOmqyLGz1f2N9WQX8IUpyXRAzVuVt2QnnUbWI15m4D6xeNWsY8y4zb
	 Cjfk/bbIGZhMbs1BY/R6A4P7eIG1r7/NfJFHLMA16dxEwa4VVeKZ6jv5gdR+UlAMFp
	 YBEbx2yTvZ6BQHoVCEic/5P0JjTzIOoz15RxFE3C7sJF92+v1vmUZfEElndlS3iu5V
	 rH22WfdVr7eeQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6B7ED402FA;
	Wed,  8 Oct 2025 13:50:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id D673D9DA
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Oct 2025 13:50:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C024C401C8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Oct 2025 13:50:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iAFnDDbvASRY for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Oct 2025 13:50:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org AD9844018F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AD9844018F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AD9844018F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Oct 2025 13:50:30 +0000 (UTC)
X-CSE-ConnectionGUID: tREv9PCdSAurV0GLfARY9w==
X-CSE-MsgGUID: 8pZ1Z1PcSl63kAB5XcLxJg==
X-IronPort-AV: E=McAfee;i="6800,10657,11576"; a="72738577"
X-IronPort-AV: E=Sophos;i="6.19,213,1754982000"; d="scan'208";a="72738577"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2025 06:50:30 -0700
X-CSE-ConnectionGUID: TiJYrpeTT0inxXliN1RmwA==
X-CSE-MsgGUID: CCzgsapiRKaq35mwviPJ+w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,213,1754982000"; d="scan'208";a="180274014"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2025 06:50:29 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 8 Oct 2025 06:50:28 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 8 Oct 2025 06:50:28 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.10) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 8 Oct 2025 06:50:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rp4uoTCWIZlyVonmiJvPx9AZS7doZIkB+Vg2kezMlcz8biHHxlFQn2TkXEeGorRafY3Non45GTn7SUh44cJjrZagG3RogfYGQWt1BPJbi4UxHgtYs3Q7fsahNtyU8P1Icg2xgvHJfEJj4jxiKO2oQRqJS88heaERmS3JuWESHyT9ls5QcZLkeez1SEj+1v26Q4moixgMvWlEwIwcSN09w5pqsDNjDxVkciSmMmoiclqHEyOAfrqykHt8BAqzfkEz5BPuBRx/UzjZa7oETwdAtuTa79+Ojy/HXF6WLcJyIRKjwjj1I4qO2M741ct8LbSElpn3A5mB3b18kwmIzKZyBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fT+7uNjlBh6EjruW1NjPvqF0zjtFkA93Qqn4QIQRV7w=;
 b=kCQALYhVFrFtosv7VDVGKcpKpc1bTxMztSYlABj0NXZnk7Teyya2nrIupzMrQydQ1VDgSsHf/bz3xKDA11ESaQnzu0Sm0Sej9HVFcz9wckfV79ZaJw1k2Q507coVF/ld9heTpfrXuNVMi1vz3NC8qNG7OTe/N9dhwwYvsiWIO4xDcoqaD/PvP5SWjheq8pulz5j9FDKb82d4RO9kkyzK/3Gmae5beXjGrTfPB6KoxdcU/LpdKw1GjFUgVEeMG7c2Wri93Ds3ds8hgNQbEddbF3D8VJu7PbyXsjbZhYx5AV+t1GtwlL60HUDat+pVDZu+72xv7dj8D31iXe6L07rASw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by MN0PR11MB6010.namprd11.prod.outlook.com (2603:10b6:208:371::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9182.20; Wed, 8 Oct
 2025 13:50:21 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%4]) with mapi id 15.20.9182.017; Wed, 8 Oct 2025
 13:50:20 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Brandeburg, Jesse"
 <jbrandeburg@cloudflare.com>, Jakub Kicinski <kuba@kernel.org>, "Hariprasad
 Kelam" <hkelam@marvell.com>, Simon Horman <horms@kernel.org>, Marcin Szycik
 <marcin.szycik@linux.intel.com>, Rahul Rameshbabu <rrameshbabu@nvidia.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>, "corbet@lwn.net"
 <corbet@lwn.net>, "Keller, Jacob E" <jacob.e.keller@intel.com>
CC: "Brandeburg, Jesse" <jbrandeburg@cloudflare.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v4 3/5] ice: add tracking of
 good transmit timestamps
Thread-Index: AQHcJz6DF8N0lEwmJUykpsEHugduo7S4YtOw
Date: Wed, 8 Oct 2025 13:50:20 +0000
Message-ID: <IA1PR11MB62411851BF06057F9710ACF78BE1A@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20250916-resend-jbrandeb-ice-standard-stats-v4-0-ec198614c738@intel.com>
 <20250916-resend-jbrandeb-ice-standard-stats-v4-3-ec198614c738@intel.com>
In-Reply-To: <20250916-resend-jbrandeb-ice-standard-stats-v4-3-ec198614c738@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|MN0PR11MB6010:EE_
x-ms-office365-filtering-correlation-id: ffbc57ed-1310-4310-7c4a-08de06719f06
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7416014|921020|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?RmpyYUJMdTYyVDNtZXdHdWhEeTlhT1d4c1hoZzNWUzNOT2xYUXpVRnZjamUy?=
 =?utf-8?B?TlFHNk02QWl0eHhKaHhWMkY3bC9jMGhRSXZMUGwrMDhoc054WjhDbXZNN2hJ?=
 =?utf-8?B?dm1IZU90TENuT0p6SkFoU3A3K3FmMDFnbnBla3dQOEJCdG9Jb0JHUHNLR1pt?=
 =?utf-8?B?NGRodHJZNnRMa0NMOFZzM2hxVmJGTTQ4NFZjTVJaeDlQVXhLQ0Y5d3h2SjhB?=
 =?utf-8?B?TVJhL2UxUDlranBTTmNBMlJBSDVUVkZyYTZuTjhBc3NFRWNiRzE5NVZqWThZ?=
 =?utf-8?B?N2VNQURuSUZIV3Z0SStPbTA2N1hoTmh5cWFjR2twMjRJbHVVUVlXeDBORDRZ?=
 =?utf-8?B?RWlNSERCWlZGUlRBZmR4VUZ6REc4RTdaZ1lYTTFWalA2KzdNRUpYOGNwa1Ju?=
 =?utf-8?B?cXJ4a0xwTE95dVJDMG9IWVNtY3NQZlpBZGg0dFJaTUNYQktpZnl5UzJuaGM0?=
 =?utf-8?B?REJzQzJWaVQycTJvK1hWNHVTeFY2aFlvemwyNTZuTklUNi9IVEFxUUFDakhx?=
 =?utf-8?B?NVFtcjVGU1NBRFlZU2VJSDlEMmFvZnovbkxkTjEyUklITTlKWnFEdkR5NkJy?=
 =?utf-8?B?WFIwVXBlOFl2TnJOSG56b2tWdGNDSUUvUDdxRnljVE4rV1g2a2pVajNacDQ1?=
 =?utf-8?B?eng2Qk5uVE5vcFF4SDM5M0FjdUdzQy9jVVljNTVEdW94MHNhVEc5bHFTa1hD?=
 =?utf-8?B?T0pWdENmd3dibjR3UHMvQ0lxUDBLNFprN3lObWdreVU0cHg1b1RrVldFMnNz?=
 =?utf-8?B?MEV1cFhHL2xaak5VTmNVNUtXZXJ0ZTk4WWVvUmxicTAxTDhFRjY5MnQvbnBC?=
 =?utf-8?B?MjB3Q3ZnMHZYZlYyK1R6YXhhd3NtNlpVSXhld2dLcG5TSlo1VHRBSTBjUG5p?=
 =?utf-8?B?dGp6V0hodGJvaklJU05pcDA0RDN4S1IycDJTNjRnUVZyMmV0RGxuSmNKczll?=
 =?utf-8?B?dVg4cFc0RmtOWS9LaDZOVTVpOWM2Y2NnektNRUpNZjdvSSsxMFhicjArYTJy?=
 =?utf-8?B?eTA1bUpVajk4M1k4dVZTd3ljLzNITSsxNUpBYllmQkFlczJWN2FVSTZxNTVH?=
 =?utf-8?B?cWkxT3R3Q3ZkdEpnUlk5NndaSlVPVk5CRWdkVi9tdzJtcEZwVUN6U01yc1BE?=
 =?utf-8?B?UkNSMzBBaTgxa1JxSDJsZEEwYzdKWnIzemxnbm93bEFBZFl4TmVaRDNXM1NW?=
 =?utf-8?B?MkExTktNTnV0d21QQ0JaOERrMHZmTEVDV01BZGZkUVFRcFZDSWF6NXZOWVBM?=
 =?utf-8?B?TmRmblpQN2ZKWklQNFhUTnR4YytnNnFkYkZhSE9Ic2s4N3A4SEFpL2hIeFZH?=
 =?utf-8?B?MlFjRERpbjVodlZjM3hCSnFicGh2bWNMWEV4MiszVWMzQU1xTmFTckwzTFJi?=
 =?utf-8?B?K2lVdlo4eTBUTFI3eGpqYkNaVGxkeEVqQUFyYTg4dU5MWk5WS1RxUkthZjls?=
 =?utf-8?B?enBoY1JmRFJSVExITm1iSjMxMkRUbjlKd3laQkxJQ01nb3dSY2dhU2lTY3I2?=
 =?utf-8?B?cXBlWlpkUHJCaUtEenM1NU13UDY0KzlKZnRocE52cnJZRmpEdEU3ZEdzZ25z?=
 =?utf-8?B?T2tiK0QzRE1YeGJVeEdxMlpwS29SQTUxR01hOVRRcGxUL0xvR3haRVJ6R3RN?=
 =?utf-8?B?OVUyNVpxYnJ3YVJNa1ZRVDIxeGhxWDB1OXJGREVaOS9kR3FFR3ZndmlaazJX?=
 =?utf-8?B?ZEVMNnZVK0VaemxKMXNNdGZvSU5ONHRLTUJvU2VRQ0UxdXlNZWhScmNYd3Zt?=
 =?utf-8?B?d1N2RmRndGwvbXlPclJjZnBSdmJRWGNsUTdvNDV1S3QzRmhOYW1CTkd0TXJh?=
 =?utf-8?B?YVpHNmxXNE1seWxiQVdiRkt5Z21hY1BSejdtcHhaUUdnVFNpbEFGeWZCYzF6?=
 =?utf-8?B?eHUxSkNDMFlFN2oyZlQ4cTR6VkRITzY4QUI2MzNOTzE0ejdaRHFNeU9zVC9z?=
 =?utf-8?B?N2I5NWYwUDA0Q2ZYQkRZSks3QTJVdkxyRzhaSTA3VmpVd1lvY3VKcHYyd2Rl?=
 =?utf-8?B?R2tNd0JySkV3bWk1cUIxN1JWV1JrOUVITzV1ZzFaaW50TjVXRERFYVQrOXZu?=
 =?utf-8?B?NFpkelYyZGJaeXU2NHlTNjlMWnl0TTAxcU5HUT09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7416014)(921020)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?d0c4bGNMbmxrTTFrSFd3aGZEcUs3cDF5aEl4QlZKa29rRC9FS2ZpR3gwMVBI?=
 =?utf-8?B?KzBXRU9tVVkvc3F3dDFlWHRhM3BpVUUyUlJCUUtrNE5zQ2pTaHFDLzJ2NzdM?=
 =?utf-8?B?SWRaVW13bkVNdmd1L3dKQk1qQmloanlkMmxhM1N1eDBJOGZkRmFocHdEaWtZ?=
 =?utf-8?B?TllWOVBiVWZlV2N1OGI4MHBzVWR2OVpiNDJsUWlQdC9pOVFCVzl1Wmk4L2pK?=
 =?utf-8?B?T0dQY1cxckZtWVJFZ0hWSkg4ODNJU1cxVWFTQnI3cUw1d2VCb3dqOHFsclVD?=
 =?utf-8?B?M3dhUURRL0dXVHROUHk1WGFVbUptbWJhWWM5TG9rcC9pcFlCaTBNYjdUdGlG?=
 =?utf-8?B?MmxNRXd6Mm5WNll5WGE0MXdLSmRBTXdsYzFDaXVPUUJyUzREcFFzZS9tL1hZ?=
 =?utf-8?B?aFlpR3YrZ1QvSkIvRlAyNWRvUGRXNDBEMmVFR20rWEl1bnR1ck9NN1JZWHdF?=
 =?utf-8?B?dVd5aldiSVlzc2duR2JYMkVhME1VanRSRFFSMGJRY0lIeVpFamJoUitEOStP?=
 =?utf-8?B?d2M1U3pjSmZTMlowWnVvYU1BcGJPMnJXU29QWHBBU0tWbjgrbE4zRWx2NWpR?=
 =?utf-8?B?dVA4OWtOUjZuaW02YW9QOGV0eHNYL1RpbjdPeTJmRjZuaEtDaXdtV0QxRUFs?=
 =?utf-8?B?cDJkajRxUGZFYlZXV3RJOUNQVWxIc2hPaVB4dkJtU254YjRIeXdYdjZSamI4?=
 =?utf-8?B?MTR2bkozYnBJZEh3K3IrNlJsZUNOQ1B4SUtzZ2NCRGMzQWhHdHQ5ZjV4ZktU?=
 =?utf-8?B?N3dRdUNjeHRDUnFkdVJHYTNXMSs5YXUwdDRwZGF3TUk3Um85cWtJMys4NkJo?=
 =?utf-8?B?cVlUczkrelhLbURvZ1lFY0E3ZnlZSTdWSFFiUVhrbnMxUlArckVvWi9Ja1FN?=
 =?utf-8?B?LzlXWnlqcjhQTHZCNG1URmtlVzRQT1ZIREJxY1NkUDNXNC9iUWtMaXZPWS9S?=
 =?utf-8?B?d2k3WXEwK1J6K1ljaitJUWxteURxZGpScVQwQTZVaXNsZVBkRFlHNHh1Q25N?=
 =?utf-8?B?WXUvQW0raWxaTWNyaUtDT1pseXRnbmY5eWxHdGRlZHpPQ0JuTndMVkg5TFF4?=
 =?utf-8?B?U3JSbS81TWR6clhNWnYvWGJOaDliV1JNUFlsMWMzMDNTNko4bnd0UDRPOG1H?=
 =?utf-8?B?c2hEa2hac3lqaGxsb0hkOUM5LzVGTWVNNUp3Mm55dS9tN0I3bmVlQkQ3QlJO?=
 =?utf-8?B?b1FobXJLQWloaUZRN3pJSURMTlROODl3MDNqaHIyK0tnQ1ZhbmNqV2RkeWRY?=
 =?utf-8?B?NzlpUjlXcGZRUzUrYXkxMGtrSTJKQ1dJMHp2U3Y4bmVLZ0wvKzBDKzZHUFE3?=
 =?utf-8?B?TFgxS3dZaVQxMXRGSDArcXBJbVhncEtkVHAvTzQ2eTg2aDJwZlphNE9vOEF6?=
 =?utf-8?B?TkxycDVudlRxeHNRRVluSVoxb21ETnlycm93RzdxVW02VEJmcXNRR2NFU0RU?=
 =?utf-8?B?V2kyOXpvY1BvRlVnWExBVDJ6dTRoQ1NMZ0tVRkhjcExFQ3BSOFpUVnhVMGQx?=
 =?utf-8?B?b2FpQTA0clFicXlSQWVNK0RyZnFLV1hjWUg2YzQ5dGYxeitCMFdia2lySHB6?=
 =?utf-8?B?SmVQM1lBZlZ4RmdhaXBPVmlLMUhldW9FU2hDU2tXYVhBVjRBdVg4VWRnYURF?=
 =?utf-8?B?OUxpTDRiWitHSFF1TFZRSThYcTArUThxYU5ZUFFLN01OazRxOHBGak5HMWMv?=
 =?utf-8?B?TlhKSExDdGFpM1Qyd0V6MlJuSE9aeWlab21tVEwxMWFrRFBPQkxnZFRkTjBN?=
 =?utf-8?B?d1VuaGU3YmxXNUNGZU93ZGxrdVBVWFRQTHg1UU5ZZmp0TSt3MkFGdmRUeUV1?=
 =?utf-8?B?Q3FOWEpNVXVkTlJSMjBvUHZLdVJrRExwc2Y1NzNTdjRFbTkxOVMxWHV4elFl?=
 =?utf-8?B?NktMejAzWW9Xb29HeFRzY0FEWUpZVzY0OUUyOHJhdkhQNGZ1ODhhaHMwMVIx?=
 =?utf-8?B?T3NaNkpGc1ptWTNiNDNvTFlGSi9Eb3FWNmVxQ2gwQXo4WjFtK0k5V1MvT2JU?=
 =?utf-8?B?NU5kcTVWMmZ2V25DSjRtd0hPempQUXhBdDRVVWRRTDNQdDV0WjhaU1laVU85?=
 =?utf-8?B?MzhXWUk5cnFEWm9PRlNBdCs4eDdOSVBXcWlta3hVamU1TUs5YzFoYUN4ZmZW?=
 =?utf-8?Q?SDL7H/3F/G4CpmajE2Fu/+M9z?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ffbc57ed-1310-4310-7c4a-08de06719f06
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Oct 2025 13:50:20.2007 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: I2+ifyfhT+szh+83FZH3xpNEB3XDltgUymAF9ygb/6wHbNOrXY7LF1zE9hJV04/g7DMiMUVlzP6A+CSDblSerw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6010
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759931431; x=1791467431;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=fT+7uNjlBh6EjruW1NjPvqF0zjtFkA93Qqn4QIQRV7w=;
 b=a03QCQdK2uMZJNPupK4TQYREwYheovDpiTvfdmHiDjKT0Upo5iGyhfQJ
 NFNUfV92uT2UBY3k3FQoxmB5TigGITMfRwsyex085hphbSLS0H8ahspJV
 kh4858SpVcSQ1bWxE255cJUpom0qbctFdoK6KGHZ4h5IPkvgp7MfXfDq7
 YGbEFBaxnHB5rI6ZPFI8H/38PYfd5FRC4rj+Jc/yXdzlWR+cQD7v0MmTQ
 MdwybDgKjLdhyuTVN1ZMN7pzLtXDJCPdhKHMcBF7A0vGWXih9cg9gMhg7
 uHmHSkG4cLOIAYORs3OIZcip9hjz3FeP5wfi/SbEWOaEBZWgB9Qd55lm9
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=a03QCQdK
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 3/5] ice: add tracking of
 good transmit timestamps
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
dGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZiBKYWNvYiBLZWxs
ZXINCj4gU2VudDogMTcgU2VwdGVtYmVyIDIwMjUgMDA6NDUNCj4gVG86IEJyYW5kZWJ1cmcsIEpl
c3NlIDxqYnJhbmRlYnVyZ0BjbG91ZGZsYXJlLmNvbT47IEpha3ViIEtpY2luc2tpIDxrdWJhQGtl
cm5lbC5vcmc+OyBIYXJpcHJhc2FkIEtlbGFtIDxoa2VsYW1AbWFydmVsbC5jb20+OyBTaW1vbiBI
b3JtYW4gPGhvcm1zQGtlcm5lbC5vcmc+OyBNYXJjaW4gU3p5Y2lrIDxtYXJjaW4uc3p5Y2lrQGxp
bnV4LmludGVsLmNvbT47IFJhaHVsIFJhbWVzaGJhYnUgPHJyYW1lc2hiYWJ1QG52aWRpYS5jb20+
OyBuZXRkZXZAdmdlci5rZXJuZWwub3JnOyBpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9y
ZzsgbGludXgtZG9jQHZnZXIua2VybmVsLm9yZzsgY29yYmV0QGx3bi5uZXQ7IEtlbGxlciwgSmFj
b2IgRSA8amFjb2IuZS5rZWxsZXJAaW50ZWwuY29tPg0KPiBDYzogQnJhbmRlYnVyZywgSmVzc2Ug
PGpicmFuZGVidXJnQGNsb3VkZmxhcmUuY29tPg0KPiBTdWJqZWN0OiBbSW50ZWwtd2lyZWQtbGFu
XSBbUEFUQ0ggaXdsLW5leHQgdjQgMy81XSBpY2U6IGFkZCB0cmFja2luZyBvZiBnb29kIHRyYW5z
bWl0IHRpbWVzdGFtcHMNCj4NCj4gRnJvbTogSmVzc2UgQnJhbmRlYnVyZyA8amVzc2UuYnJhbmRl
YnVyZ0BpbnRlbC5jb20+DQo+DQo+IEFzIGEgcHJlLXJlcXVpc2l0ZSB0byBpbXBsZW1lbnRpbmcg
dGltZXN0YW1wIHN0YXRpc3RpY3MsIHN0YXJ0IHRyYWNraW5nIHN1Y2Nlc3NmdWwgUFRQIHRpbWVz
dGFtcHMuIFRoZXJlIGFscmVhZHkgZXhpc3RlZCBhIHRyYWNlIGV2ZW50LCBidXQgYWRkIGEgY291
bnRlciBhcyB3ZWxsIHNvIGl0IGNhbiBiZSBkaXNwbGF5ZWQgYnkgdGhlIG5leHQgcGF0Y2guDQo+
DQo+IEdvb2QgY291bnQgaXMgYSB1NjQgYXMgaXQgaXMgbXVjaCBtb3JlIGxpa2VseSB0byBiZSBp
bmNyZW1lbnRlZC4gVGhlIGV4aXN0aW5nIGVycm9yIHN0YXRzIGFyZSBhbGwgdTMyIGFzIGJlZm9y
ZSwgYW5kIGFyZSBsZXNzIGxpa2VseSBzbyB3aWxsIHdyYXAgbGVzcy4NCj4NCj4gUmV2aWV3ZWQt
Ynk6IEphY29iIEtlbGxlciA8amFjb2IuZS5rZWxsZXJAaW50ZWwuY29tPg0KPiBSZXZpZXdlZC1i
eTogSmFrdWIgS2ljaW5za2kgPGt1YmFAa2VybmVsLm9yZz4NCj4gUmV2aWV3ZWQtYnk6IFNpbW9u
IEhvcm1hbiA8aG9ybXNAa2VybmVsLm9yZz4NCj4gU2lnbmVkLW9mZi1ieTogSmVzc2UgQnJhbmRl
YnVyZyA8amVzc2UuYnJhbmRlYnVyZ0BpbnRlbC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IEphY29i
IEtlbGxlciA8amFjb2IuZS5rZWxsZXJAaW50ZWwuY29tPg0KPiAtLS0NCj4gZHJpdmVycy9uZXQv
ZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9wdHAuaCB8IDIgKysgIGRyaXZlcnMvbmV0L2V0aGVybmV0
L2ludGVsL2ljZS9pY2VfcHRwLmMgfCA5ICsrKysrKysrKw0KPiAyIGZpbGVzIGNoYW5nZWQsIDEx
IGluc2VydGlvbnMoKykNCj4NCg0KVGVzdGVkLWJ5OiBSaW5pdGhhIFMgPHN4LnJpbml0aGFAaW50
ZWwuY29tPiAoQSBDb250aW5nZW50IHdvcmtlciBhdCBJbnRlbCkNCg==
