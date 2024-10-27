Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 269659B1D7E
	for <lists+intel-wired-lan@lfdr.de>; Sun, 27 Oct 2024 12:48:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8A9A1606B8;
	Sun, 27 Oct 2024 11:48:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id b66jss__fCuL; Sun, 27 Oct 2024 11:48:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DEE90606A2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730029728;
	bh=WssJ7LvL0tV1mJs6aumfp535+jFh099dHSG0Ktu7RAA=;
	h=To:References:From:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=P+WvnWkFXeUwj0mHonwXMAIO5s5A8LROvCR3CtbhYRl1GUGLK/BC1AfAx1BPBRKdT
	 OEoPzrrSugFCqjAEqfnXizuaioyewvtvKKH8LrIEtszb8RQH43TppGqFTJwW5QhQ0J
	 6zyxE8R8oW9leninfsfMuwjfNmxMEbQXijq9Rt/7ZttBv+74fagHM+9EuFXm/8GlQ0
	 XNWTT8GMVI+QmgYJOm1v0rDOOvKhyaqP6BLK7okb0Ly2VmTYvvEqEGHNzaPl8AkStc
	 rcFsow/5YcQOnbvfriYUUp32IeTs7g/LyGmoVWAikJcEqMosF5+GqTyPpzgomb4vpY
	 YWc+UjGtDtG0g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id DEE90606A2;
	Sun, 27 Oct 2024 11:48:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 29598AEE
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Oct 2024 11:48:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0A5176067D
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Oct 2024 11:48:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7NuKwLtMeofQ for <intel-wired-lan@lists.osuosl.org>;
 Sun, 27 Oct 2024 11:48:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=avigailx.dahan@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org F130360635
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F130360635
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp3.osuosl.org (Postfix) with ESMTPS id F130360635
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Oct 2024 11:48:45 +0000 (UTC)
X-CSE-ConnectionGUID: BD8tr+uFRn63v3EpdPEBwA==
X-CSE-MsgGUID: GJurRvvtT+mxBX4UJ7ddzQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11237"; a="29542852"
X-IronPort-AV: E=Sophos;i="6.11,237,1725346800"; d="scan'208";a="29542852"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2024 04:48:45 -0700
X-CSE-ConnectionGUID: ui9rIi0IT2W7Mn97sAEL4g==
X-CSE-MsgGUID: /8E4ERoMR5SF0jr3fXLy8g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,237,1725346800"; d="scan'208";a="81259440"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Oct 2024 04:48:45 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sun, 27 Oct 2024 04:48:44 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Sun, 27 Oct 2024 04:48:44 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Sun, 27 Oct 2024 04:48:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vX9wRDEvOlIUXfu87Z7Z6anSOA09vSeRAviRZkps7a8V6HrJUaUD/twyrzEAH7VBKDgKgkXS9KaDeYDRchrlz5zjcAQ7LUfx7JJgQ1cAAKVg0waELFQ7QzNUwWiomzf+8TJrMn4WdA2asR9HhDgoONTdE8rka+v9z+eppa4swT5MPeO2VnD5cQ14LBmBUfYYanhVGM0mhFXLpGq12mEFxUaL/Y1xHtuKlr+O/wqhNs/JvYrY/ET96MhtL5hINqiv13C5wKMzsnUe4UnBhp4yzyLCeXKHAxpiIqDv09E7to1mVHxX3kQ+5+1UqsVs6Smpan4FaL0wgKXXrdWlXodrew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WssJ7LvL0tV1mJs6aumfp535+jFh099dHSG0Ktu7RAA=;
 b=bbeIeFnXPgzU5tpyggPqVLQDo1E9UToQlzZ7p/VduPbHKzKa8kI/o0LeuNo98N3FNdSa6N1tdVs8Ot2hHn3EvLhfh6VYJ9roaw6At+XzKmXd+CQO4J8Z54GyfeTfJ4KQ1yx3ahopnKzT9ZUz7ZjgqNdbLKigJq5y36zk1GSxvPjuHOkue+vuV+214RTMsZRR8kGoy6Q2Wwpeh1sMs2qwSg/zPTTibPcZwF8u3gRCHqRq92wURaR8a9MBTP4ZJylwWv94j/wrC16203GcE/EP7X1pWbRDlcmmhdBGlJ6/4qdUDkJFeZ6e+dDnVGi7M0BAY4nV9vo5uZO/ztT3l9/YEg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BY5PR11MB4194.namprd11.prod.outlook.com (2603:10b6:a03:1c0::13)
 by PH8PR11MB6976.namprd11.prod.outlook.com (2603:10b6:510:223::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.24; Sun, 27 Oct
 2024 11:48:42 +0000
Received: from BY5PR11MB4194.namprd11.prod.outlook.com
 ([fe80::9d17:67a6:4f83:ef61]) by BY5PR11MB4194.namprd11.prod.outlook.com
 ([fe80::9d17:67a6:4f83:ef61%5]) with mapi id 15.20.8093.014; Sun, 27 Oct 2024
 11:48:41 +0000
To: Vitaly Lifshits <vitaly.lifshits@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20241001170848.1191876-1-vitaly.lifshits@intel.com>
From: Avigail Dahan <Avigailx.dahan@intel.com>
Message-ID: <6ed4f44f-fec6-8afc-d6f0-cee887551bc6@intel.com>
Date: Sun, 27 Oct 2024 13:48:37 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
In-Reply-To: <20241001170848.1191876-1-vitaly.lifshits@intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL0P290CA0004.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:5::17) To BY5PR11MB4194.namprd11.prod.outlook.com
 (2603:10b6:a03:1c0::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB4194:EE_|PH8PR11MB6976:EE_
X-MS-Office365-Filtering-Correlation-Id: 531c40b9-19be-4ba3-e8ca-08dcf67d4db8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bFl0WW1rUDBjaVovUDViVys1cEhOMGQwUFhSRElzaC9OMU92eHpSWGo5RVkx?=
 =?utf-8?B?Mjd6c3JRUUcwck9wdzB6RmRDMFRWVnROaWlzRWxXWUpaMUxvcFlUMWJhaXNQ?=
 =?utf-8?B?Z1NBZmpnV2VjSjkzUEo1TkZHRlZTcE5xTGFIQThnaFk4cVpMb0NpT2l4TDFT?=
 =?utf-8?B?L2hDdVpwVzhGajdsODAwUWsvblFidDBaNFcwRFlLVUVHLzMrNmFIV2tPN0pm?=
 =?utf-8?B?NHFDL29iY1BmQ2hnR2R5bjFPdGxEb1cyc3dyVld4K2plNnZjays3SFg3Skg5?=
 =?utf-8?B?VlJobTkvVFRBQkdpM2RhTnppb0dlTm5KMUJqV0NJL1k4RFdMSXAzUStaRXhP?=
 =?utf-8?B?TFJzUjl4S2V5TnZQR1lncEN4UVNGT05QSHVTcGk2ZSs2dnl1dXhjQ01UMVF6?=
 =?utf-8?B?Sk9SNWViOE1EWVE5RGZkbEpxVXlJL1BZYm1ZU3lmcWl2YzBCaW05K0ZGV29Z?=
 =?utf-8?B?ckpvOE14WWxKbEl0UnF1ZXlVWTJaYWNzSWRWUmRsenVuQkJQTXQ4cVcwdU13?=
 =?utf-8?B?RjBOM2libnlqREFxQXJSVFVvSjMzZE9DeGlTZHZjSkZ2dE9xSERoWmFJQ1RY?=
 =?utf-8?B?dUxPRUNxdExoV2cwUFFCTFhFb292US9ZeHV2WFZVR1JWeHFpZzVDc1VDV2FE?=
 =?utf-8?B?emFOanZvTHZZT1hDMFVqRC85aFpQY1JGVk5YMWd3UDNQT3cxOGNxQXJPRll0?=
 =?utf-8?B?VFhkSVhSRHYxNWVkNEZvTzZ1Z3NESWRvbktUcjJYcFJXM1FHb25LN21xeTFi?=
 =?utf-8?B?cDM2ZWlHZTlIR3ZsUHdFVUEybmZxd2hKaFVxbG5DTFRRa0Fhd0NnNkRDaFB2?=
 =?utf-8?B?eHhpemtmQzVKcFU3ZlNETmJNODNJck1uU0VBb1VTai83SFhwcVF2TlQ2YnQx?=
 =?utf-8?B?a3hqZ3dmN1lyRXdjRmhQdGduRlJzcldyWnFURTB3cGl3TkxFRmdVN1FaSjNo?=
 =?utf-8?B?SWgvdk5COG9MeUc1UVIxWTZITjBkaGdYUEY5bG5VZkRmblo4ckdBZWNBeks3?=
 =?utf-8?B?ZWdqWHpVODN2b3hUZDZqOUhEUFRrWXBzQ1FrWHp5TzhLbXVUbFBHYzdpcy9x?=
 =?utf-8?B?U08zUFNmTnI0ZUVNdUovR3pvREV6QkhzSkE3NG9hc2ZKMzJSWGQ0MFRjcENx?=
 =?utf-8?B?SjZuODRoZFRYOS9WMWhONGl6VW92NTZ1cjEydmIwSU5ObUc4SDVLdHFtRHRk?=
 =?utf-8?B?S3BwQXViTTZRRkRxc1ZtN1RCQXdwN0Fpa09sdnZlU0ZiTGZjRytRaTR3ZUth?=
 =?utf-8?B?OGl1cHcwcjRhb011WGFmUThuTjQyUzN3Rk5UU2VmTUJacFIzcGRwZmRxUkZT?=
 =?utf-8?B?eUVVeGI0UWw4WXErQjcwMTk1dGQ2cDQwRWpVVXdZVDNobnp5M2lzTmppUlIz?=
 =?utf-8?B?dVo1bkZBQXlOY0pRRnZQeDhwTWUyeTJZSjBBMDczZXR5KzF4K1JMT3RQTGtW?=
 =?utf-8?B?NUlpZldqckpGcUxLMDdVWHE5NDNTVnRhc0M4R21tNzdjOVFIdUJEcStyVWlj?=
 =?utf-8?B?czFaa1FkNUxSVEprS2tlTUY4OVhEcVB6YXhObXlxU3U2MnNRdUZMUTMrRWp2?=
 =?utf-8?B?akYzazI4aWhCemYrSXJzeFJJdDdRVER0WkErNXVDTTh6SVlYYnhkQzg5MW5B?=
 =?utf-8?B?Q2p2c3VpNjhhYlBvZXpNaDArZzBJazNOUE9SR3pSR3lpODRpbWZ5NEZFQUFo?=
 =?utf-8?B?cWc1TDBzR043VTJ6aU13dGhzQXE5L0p1UmV3WEJKazg5b2pMbDJoNGhTT0hu?=
 =?utf-8?Q?4J2HM3/Y4cJyc0fZ3QBVYlJIo6HeS3axvdTNai2?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4194.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?T3htaE53d3pQWlprNlFLU3AwYm14czQ5ZFdjZitsdXk2RU1qa1lBSldPYXh4?=
 =?utf-8?B?Y3ZSZmU1aVBZNFFYcWhsLzJYTTRkZHU2SURXQmpjRDl6NXZTN29UOEMzWDNS?=
 =?utf-8?B?ZnJUUTVzZ0F4RHoxeE9TUHExdEFUWW5lVSt2L2ZUTy9hOUFxOU1QUForaTNC?=
 =?utf-8?B?bE9TMXJJdnlYMUYzUlE3VkQvZ1NJOXZNc09iWmpGU1RvR2RVSWY4OHNpdnNp?=
 =?utf-8?B?VmQ3YndHQ0lTajRZWjJHWFBVWHpNUHQwMWlIMEY2Rm9OU1o3Z0dxMkVXR1Bu?=
 =?utf-8?B?ZW55enFzUHNlR01nOW8xd2FDbmVKaWdMVWpwR0pUeXBnS2VhT0xyL09KaTNJ?=
 =?utf-8?B?U25Hb3NhbHBNNnNVaEM1aG9JZFduT3BmNDZFOGxiK3NZQTFrOTR4dll1UW1W?=
 =?utf-8?B?cXJSL043MXJUOENTMUxPNFY5blc2U284MlFITzc1TDdFN0pWNTJQZ2tHQWU5?=
 =?utf-8?B?VlpLM2EvaFpMVjNad3B0Q1dZTDJma2dTQjN6ekx0N1I5K1pnWU9SQUZiUHVt?=
 =?utf-8?B?OFk2QU9CT3l4bGVzMWlZbUg3ZHB6c29qRit5TGQ0ZmRLakdsdXVqVmd6YStq?=
 =?utf-8?B?eE4vcDN4NXpZT1VFallDUnlQY043OXI4aklvYmUzOTVqMDdsYUhkcGRTVGRv?=
 =?utf-8?B?M1NNN0h4MjhNcVVCdWdSTkx2VVIrd0pLcWV1WC9neUpDOHNjZWV1dmN5dWhU?=
 =?utf-8?B?WnFSVnhKS1BadHhvcWllejZaVnpaVW9PR1Q2ODBTTUlkcGwzaWg4SFVaYWx4?=
 =?utf-8?B?TzZsTzRJNHBlNzF2WWk0NGc5SnJ2Qk1OYWcwZEJVWG1STTN6S3g3ZjV0akxi?=
 =?utf-8?B?UytvcUNsaDM5WndIMm9MeGF4K1YrNHh1eDdXeEhVU051dFd2WmxraDRDMUNO?=
 =?utf-8?B?bnhyRjQ2UjJ3cVROTThxM004MmEwWU54RTN3cnJoZ044alZrenB6RkVKVGYx?=
 =?utf-8?B?VmhpRVJ4YXA0MlNFMS9jRjJBZTlwQlg1Ym5Eby9EdE4wUjkzVldKYTFuanJL?=
 =?utf-8?B?MWR5d3czSURuZ1l0UHRPcFJkYnRON2g3bmdreHdibkx1UDg2SjIxQ3lQKzR0?=
 =?utf-8?B?N3BKRzB5VVFmZkV5ajU1eWpVOElpRVdtMmVzUmN4RjhkOEJGZ0RPT3FNb1Va?=
 =?utf-8?B?VUdDRXlIcGYwVDM4N2doZjR4K0ZHQldLOUh4VVNEQmpqMW0wNnJkdnI1cEFM?=
 =?utf-8?B?ZldlcDNMZ1NRMUNndEZ3NkhHN0FDRElkd29nZnNqNXB1YkI5eDBOQTAxVkhp?=
 =?utf-8?B?K245UXdEeFlPVzZwTzJvekNTR1hNOG0wWFZVcjFrbUxlOHR2S0VFUjlGWEFC?=
 =?utf-8?B?bE11R2F3S1hLRlVXaTZhcHNoaEs0Z0JWK2lKaS9raG5tSklrSzkwcSswSFBC?=
 =?utf-8?B?VTFDM0FGWXdDRmx2VVprVkhmRXNSdzZCSHJvSEUvQmRKMmNRWXlRUEtvVVY2?=
 =?utf-8?B?OFNqaU1hZnlSbWZrNlA1WFFWSW1VTGJLMW8wL0hoV1RGUGtCajJyM2NhbmhJ?=
 =?utf-8?B?bWNiU0dpMG1LT2ZoUEZZdGlzMXVFVEt1R3dhdkNPSUNNbm9RVmhPQ3hoNWtE?=
 =?utf-8?B?RUVENENvUWZhTTdwRjJPTHp4OW1mb0F1SEMxamVtdStUby9jQ25uNTczQzUw?=
 =?utf-8?B?TjJaV1FoVVlIczlsZHc5aHhuV1djbStWTVdHL2VCT2RtV0p4bkhKaXEvRFRP?=
 =?utf-8?B?WUd6TXljaHB6bE9OVkVRMkZMRzU0TUUwTmFhSDJ3SDRORVphMCsxdCtXRzND?=
 =?utf-8?B?Q0tnNEk2SDc1aWRKT1BzRTFRc0dsK0U5YVNQdU1IWFU0bGJOMGNKMFhyVjNW?=
 =?utf-8?B?NFFsMTJlaFNqQUFNOUd6QjRFeVUvQW13RGhqakpOK0cySmV2aDd1ZzdxYVB4?=
 =?utf-8?B?S2VUK1FlZkc1cnd2SDRZcGJBVm1jb3RBM1NvS1lNc0R3czBTd0JRdnhPdVUy?=
 =?utf-8?B?YjNRb2JMRExBaXROUnhpdFUzRlhBeFluYlN0dUYveThuVmtJUDA0Q2ZvVVp4?=
 =?utf-8?B?SUw0dmo5eFRXeGllMjJVdWEybDk4OWI4eU1XWVFMTkRYeGs0ODh3QkFlZUZn?=
 =?utf-8?B?TEVnVDVTbjFpejFtUFJKSlZVcDVqSG9rZjhKdVNpSklQTm5ycEpiZFFJaHhJ?=
 =?utf-8?B?ek1IYytNalhadHNQMUhPM1BFUkpXWXQvNGZtK0ZhUHdrOFA4OCsyMWI5dkVN?=
 =?utf-8?B?Wmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 531c40b9-19be-4ba3-e8ca-08dcf67d4db8
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4194.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Oct 2024 11:48:41.7480 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IMnxzSTwgG+8VGpEROXZgAMpxKXq9FMQba60Wj38DHvqbPH2Kt54DxxmKkEbgPxo3YJKQg4Oi5Enj2fc428zBV1S1WhobMrocVhiF5Owrm4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6976
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730029726; x=1761565726;
 h=subject:to:references:from:message-id:date:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=YvMrBFZTafPuBggFGLFEza4yNMzS7Fjzi13Bw4fIF8Y=;
 b=nbUBE3YciSmC5RGXU3Bs4T3C/AkO4sNTEI2LkX6ubX05kakcz8r3kD27
 3bvMlOQyMxa21mrg0GCTh62tX3mFTYhaV0jJmoLtQe0ugtUfzSttz7Sat
 IbVKGpGSGJDR2H3xZpKrEfs73V3hUZ4JDiapAG3IwtqKwISFCsM9ff1Kw
 UexP5TSUVI2KIl9ABmoFeKPrzap7ObOAFaf6sEQcamfD4DihR5DOLvNu2
 zO3CqJkhIZa7BYV6NfY21OawXuNmrAa538wPWi8IB6gWjhymmn0AuRUNM
 mqecH1IxMMdbKeFK4XvJTbVp90OFUzgYPqQZF1+e1iV49ALPwqfNPBAmj
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=nbUBE3Yc
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1 1/1] e1000e: Remove Meteor
 Lake SMBUS workarounds
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



On 01/10/2024 20:08, Vitaly Lifshits wrote:
> This is a partial revert to commit 76a0a3f9cc2f ("e1000e: fix force smbus
> during suspend flow"). That commit fixed a sporadic PHY access issue but
> introduced a regression in runtime suspend flows.
> The original issue on Meteor Lake systems was rare in terms of the
> reproduction rate and the number of the systems affected.
> 
> After the integration of commit 0a6ad4d9e169 ("e1000e: avoid failing the
> system during pm_suspend"), PHY access loss can no longer cause a
> system-level suspend failure. As it only occurs when the LAN cable is
> disconnected, and is recovered during system resume flow. Therefore, its
> functional impact is low, and the priority is given to stabilizing
> runtime suspend.
> 
> Fixes: 76a0a3f9cc2f ("e1000e: fix force smbus during suspend flow")
> Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
> ---
>   drivers/net/ethernet/intel/e1000e/ich8lan.c | 17 ++++-------------
>   1 file changed, 4 insertions(+), 13 deletions(-)
> 
Tested-by: Avigail Dahan <avigailx.dahan@intel.com>
