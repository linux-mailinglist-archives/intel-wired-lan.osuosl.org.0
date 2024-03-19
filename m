Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 80A97880759
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Mar 2024 23:45:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D006160B6A;
	Tue, 19 Mar 2024 22:45:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pE4IJ9Bo1mkv; Tue, 19 Mar 2024 22:45:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 11EEE60908
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1710888315;
	bh=LdwMC63jRMP3kfaWl9kE53Gn8xJu39vpE1sr1QBnjb0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=7yyQSZXhW+oXCf5egzZ5I5jjk4cnhh8uXpfbktrJ/qqIOEh4ir0D9/tGhjDv+wzkD
	 YA1J3R+zwAN9Hek7Kg11mLmludsMwvJPVGhTX0WrMI9nlzW8lHlG5GWir1hKdB1aQ2
	 b0qGwWn0o8/QKUQy6i1kfDY9WT7rKroUM2KOxHvTJnLevHceURDK4kt6UVukpxDkiO
	 T8q2iYgBl1epl9j0OFH5JyAwi1IDt3Y+8KfsRNagm+Q05pHts/ksntsC0pfGcGS+fM
	 6f9tf/JdyLjsCmuTANPs3vRWwSYmC6WwwqBIF78SpFn7FH0oJsg3X+f8ELMLmZWMrk
	 NaLaWPeU21bCQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 11EEE60908;
	Tue, 19 Mar 2024 22:45:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D32691BF28F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Mar 2024 22:45:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CBCA160683
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Mar 2024 22:45:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1SURvszvYAt4 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Mar 2024 22:45:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org A34CC60908
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A34CC60908
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A34CC60908
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Mar 2024 22:45:10 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11018"; a="5628256"
X-IronPort-AV: E=Sophos;i="6.07,138,1708416000"; 
   d="scan'208";a="5628256"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2024 15:45:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,138,1708416000"; d="scan'208";a="45047828"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Mar 2024 15:45:09 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 19 Mar 2024 15:45:08 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 19 Mar 2024 15:45:07 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 19 Mar 2024 15:45:07 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 19 Mar 2024 15:45:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KSnu7qsX4SZXnaegJvnWEB47A8JhdidnjEuNMatUpKvWw08UGDtaavcdM7VNBeV+xcNavdbazSZvcRiyoTQEfGIJB8kbSHELLL5yBViR8AUwcpwzfSESd9at/O9BPCcWgbjwNH7uGYm8jvox/MOj5BQtoifJX/BiBVyHW65HuAmZVV+Qgxd+xpOibGHk0i11SzAJMcU+910UISyiuZLNU71SAuxcXDfMQp4iDU9HGVc52CyJUFaloJplP9xfRcxY8Arbrq7YU+nRNeLeU6c9x++/NQUyJkDKryNre9i9ziWyIdXXwDnORIceFgT2bJhL9bFG4Ds1ZM2GUsA9KNFAOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LdwMC63jRMP3kfaWl9kE53Gn8xJu39vpE1sr1QBnjb0=;
 b=DQszfmGRcbCIcxO7PZI3ARMPRhOuo5JmcAV4kjfwdN1Y7ffyCfsfP24m5DTZcwfGLVSXJA56tdkb40hAkzchAALW+zepAfyYgApYVMRZ1yClbIJK7XipwtwA/1FenUME3R4IVr8NR5vSAUG6OklbR4Tjr5GPDbZ4k7tfe+xpTTOmeNQ2PIBFTieRw0sSJDKiaVYLMddY6KZvk/6z3iyXAScRaiydZ8+rH2IrpsU5NMzx3dpt5dOM0kaI4x6JMUB3kFhu2VQki1CU6PhLqo2CjvdoOAVciOsEv3kWGsA3F2PfYnOOpCJlIhRAe3if7zuTJh7mgEz+ZUnJqKjPOX/sNQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by LV8PR11MB8772.namprd11.prod.outlook.com (2603:10b6:408:200::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.11; Tue, 19 Mar
 2024 22:44:59 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::b383:e86d:874:245a]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::b383:e86d:874:245a%5]) with mapi id 15.20.7409.010; Tue, 19 Mar 2024
 22:44:59 +0000
Message-ID: <f8d48bbb-962e-4c09-a660-b46bbd3a4135@intel.com>
Date: Tue, 19 Mar 2024 15:44:58 -0700
User-Agent: Mozilla Thunderbird
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
References: <20240319203328.890350-1-jacob.e.keller@intel.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20240319203328.890350-1-jacob.e.keller@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW2PR2101CA0032.namprd21.prod.outlook.com
 (2603:10b6:302:1::45) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|LV8PR11MB8772:EE_
X-MS-Office365-Filtering-Correlation-Id: d7f96d09-711c-4f6b-d0bf-08dc48663526
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: qK0CCcOOYGcfHE+vi8QLH/wAUyNjU7Wsse4CF+fksy7+Z3yVrxD/s3fM2r5TKwI9rJ6SAGu/mB+B0IPblNOT/7CbA9dlQDevEZ+cuCO8vacwU6rm/0TyBGdGI3BaY+5I8eJlU9jHilr1OX/BlgloG29f0Gyh2BiYGxZun6N9oPCk+eU0DOJt+KgaFezNkQlYEkOQufF4HChsc8Rzg2JV1Z0Wu2I281ClOWZM00jo2bMqqdKVQ63pnNuimZLW6XlTrt4I5d4w+JkbllB5V4u5DCc7OAlWpWESxkYAdx8Uq6XO27BTXTdqKLkoe2X9mmffGEZRxQqdWbV4HPO7Vb92fdfWxgo3T60d9sVXg/8q+K8Vw5r3kdL1MLHMx4YmQ1z/H9quR/dCza0o9jX311vcWb4moU/bXzuV3QyRPKRSSTu7B6ZOqANVJk3jQfc2TQv/UAFicdEvcijR3jONfPdeXVzWEFVqDmcPo2TN4q/dP2BdsGGwiSR47HotmhbSwblFU7QgBKgHwY3v5Be7VVrqYFpAvMR+qkCCAgNqXQ10ZznY+sPBmolubja/JUtgO8yGBQAnZDkqsS1ICxVY29S6hOMvkzLS58eNtVtbBkYCprNUgUpKhmpmnov+bqCZs/PCYxjOOHvNpGIEUi0HunDEebF9qQ5SXldbeldffZsfZKc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UVc2VzFTSDV3YVdCZURyazdwR1duZllFb3hpeEJZaFVjUDNhM2MxNmtXTVZh?=
 =?utf-8?B?VHRza1VVbndPWjJLcklZd05aRnk1Zzc0cElIY3hYejZkRkY4ZWZyMi9tSm1y?=
 =?utf-8?B?S2wzOSsrOEF5UnR4TnlRVW9mM1VObmxMZUYyR284aTZVTDZtWmtzYTZkMU5D?=
 =?utf-8?B?Q0FaM0xUN0dPOVJjSFByUVdLa2o4Zm81Z3ZPSFpoREdyK25ScXlIK0lrN2Uw?=
 =?utf-8?B?K2ZwWHl3NE9IZzZ4UUJIN2ZrNERQVUtDcVJDbStFL0FyN3M4U1ByK0tBa1g5?=
 =?utf-8?B?MFYxNEh1V0JpcWpMSGMvSmwySUQyMjE4anRQbFNCQ2pDUVVzeFNYYXZEY29Z?=
 =?utf-8?B?dUJSRkt0dWNYTXc5RS9jOTNFaVgxMjVPZXJQcmhtR1BUby9KNkFCazZkcytn?=
 =?utf-8?B?L0VFZnFxSkxEQWJ3T3RnVVp5bWxSS2Jwa0hGMnlGUDNKRXJvVkNyNzB2eG5I?=
 =?utf-8?B?Ni9ZQzhsNjlKRTg5NWZpNVVNMG9RN2V6bk1Sc1B2MlBCUW1xQ0krSnFhaXZM?=
 =?utf-8?B?WHU2OXB0QWhIM2NTenBFZVdKQ0txRFhjQ2M4VHEwdGFPT0hzVmVkaHFoWGNH?=
 =?utf-8?B?dEFZM2REcXpmRXpQNmxYaU96a2hVTEwzTzBsOVVQalM1RU9wRG1GS3p1TEtI?=
 =?utf-8?B?ZDlSQUlaL0hVNzRsbFNXQ2ZQZlppRXRsZTN0Q2wwcjJER1V4MlBJTXF0bnVE?=
 =?utf-8?B?MXlLUVN3S2dmSXdjOWRNb1JUQVlSVS84N2ZaZ2JwVktyRzRNY3MzRnI2c3VV?=
 =?utf-8?B?NjAyYVBJeFhQYlExNDB3S1o5clV0UWRPbTkvWkFSamVpeVl6M3dQRWxFVmNn?=
 =?utf-8?B?V3IwSjdiTkorMnVla2pEL09zbE5GNG9ua0lXUW90MWVCZkZHYlNTai8xbVhk?=
 =?utf-8?B?MG9FamdST1lKUHhvdTk0QkpRMklIUEEva1h6ZlpMUG4rTTFyZmttK3E3ZXY3?=
 =?utf-8?B?TURFSFhicGRUdjJLYUQxd3ByNWM3cmMwa1hHTEx1RmFEdkRBS0dKd1ZVVU1n?=
 =?utf-8?B?WmoyZDdrMFNSTW9yQnZyeWNuUFBVRTUrb0tjSERrVkY3VjBaN0VZaUEyNlRk?=
 =?utf-8?B?Vms5bmVVUDNMd0dCUTl5YXlvT3Vwb2xEZUJoNE5EMStiZEM5ZjZLUnA3bDR6?=
 =?utf-8?B?YXg2MlQ0bnlkTkNhZW5lSTJEV01Oci90UkN3bzBGcm42bGRPT2NoUEFRb0E0?=
 =?utf-8?B?SURadEc0VWZJWGlqSU95OGVWRS82ek5iQmkreTdONG5IQkJhQnBvN001dEh6?=
 =?utf-8?B?bExuWjRyU1dWN21LZlBqUnhreHBwTlNZQ3k0QnhXay9CNXJqWmpGaHZja1VV?=
 =?utf-8?B?cFNLY2V4K1U2T2NRZ3VwZXEveFplZ3JLY3ViMjFTZEpqUDB4NjJPSXd3dzcx?=
 =?utf-8?B?WWsxT3VMcko5cWJNbzBkOGlDNlUyWXV1RW8xK2ViaXNBSTR2RE5LdnRoQ2dE?=
 =?utf-8?B?TUkya1R5ellWR093N1BRdnRvdStSQWlzWHRUQWZjYVU4Vkw1NC9uMVZrdnpo?=
 =?utf-8?B?RnF6UFAxUHJDU2F6NDc3L1BreGJkNjRSbndKdjZIenhpV1Q2RTNJblYrVGVy?=
 =?utf-8?B?Y3FOYWErTGlma0tTWmNnTFhSZWxWc0hEbjg1VUlHaFYvTk0yS2ZKUm5lT2VV?=
 =?utf-8?B?Z0J1QWs5SmxJWnNQbW1Rc013djN1WUpQdDUxTkk0MTY1UGFtQ2VOYlBSVWlx?=
 =?utf-8?B?UEVYdllPTjlMRlgwZ2VmK1lZV290QXVRSzZRd3F2cXFTZ1JkWVptVER5S1Rx?=
 =?utf-8?B?S0k5YmZTRlFRTzJLUFo4V3d5bnVRR2FvcjJFM3E4ckJKU1NYTDJONzlQZGc4?=
 =?utf-8?B?VDZrazdNS1cxaDBFbXZSMGhMVU41b1Q4bTIrdStjUEVEbmNqSW16dzdndm5r?=
 =?utf-8?B?WHd3T2IyRFU1S0UxRUZpUVVhVDFFWHFOQ0dzdjRsVTRGLzZ3NE9hTUJBdTg2?=
 =?utf-8?B?ellmZVd3RHRyd1BwZUdEQlpWeGRLUnZDcExYN2ZtbzhRUHVMbng2dGl0THFj?=
 =?utf-8?B?NWhtTEJkV2xMdk9lc0VoVXZ2cThTYTB3SHdTdjFtd1V0WEZjRElVS0VrK1RF?=
 =?utf-8?B?ejlhRlg2ekNwVGx3bjZydURRVEJONEdXOVFsYU1zOGliZlVjTzZ5ZTFJU1Fa?=
 =?utf-8?B?QnVINHR0MkJ4TjFTVTNISTFGMTdYeFhpVEg5M2NwRVJ5QVpJejgrTUNFdHUv?=
 =?utf-8?B?SVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d7f96d09-711c-4f6b-d0bf-08dc48663526
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Mar 2024 22:44:59.6387 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: P6zIhX5v6X0W9AistswSCbJZaLe39jnXZwp7ivbJZ5GaMcNvYrsmw8zRLFtcZykq439R5PPgSEZaNj4uaZtx3iESDpbPAePcWMaz3UslrW0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8772
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710888311; x=1742424311;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=LVbwdpy4KfNvaVUA1Fr6ucuAo1dLJsAH323Jo/zllMU=;
 b=mrYVVKK7zaGBT0RLREH1v4QTuc0hypjdPpnx+klC1oqwS5ZBibeew3bD
 dRtca06YaidANJAwU4Cqbg5zhACz87xINMSPs3ra3qOk+kFw+ohVkAlPF
 k/pjVNu9eXepsJe+rhb2VV/65tZCDVtbAkW4JtJVtcBKX1qJbQF3KiHOY
 3e6tHZNMW7IKS4Sq5Ftx48LbL9bNV2QOgs4c7yn0peKWmVKgZP42KwdTu
 08F5DyY0xCx2s92dH338dIE2D5ejdUUBdzWkevPo+53Dge51MRF3ZrS+R
 UD9w+3HVX67s20n7cUsOQl+w9wdCP+89WAs9f9ytPDiOOMJ7UfQIHguuW
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=mrYVVKK7
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 0/2] ice: minor cleanups for
 VF IRQ logic
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
Cc: Anthony Nguyen <anthony.l.nguyen@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 3/19/2024 1:33 PM, Jacob Keller wrote:
> While working on implementing Scalable IOV support for the ice driver, I
> found a few minor gotchas in the VF logic where the existing code is not
> ready to handle Scalable VFs.
> 
> First, the recent support to allow programming the VF MSI-X count
> initialized some values in ice_sriov.c in the for loop for creating VFs
> using the sriov_numvfs interface. We will need to initialize these values
> for Scalable VFs as well, and this should belong in
> ice_initialize_vf_entry().
> 
> Second, when programming the VF IRQs in response to virtchnl commands, the
> current virtchnl logic hardcodes the assumption that hardware IRQ indexes
> are VF relative. This is true for Single Root IOV, but is not true for
> Scalable IOV where the interrupts come from the PF space. Cleanup the logic
> to look up the IRQ index from the q_vector, making this flow more agnostic
> of the VF functionality type.
> 
> Neither of these changes is critical for current SR-IOV support, but they do
> prepare the way for Scalable IOV VF support. I'd rather have these cleanups
> already taken care now instead of carrying them until the Scalable IOV code
> is submitted.
> 
> Jacob Keller (2):
>   ice: set vf->num_msix in ice_initialize_vf_entry()
>   ice: look up VF MSI-X index from q_vector->irq.index
> 

Please ignore for now. This has a conflict with the recent work to
refactor how MSI-X resources are tracked, and results in trying to free
a vector that was never allocated. It worked on an older driver, but
when I rebased to the next-queue it causes this:

[  492.930839] ice 0000:b8:00.0: Failed to get MSIX interrupt entry at
index 1
[  492.938804] ice 0000:b8:00.0: Failed to get MSIX interrupt entry at
index 2
[  492.946763] ice 0000:b8:00.0: Failed to get MSIX interrupt entry at
index 3
[  492.954722] ice 0000:b8:00.0: Failed to get MSIX interrupt entry at
index 4
[  492.962663] ice 0000:b8:00.0: Failed to get MSIX interrupt entry at
index 5
[  492.970582] ice 0000:b8:00.0: Failed to get MSIX interrupt entry at
index 6
[  492.978524] ice 0000:b8:00.0: Failed to get MSIX interrupt entry at
index 7
[  492.986463] ice 0000:b8:00.0: Failed to get MSIX interrupt entry at
index 8
[  492.994413] ice 0000:b8:00.0: Failed to get MSIX interrupt entry at
index 9
[  493.002361] ice 0000:b8:00.0: Failed to get MSIX interrupt entry at
index 10
[  493.010383] ice 0000:b8:00.0: Failed to get MSIX interrupt entry at
index 11
[  493.018416] ice 0000:b8:00.0: Failed to get MSIX interrupt entry at
index 12
[  493.026458] ice 0000:b8:00.0: Failed to get MSIX interrupt entry at
index 13
[  493.034988] ice 0000:b8:00.0: Failed to get MSIX interrupt entry at
index 14
[  493.043311] ice 0000:b8:00.0: Failed to get MSIX interrupt entry at
index 15
[  493.051543] ice 0000:b8:00.0: Failed to get MSIX interrupt entry at
index 16

I will need to re-evaluate how we can get the proper index here.

>  drivers/net/ethernet/intel/ice/ice_base.c     |  6 ++++++
>  drivers/net/ethernet/intel/ice/ice_sriov.c    |  5 -----
>  drivers/net/ethernet/intel/ice/ice_vf_lib.c   |  5 ++++-
>  drivers/net/ethernet/intel/ice/ice_virtchnl.c | 12 +++++-------
>  4 files changed, 15 insertions(+), 13 deletions(-)
> 
> 
> base-commit: 237bb5f7f7f55ec5f773469a974c61a49c298625
