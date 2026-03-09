Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GFSGAw+mrmkFHQIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 09 Mar 2026 11:50:55 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 684732375F2
	for <lists+intel-wired-lan@lfdr.de>; Mon, 09 Mar 2026 11:50:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9909240B90;
	Mon,  9 Mar 2026 10:50:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UA9TtnYaj8M6; Mon,  9 Mar 2026 10:50:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D1DBA40D32
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773053450;
	bh=RD1B8dPfHzzYro0yCaVG0PRsghV3fV4M6SJjU/ceR8M=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=4u8JAfAfqsBeax2n/6pgefQCXH9abSi7C6uyHfJEFrGK7TpJw2iYyEnOWQ8bS/szc
	 zdbBtV4iELDr3tr4r7ylDZYfWHqw+RZErDUEN+hGrN3TF3dc4uCPPqseG9FD8irL9A
	 IToGtns4KODjPl+NPHP/SjFKmhc2S/kZzTBM6ZLMsCTumWrcqCVIaMvup8hrHOPTEN
	 0APmIaSM7DjljqR3i1EKt6bNPWl0n95iNsdAOrbUEj/UzKj8iCCdNc3AE8NKou0np3
	 wA7QHv9YAQ+re0Fnx58jzqKaRv1Qz4TP5vmaKFPVO9WuBXEtf5c6GYB7TeRHsR+GLr
	 ezTG3a0c8Urgw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id D1DBA40D32;
	Mon,  9 Mar 2026 10:50:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 712BB158
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Mar 2026 10:50:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 635ED60729
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Mar 2026 10:50:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IT9X6mLQNok4 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  9 Mar 2026 10:50:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=avigailx.dahan@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 31BA86066C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 31BA86066C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 31BA86066C
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Mar 2026 10:50:44 +0000 (UTC)
X-CSE-ConnectionGUID: yom0uIimR1arhHZGYPKZYg==
X-CSE-MsgGUID: 4P0yOGB+QDicDu/DbXZnXA==
X-IronPort-AV: E=McAfee;i="6800,10657,11723"; a="84707849"
X-IronPort-AV: E=Sophos;i="6.23,109,1770624000"; d="scan'208";a="84707849"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2026 03:50:44 -0700
X-CSE-ConnectionGUID: tF6xPqnoS+S+puP/teQ5fA==
X-CSE-MsgGUID: LduzSleDRqWqZnwoVFR2Yg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,109,1770624000"; d="scan'208";a="250180087"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2026 03:50:43 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 9 Mar 2026 03:50:42 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 9 Mar 2026 03:50:42 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.20) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 9 Mar 2026 03:50:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=a+2PDhvji985eMKariHsGi8ELK2BVvKGIubxGcU+dT13j3KgEE+qe7b8MVgI0LOC4JRQ4YFBo50lxO4evFTIHew03XVXB3oslWLFCc6xS4XJP7AhbrBzlDLRqidLeP3rXeO3NAmUEXTFQNLs1YjUk4nMZ/z7JNAmDKPTYOCi+4H3qRWpXzh+hVNLcpi/5R7cUKbp0HdbzVZkA15YPGfpVpuwPQo/F7+3zoexOh69lqHQ9QKnWPOeaylgsoDnRG918sYl/sZ2FWRUrh21t00YUF+qpuBlPUuHmxGkv9L4t2pkDmN4iAXvFTXh8tl9aYrojMlUO4rcenNV+/XKhs1lYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RD1B8dPfHzzYro0yCaVG0PRsghV3fV4M6SJjU/ceR8M=;
 b=v1F7VCa6JaPOzmhiXisuSkyxgshp4+me58YwAXmLQkBRcmIIVcd+mrgC+u2A9LTogOIyhIlwNabzFXr4cZgYOzHFA0UCP32RUwE4gdF0MAgKS2ruDnmhONFQOQnEHJcFnTwa9tBpzxQsTccBIOFGI9vrpAWlcMqlC6qOikpWSNQdtulindyTfqgGOS0Xr85REpW/vtrK1hnlkWXQ6Rr6EuyI7yXCcuSJ+PgN1pkcDirnVyFY2xf/hGp4KKjUagIPQ80qsxA0EsN4pxKTSAr8zZlcpaeHDetnapvMrjKlSu1etl5liTedLx48f/aTv+XuAYRamZetJ+as9nSKiqnJzQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH8PR11MB8013.namprd11.prod.outlook.com (2603:10b6:510:239::8)
 by DS0PR11MB6374.namprd11.prod.outlook.com (2603:10b6:8:ca::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9700.11; Mon, 9 Mar 2026 10:50:32 +0000
Received: from PH8PR11MB8013.namprd11.prod.outlook.com
 ([fe80::26a5:58f7:7e5d:5572]) by PH8PR11MB8013.namprd11.prod.outlook.com
 ([fe80::26a5:58f7:7e5d:5572%6]) with mapi id 15.20.9700.009; Mon, 9 Mar 2026
 10:50:32 +0000
Message-ID: <951ee642-99a9-47bd-8c6a-a3b04dcf821b@intel.com>
Date: Mon, 9 Mar 2026 12:50:20 +0200
User-Agent: Mozilla Thunderbird
To: Mika Westerberg <mika.westerberg@linux.intel.com>,
 <linux-pci@vger.kernel.org>
CC: <intel-wired-lan@lists.osuosl.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Lukas Wunner <lukas@wunner.de>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "David S . Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, "Saeed
 Mahameed" <saeedm@nvidia.com>, Leon Romanovsky <leon@kernel.org>, Tariq
 Toukan <tariqt@nvidia.com>, Mark Bloch <mbloch@nvidia.com>, Richard Cochran
 <richardcochran@gmail.com>, Andy Shevchenko <andriy.shevchenko@intel.com>,
 Vitaly Lifshits <vitaly.lifshits@intel.com>, =?UTF-8?Q?Ilpo_J=C3=A4rvinen?=
 <ilpo.jarvinen@linux.intel.com>, Vinicius Costa Gomes
 <vinicius.gomes@intel.com>, Dima Ruinskiy <dima.ruinskiy@intel.com>
References: <20260224111044.3487873-1-mika.westerberg@linux.intel.com>
 <20260224111044.3487873-5-mika.westerberg@linux.intel.com>
Content-Language: en-US
From: "Dahan, AvigailX" <avigailx.dahan@intel.com>
In-Reply-To: <20260224111044.3487873-5-mika.westerberg@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL2P290CA0012.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:2::16) To PH8PR11MB8013.namprd11.prod.outlook.com
 (2603:10b6:510:239::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8013:EE_|DS0PR11MB6374:EE_
X-MS-Office365-Filtering-Correlation-Id: 15265543-8150-4f8d-139a-08de7dc9afd3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|7416014|376014|7053199007; 
X-Microsoft-Antispam-Message-Info: o4CQAncqVCw/09I8KMX3O4+0+kr91oYY0TJJ/q/5e7xaivkxBRIaBO63X46TIETHobc95xWh5lXrYj5bVOJgE187Rsnk2nwWCWo4oqZY0Xowh+bUGywboec+yU4eiQjYD81n3l02tHXtNttuWMsoVolso68LzDq4MrRZIbPCvlylLp1SS3ultuzu0TPp4iIQn/O3jfNQjK0KjudKNgMwH4XVGfx0jik6JU7zAeStz6YjNO1CUThNNVxfY35b5nq6AmolkdgwRdLpqrU8znPgWFfYxxMpN7tUup5NaD466GO2qA6tUb76sp7iVDwGp1uaMDCWd0QRLIjOq12chSu7mAwA63nDmz9+u9B8AT0cVHrtp3ndJ/bl/b8nX8d2uyN2jW94TiNs6K6AmQhav9Wl5iA8s6IpzPxXHmj57o5oKZM+cpgN/9HyAMdj4yu12K1vMIfC79T3Nynpckktd8rD6oynhc0yL54u250iieDTOuJgRoGQdt1wUYBopWjHuBKxO3F734xSnT/MNfW1Y1JLB7uh8JXxWJJzDMsuRJlReqiNdtyddQUnhq7RYLu1DnIxOuyUp/ZLoz4yMqzBeoW6WApii3s2g+wGOT99XC6rmqE3eLgqBPys7ShI/4KhqrSSo1a7Mrjp0i7KechcWBI04M6wiHOM4YoXyFi6TVQuM0Fa8oD7/roTZw6IbpgHeXr59mDhp/SWrwN75wjZrVTucmSTawHRwud7PKiqj8CG0cE=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(7416014)(376014)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?V2JHaWttMzIrTnlXYlJOSXBIRUtnWFRad2pVZ2M4SG1tNlExRit2aUR1dkJa?=
 =?utf-8?B?WEoxR0FUMVBSS0tWK2ZQOVpONW1aNTJoWmRkQm9VcVF1RUIrSXNWMGZuMVFl?=
 =?utf-8?B?WG9WU1JiTTdoajJTQjh1RDVTRDZsNGg5V0RCTUtvajgyWkxMMVRHN1l4ekNR?=
 =?utf-8?B?VDd5SDhFZHNjbm13bmo0Rk5uaDVFcDdNSkZVQW9rbFcxK3hsVCt1OGdyMVQz?=
 =?utf-8?B?eUNNT2tpK01zeG1PYWlWNmlndHRZMkpPN0oxcVdNMlY0U2JoaloyOGN0ZlAw?=
 =?utf-8?B?NlhzYTFpMjZ1MEhMZ0VvWWttbVFVMzlyTllUQVR3OGlYYUI3aExSdnF2MmNi?=
 =?utf-8?B?MnlTaFhCVFZXNXlGMWVyaFNSb2w4STBWVmxmQk84T1VxZktQZDROT0k3Zzh2?=
 =?utf-8?B?OGtvaStsVzdxTG4xbkpuRU05eFhZTXVKWTBJcUh6UiswaGV2bWwreHNDQk92?=
 =?utf-8?B?V3RtMUd5TmRGQTFyUWFpSkl4WjBHRkgwaTAzeHc4UjV1UysvMGlhZHBPNmJ1?=
 =?utf-8?B?NW9nUVUvV2hRaDZ1WGc0SmR1U1dGZ09xT0NsUGNqaHcxRVltWDk3Zks5bUVZ?=
 =?utf-8?B?MHpVT2xvdkxGeUJaWjlyL08wSVdYbmFqM0JueHg2TWVsZkQ3cnRuZGNBd1VH?=
 =?utf-8?B?RlhsMFo5Y0lyRHJXZ2lJazdyQW5aUUJUVlFET0I4aXE0aGZTMERSTjFZdnRY?=
 =?utf-8?B?VDZTaDJWNVo3eEQrYVVVVTFBWVQ2NXBQTkgwUEtCeS9CMGpoeHN1b0psNkc1?=
 =?utf-8?B?VmNqYktrWWJqNEljMWRsdlZLWUxMVzJiWGxCUi8xbnNOT0s1ai9JV2ZwSm1n?=
 =?utf-8?B?RnpxN3FSVXk4VCtlWDNML0MvL1dnVHg0dlovaWJWNFVWSkdHbE5DLyt0UmpF?=
 =?utf-8?B?dUtPL2N1d1hySGZBSHBuVnU2bk9rclpmeEpkSTYremhBTVI3OGw5aW1PaHRY?=
 =?utf-8?B?TENJQjRrRlpkMStHek9lSTZYTmlzQVVVV0NEUWNYYVAwemhTdEppdnM3SFhR?=
 =?utf-8?B?c1ArYnZHT3RIMm1pY3ZwU1V0NDhibTF1dnlvTXBLMmpDQjIydllaVkxYNGd4?=
 =?utf-8?B?UmxyaGxuVFRYMmtLaGg1bTlTbEptbDNiNkVTWWx0b3E3SjZoRE01MUdreEJI?=
 =?utf-8?B?TFI5KzBrbGFSdWdxSnJIa0VQSFd5OVRITFRVdVArcmIwSFFBNVVLek5iU3B2?=
 =?utf-8?B?a2JGQW8vaGN1UDY4OThmbkY5OUtjdkljcGp5T1ErdjVDOGRXZys5SVk4Ui9I?=
 =?utf-8?B?S2NSbFlIbFRDc1BRMzJaMEpYNEpTbFRiK0EyaFZlVCs2ZzJOT0Y5RVJZN2lt?=
 =?utf-8?B?a2VBM3NSaTRjdHorT0dVMDkrMFBQWFFtRGpHQlo2TzR6OUtkaGErSXJ4Y2ln?=
 =?utf-8?B?c21rZlFMT29QSmVIWUxIQXgyUFAwbkN5eW9Fclhjcm9mL3FtZUIrcTZiRnd2?=
 =?utf-8?B?YVpYcnAreXlRRWNYNitFeWFrZzNjRjgxaHByVnZabC8vQyt5L1NlYTVFZFdQ?=
 =?utf-8?B?VUNINE4yT1o1VnJiV1c1RFpaWUxhSVlUVTN3L1kwSTZyUFdId0ZObXl5WlhR?=
 =?utf-8?B?RTlvM1hkNzB3cWlYWXBWVjhWQVJDTDRUaFpGRVRqUHIyQStXVWlTV3RESkYz?=
 =?utf-8?B?OGswdjlRemcvNCs3YzFYYWVSSTgvNmhLVFVFM29YdGwvclI0Vm13Yy9RNXRi?=
 =?utf-8?B?OXhac1ZEZzUrdEFGVFJpNmpwNGQ0c0ovZi9qdTl0UXZTMFM4M29CSEpVTWJT?=
 =?utf-8?B?WTFYQnNmaHhWREpqTnJMWUYxUHRpYUxKVzRZY2lnM2lQSG80UDZMZjI1VXhO?=
 =?utf-8?B?QkdLdE4xMzU5OEdNbFJUTlhSSkRxRnl2SGNScGtzc2xCVFQwQVNSY0dqTG1z?=
 =?utf-8?B?ZUxVa3Y4UWxaeGovTGRYeDY1UDlDKzdjRHdCWDg0NG5iZDhNRStObDFGeVFD?=
 =?utf-8?B?U2lHOEl1RS9Oait6bG44ejk2T1lleFR1UGNKYVBqSGVMdlVkU2tYN2lVaGFH?=
 =?utf-8?B?S0JaYjV2TERsbUEydTRLK0FqM0JQSHBRV0Q3K3lTakttc2RjMW0zVlhNazQ3?=
 =?utf-8?B?MFZUdWNOcDNla0hPQ0o5a2FCaFFUR2ZNOTlKVDQ4eUtkT3pBUEdrZ0ZzWEZk?=
 =?utf-8?B?R3k4RDRWdXpQYllraFl6dkM4Q1NBekM5L2dRSVFxUTBYNUJXZEpqaDVaUlBr?=
 =?utf-8?B?bHYxQTRNZkRZSjJHVnhTTXhOSk5QaVpGWkVuQ0xKNnprNDNHRm9YTTErK3ZL?=
 =?utf-8?B?U3d2NW9iVC9JTVdTRkU5ZE5DajRONThWOEpMc3ZzVW9xWVprajN6anY5T3pL?=
 =?utf-8?B?bHFFK09MdUdYUDJBU1NsdnRMYzZXT0t4aFl5djFPM0tnZVJLelVpdz09?=
X-Exchange-RoutingPolicyChecked: mMzqxTXHwbfo8zFsT3f9YtP2j6xX+gfWX1njR9z0fRhH6h4yAnanfac+VEGS8YVOO+pdAD9WOBbo9GUvhGJo5F7gaToTTWiYusSEPYxulLUr3nxwhBw39OD/oC6H67hUA0qXo78EACneyzhYgwfPmug/+jvarDN+ytDxO45P/cvVyS8RwgpNL1+ECEd2pNbYKzJA+K2sKh1LmeNWh4LnMhD1P67wNMcIMBsnX+/j23/yLrMCUKFasR/yPrVKNNI7d/JT8GkiGlBjt+UHOygiDd3MuQhDuxdlrPjwOXebS+DnBumKr57+IsAbboGhU1erJMlBr4YXvOjHnAxwTIAHsw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 15265543-8150-4f8d-139a-08de7dc9afd3
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Mar 2026 10:50:32.7577 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LUao6/hgjb9tFrtD5530DXprDUKI9F79o+i71C5/mjGHn2x2tAoY+cG/+1uETagA/9Q192HLp81hK7gVs3ZEd9z67NXTIAhWgTUjFgCCaA8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6374
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773053447; x=1804589447;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=wvViWYqee1ws0quGudz/61jN2xul7/f66JOE5VEhtW8=;
 b=eZElD51tx3OOKqSFJevulVyDbqmTTS8xZ+Az1BNZrISI6SY/MVJred1j
 W4XkxO/TYB/YQqM3tawdm2Pmo+rIGJI2zthvD+7f0NdkR71YQPF5SCOfz
 9oIyNNsUGS0XYZlVua9gm6IqreRHbmM/ue9ojOLpsFnJqzkSTrqSmRzwM
 wsZbEKU1+eIw2qiQv5iALUpfXb0hKjDc6RD6yVoO+aXo1sOECiM/4QN+/
 n2SbHzWl87jTiRW/X9GwhvB3u0eErYf7faYKE1IDRXH6iaYrKQNGwQDS0
 KWsOUc2EZ8CE4zuNqVNnGZx06mkgniaKtCnmohtvO6kZHfswgj7UPMLZV
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=eZElD51t
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH 4/5] PCI/PTM: Drop granularity
 parameter from pci_enable_ptm()
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
X-Rspamd-Queue-Id: 684732375F2
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:mika.westerberg@linux.intel.com,m:linux-pci@vger.kernel.org,m:bhelgaas@google.com,m:lukas@wunner.de,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:saeedm@nvidia.com,m:leon@kernel.org,m:tariqt@nvidia.com,m:mbloch@nvidia.com,m:richardcochran@gmail.com,m:andriy.shevchenko@intel.com,m:vitaly.lifshits@intel.com,m:ilpo.jarvinen@linux.intel.com,m:vinicius.gomes@intel.com,m:dima.ruinskiy@intel.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[avigailx.dahan@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[avigailx.dahan@intel.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[lists.osuosl.org,google.com,wunner.de,intel.com,lunn.ch,davemloft.net,redhat.com,nvidia.com,kernel.org,gmail.com,linux.intel.com];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:rdns,smtp4.osuosl.org:helo,intel.com:mid,intel.com:email,osuosl.org:dkim]
X-Rspamd-Action: no action



On 24/02/2026 13:10, Mika Westerberg wrote:
> This is not used by any of the existing callers so we can simplify the
> function slightly and get rid of that.
> 
> Signed-off-by: Mika Westerberg <mika.westerberg@linux.intel.com>
> Reviewed-by: Andy Shevchenko <andriy.shevchenko@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_main.c      |  2 +-
>   drivers/net/ethernet/intel/idpf/idpf_main.c    |  2 +-
>   drivers/net/ethernet/intel/igc/igc_main.c      |  2 +-
>   drivers/net/ethernet/mellanox/mlx5/core/main.c |  2 +-
>   drivers/pci/pcie/ptm.c                         | 11 +++--------
>   include/linux/pci.h                            |  4 ++--
>   6 files changed, 9 insertions(+), 14 deletions(-)
> 

Tested-by: Avigail Dahan <avigailx.dahan@intel.com>
