Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id CC1D1879059
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Mar 2024 10:06:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 77205812E6;
	Tue, 12 Mar 2024 09:06:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id b9pCs0JHWiQ1; Tue, 12 Mar 2024 09:06:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8C94E812B4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1710234366;
	bh=6thv200bb3hslx9m1yA4ebx64MwV3YaDwVsv2WHOyTU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=TcMq52/YQCK0j0mEyTFIhdjP0eOmYRvlhIOzLns8CA9g1H9KjsuAK2VIJ/ua5Y8rm
	 5R+WJRzi0FUfb9usD0R6UvNgc5Bltwz4FGXbC3LRdbdfGN+ehl+qDNrWqTC5mqvSre
	 uUhUN00q4YT+LCx6rMOqwSE5Vi9Mm2AQqjQTwUUp35yT0cmZyiG9BPbvsk0iPMwwtR
	 9erUey/ZiTT8/a0PDgiIAdcIBycdQ3uOEMcgpjjqqK83+yaH2WzY/Ac+A9c5SSMxRq
	 RrDQqSxEfw2QAeHLLte3BAoEppJpDN64FVmkrkbbCjDMadjLTVlVSYbyR0ES9qxj4g
	 rPcRjOE5RoWFw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8C94E812B4;
	Tue, 12 Mar 2024 09:06:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E02C71BF286
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Mar 2024 09:06:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D95B7812B7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Mar 2024 09:06:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pc4nEOXiOb5L for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Mar 2024 09:06:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 96450812B4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 96450812B4
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 96450812B4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Mar 2024 09:06:02 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11010"; a="16370763"
X-IronPort-AV: E=Sophos;i="6.07,119,1708416000"; d="scan'208";a="16370763"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2024 02:06:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,118,1708416000"; d="scan'208";a="34651033"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Mar 2024 02:06:00 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 12 Mar 2024 02:05:59 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 12 Mar 2024 02:05:59 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 12 Mar 2024 02:05:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ltFciWvayI8qfCzygIa9G9R7ebpPSn/be7F75kY1/aPS9ByhV/4YaGAxh3ArC13ZTkADFu+ZcT2DDNYZzv0dj+DU9PVsSKEfSXH4XBJGCXzVpn+VnZTRe9XYQv62/wOt8tJEX1G7n4kAYWDwqseoXE72MaRk+373CPvzciaah9PiqM2hbpBHt9euoez7USQ1rxv0j5f4ioWftJBTxqleRNhfGO6BgpVuRH2gu2ziQLXn3v420nca56fzjyhboZ5IyXlABTzKLcxQqDf2lY9plxr6tDS2Txhc9zWKjEtthW0E+9P4/S27RJoT6fgfFjQLw5OrelxOPHnDrVLneiD76Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6thv200bb3hslx9m1yA4ebx64MwV3YaDwVsv2WHOyTU=;
 b=aJvPd2fme5hgRxrnJkanH7XFJp4AU6jvSsaAZXEZ0ZbZb9b8WMsmXKfEtAasJVgQ6dScMayMvyeRbuvoWHmknFIBtZS8H7zDBgM6F1J8b86/49y/mJ7OhF4LKzs3TyY1AROGDJ4deZGIZj7ARskmtJDnGKLnv5VHpyBEPPN9AOM8cwMqJjTjduMY33s7DHRBs+dlOol98lAQ3K35so/SXG7sARtseoz8bilPPCEc3zPui+WLB8daEa+/hTlfEoR3svXU7YRmMS/w87sxz5qzReKJTz39xIjSVr8KjVC2Ua0LwSKxe2xW4jL0v4pVqZIg7wCxaZHHC7mXEI1DRDZ4Iw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by SJ2PR11MB8587.namprd11.prod.outlook.com (2603:10b6:a03:568::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.17; Tue, 12 Mar
 2024 09:05:53 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::618b:b1ee:1f99:76ea]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::618b:b1ee:1f99:76ea%5]) with mapi id 15.20.7386.015; Tue, 12 Mar 2024
 09:05:53 +0000
Message-ID: <14cffa6d-0bd8-4979-96c6-4d3482335517@intel.com>
Date: Tue, 12 Mar 2024 10:05:47 +0100
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 <intel-wired-lan@lists.osuosl.org>, <anthony.l.nguyen@intel.com>
References: <20240312081343.24311-1-aleksandr.loktionov@intel.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <20240312081343.24311-1-aleksandr.loktionov@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR4P281CA0399.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:cf::8) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|SJ2PR11MB8587:EE_
X-MS-Office365-Filtering-Correlation-Id: f3df09b9-fef8-4b15-7269-08dc42739eb0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: qphmhEDnS+tjM1vCREu+bE25pS0O6I0PyzCjnloCbVx3gf9zi62yQs6Z3aKXImx01X7IrpebRizomwIR4LZdYaS6VTGZphGcA9CLZx53faDbfn3Rz9gd1r2EyBWfwuLE5MdmAeYKv5UJWwqRmGXYkKsr3/kLjuk743qc/No1Hyv4/1RAp3HB9BNu5i1JxcEg4zpIWtRG1AbDkZboEI6jgyJjjfRViyUiy/ByhZKwJTTx5csyQpkFZL4vKraN0uw2RGwbScuZgXolhKfPRPWt4w240G0OBE70YqgYq4BsUn0pmy1gqKgZglFaz/2TWJy4pwvMlc/W475PqNw688UPqoHslEaZwoNVYCtwUoAQFrGkm9sHT39tqaC1YWJn11dtpZeINGWtvE51DFSLbgP7OEO8IDEUhP8mL/TF63wXoaPfZtzhjVr34vqAtJyxobr+03x7xxG3lLn8TYgmieg0+gCWEKpIiS/oVglrMin3WWwHDH7mPfwrE8xAxjI/WKPC8M6do7KvaetEgG53BYUuCFrHr+nZEmsZ44/nFPB5E+LDm3XLsS/oXbqdYzk86e5fu4tE85WraMsmrYHn2iBCP4w/g+ZN+YQ45Wjsmzl+tQrTeJBHrVCXeUiVnfQ4lVA+g/B5RU+b2ZY6qlcJQHs3mP1FZkl8zIGvef3x8xvK31I=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Sy9qODF5TlVFZlNjRkhJTEVacWNPOGdyL2VZR2Y2Rld1UStzWXJNVy91ajBR?=
 =?utf-8?B?Y2VpYzc2TTVtdVA1ZExkVWkrRk9HeWFBd2VIN21kUVlMRGdLVmkxOWE1dWw4?=
 =?utf-8?B?WlB3cWw2U29xQW9uZjBlWEFEdzJKR0dqc2hYL3Bwbk5TeS9kTSszYXlMRDBV?=
 =?utf-8?B?QWZrTzI1UFdxYVcxOERzTTJjNnBtQnd5WjVaYUQ5aTcxYk5oN0tCbkFoVGQv?=
 =?utf-8?B?cFhsSUhxWFJuVGIvOE9JSGZwa2Ezb296b1o0SmpwTlYvZFVsYk9ZeGNLWDU4?=
 =?utf-8?B?dW83bXVub2pTdW8zUkRlWVJhV2ViYWVwdlJjWFIyYlNPcHFsVmI2aHNVcE1p?=
 =?utf-8?B?SG4yTVR0dm5pbWg5ZGpHRE9nWjFJV2JqWUYxa0ViRnVhYWJmT2huZjYwQTVk?=
 =?utf-8?B?UEZZM0hSNTRDR1ZKQTZZNUduZjlGZ2c5OVgvaUd4eW51S1FqVFNuMys3MjQ3?=
 =?utf-8?B?blpXTlRYcGpsamE3ZTdUeHVpMUlxenFWZld1RlZzSFFjU0xsVkhheGxSaXhq?=
 =?utf-8?B?Y3M0OFVyRUJKSUVjVjdieElxaXJTbGhUa01GV1BueEdIVXJlem5uaXBKbVBh?=
 =?utf-8?B?V3ZlRW5hWk5mYzN6K0luNEgrbTB5bVgwN2VZcW5BS0xNa1B4T1pVbHp5c3Vk?=
 =?utf-8?B?RmtwdVhiSHNwQXk3ZE5TTEFvQmtRVlEvTXJ5cU5DY0lxMUhJc08zU25TdTV5?=
 =?utf-8?B?b2JsR2xkWC9OcUs0VEM5enBxa0NCVElTQUZxVmNqREltSlFGVlYraUVGSzl3?=
 =?utf-8?B?MlM5ZmJUSnhLeVRDazV2Nk9YZW9TMDMrRFpGMElncGJFN3hjbFVld3NwdnJu?=
 =?utf-8?B?a0JLc3JpNGRNUnlLSnh5L3JHM2svbWM1aTlQbFA1UU9QaWF4a21NYkhlVVd1?=
 =?utf-8?B?Y2VmUUVoVFhsR3o3ekJLbDIyUFVlNktYdi9PV1hzVDhKZWEySUF1cy9LRFpw?=
 =?utf-8?B?dldSRy9idkhpcVcvbGFDVnhRcmdrYklZWGV4dm9UQnk5aGprM01zdVZYZUU3?=
 =?utf-8?B?RDZPQVJLSnVHckhCWkVZRER5NFUyMFkvanZLVFgxVEpKemM3WExuZjRqbVR1?=
 =?utf-8?B?OXB6YzlKME80ZVMzeEwyQVJRODNUbEtWNkNCNm5tUXdRSThDZUdLbHRoekxY?=
 =?utf-8?B?dGJmeWxXM0VZZkQramxQT0xIVzdaTGFpVlcyanhDUWhwYjBLRUNkMkFLeFhP?=
 =?utf-8?B?TmU1UVZLb2JvVEp2clVWdFVod3VLdWdWM3VLYThZMDRlaXl5UHFybVVLcVRr?=
 =?utf-8?B?dW9vOHJWMitaelJpVllTNGFxamN0R3JCbGJzSUE0VXBkYlpVME5OVHZ5dzY1?=
 =?utf-8?B?bjJZT0xraGQyaitIbnBGVHMxMGVRTkJFUDZYdEsyQ1RhNVR2d0NJb05DOUJG?=
 =?utf-8?B?S3NPQ3l4S3pxNTFhRkE3Yk1kZ2RUdWtaS09vcmVubkEwQ0w3a0s3TTRtK0lx?=
 =?utf-8?B?cVowVFEwOG5zM0VnZXNmRWhkY0NtbDlJdGpYd2JEOVo0YnNWMERmcGthNWF4?=
 =?utf-8?B?U2t6QktnQ2dGcDZ5a3U5QUJaV1FMdUw3Qmc0Y0pVK2dCVVhOYmhTSUJaS3l5?=
 =?utf-8?B?THpjcFB2OEVPNmtTWEd1QjI3ZnRkcmlzb0hNOFdqWExQRU5qeWs0TXFidFJy?=
 =?utf-8?B?MzdHMmRhT3Urd29HUnRzMFlqVm9Ja2plbnJjVDBYdmY4SElFbjIzMEd3NXRZ?=
 =?utf-8?B?OUdXTTJaQWlsenJ3REtYbzdwZUVUdnZWcHhHY2tzL0ZISElwRS9DS3ZGU0pE?=
 =?utf-8?B?b3l1N1c5Q3ZDYi9PYlE5VlpJaFZEeFNERHlQcWQxWW9sQlIvR09oSnBBbVNt?=
 =?utf-8?B?NjRlUE1uM1dWZU4vSnNzcFMzOWhQbDFHemNpc2c2THpsR0JSRTBJVHFSYWFW?=
 =?utf-8?B?SFAvMVJ0MmpKSWFQUXJzRzRKTEtYN3V5TFMzVzZCanlSSTd2bDFNdWNTT0kz?=
 =?utf-8?B?YWhTUUUweENBNjZKNVNQeDBZanRpc2Qza2k3UTdyM0ZpV0dVcEVFdDNXQVU3?=
 =?utf-8?B?V0MzZjhYTGlzVXdwOHl1Wkp6WndLNjYzckRHRkp3MUlQQlVReG9PcW9kVTI5?=
 =?utf-8?B?ZHpMazBWblFxUXF2dWE1a1VjbEh1MGlJUmJBVzVJZENmaHRQL3V1UDh4U2JZ?=
 =?utf-8?B?TkI5elYxc01VUjVwUm00blVMWHJsdk9hZzB2OGI3ZkhhNUhXb1M2S01INDNp?=
 =?utf-8?Q?qpMHbb3C2sygZOvWYMdZZqM=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f3df09b9-fef8-4b15-7269-08dc42739eb0
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Mar 2024 09:05:53.2484 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wJAMdY+IWX/jJkdLFPwah5GH41eMRDutxv49/SVccjopEM1tzLP2H8hwRDFttxlrnbDxRQpaayxJ86/Q+UZWUAzaNTXECHv1kH8AugWT/aQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8587
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710234364; x=1741770364;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=65UqIdP2nyI9L1atajr7Y4xTXTskvk+LaYDhfXgkpkc=;
 b=f/Zv0VYo72fSi3k3KrBluaDhb5ird+vFonbnWKgri+J6qqbvXrB+fwp0
 ROn4iUrtwJ3+8pZTaAwipt78Xuf4DWaLcawOq6BFnGSRqVUbManfO4gBG
 loxMwHmy+TJp1mHd/Ox3LkvTze3Y4LMjsjXFGiyVB+WYnb77AhtXWGGeK
 QN+iA+HJRh8yc0Ivdw8YlrFuxAVYBuxMlbu+abf6z9gMdfHTVkG3K969P
 VcsEtda15N5TtaB0m4pdSoiVGJrCEw4/Jag4Oy9xRbD+1NXALnSTiuvXI
 7fJRySRJZQdEAipMMkuk5OFoSiRtUNmBllRKfT50dcsKVfFYsXgUwbC9h
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=f/Zv0VYo
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] i40e: fix
 i40e_count_filters() to count only active/new filters
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
Cc: netdev@vger.kernel.org,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 3/12/24 09:13, Aleksandr Loktionov wrote:
> Fix counter to be bumped only for new or active filters.
> 
> Fixes: 621650cabee5 ("i40e: Refactoring VF MAC filters counting to make more reliable")
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> ---
>   drivers/net/ethernet/intel/i40e/i40e_main.c | 7 +++++--
>   1 file changed, 5 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index 89a3401..6010a49 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -1257,8 +1257,11 @@ int i40e_count_filters(struct i40e_vsi *vsi)
>   	int bkt;
>   	int cnt = 0;
>   
> -	hash_for_each_safe(vsi->mac_filter_hash, bkt, h, f, hlist)
> -		++cnt;
> +	hash_for_each_safe(vsi->mac_filter_hash, bkt, h, f, hlist) {
> +		if (f->state == I40E_FILTER_NEW ||
> +		    f->state == I40E_FILTER_ACTIVE)
> +			++cnt;
> +	}
>   
>   	return cnt;
>   }

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
