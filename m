Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id F1EEBC7BC4B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Nov 2025 22:38:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 80D2442A87;
	Fri, 21 Nov 2025 21:38:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cT9RT-mYpArF; Fri, 21 Nov 2025 21:38:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0196B42AAE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763761096;
	bh=f9BJdIW4Df8vaOxpxrlT82q6tUpH3OCqX1+X5OafzBA=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=7thSmREOrD6T4rR7/WEVMF1TgCe8IKAhG6N2Vp7hqjhYg6nuEuM32Uj1T+96Xev4T
	 WukdBhjfSxMPYMfavNoQt9VlyFqKEtdpVrabH74NhnYxyigWHdOeFrJwFkRZlPppBy
	 l+BHD9G9HkuTaj/neuCKR5/7wVhcfiOCkt966xP+uatai67rioyHbAbSwm3BcWTvOZ
	 yteBb9DXHjjDTCJdKY36h+cwrHeuFLrvq6YaTTBnDxwrCX9YT8ImwHlpFqqohYv+Kc
	 pQxhsh2LeTZytINV/JpbjsEXzvJlNO1pSO4G9SbzlKXkJ7WxKgwb+SA/6P9ZQlKQIo
	 8WylTXUQ2jqYQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0196B42AAE;
	Fri, 21 Nov 2025 21:38:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 0E33F1CD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Nov 2025 21:38:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E8FC840160
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Nov 2025 21:38:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id X_5y2tz1G_FQ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 Nov 2025 21:38:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 2A4814006D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2A4814006D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2A4814006D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Nov 2025 21:38:12 +0000 (UTC)
X-CSE-ConnectionGUID: yNzI227gTZWawMk+2c2/MA==
X-CSE-MsgGUID: j8Dz3EWFSNu/JaS3+syOjw==
X-IronPort-AV: E=McAfee;i="6800,10657,11620"; a="65798891"
X-IronPort-AV: E=Sophos;i="6.20,216,1758610800"; d="scan'208";a="65798891"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2025 13:38:13 -0800
X-CSE-ConnectionGUID: Gop5G0QKQeeI0TV3KhU/uw==
X-CSE-MsgGUID: M1q8gICzRgaFxMwda3ZDhA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,216,1758610800"; d="scan'208";a="222744823"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2025 13:38:12 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 21 Nov 2025 13:38:11 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 21 Nov 2025 13:38:11 -0800
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.40) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 21 Nov 2025 13:38:11 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XHS1Zuue3cThTQC2Y79vZpQL78KXVILwkURE8xeIvp120BfUeEb/PaEeXiaIHTOibo2qXsWD3ez9ULxsZem1nDgaXbi4vVeDR3UQJmo9/s3atk5zMBrcmGtLhARyquL3v7lrI24J+hWexYjBUN+48F+s4Zus6C1nrXL3bKFyu3ar2029lqLr4vmjdvxc0IgTXePJ4jTNrfrpThZH/vZwov9YZsyji5LMpbJUFjTUX9AKjn3pWszV3qHRobMtZu3wXz10Ciu9jjVi1xKzPu/X4K2hleRA+lfBTgcfeguZ/m65DIEU66O7HJ2xK04gb54BGnmWzvn25w284y7EBdEQDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=f9BJdIW4Df8vaOxpxrlT82q6tUpH3OCqX1+X5OafzBA=;
 b=JerT6AEcO/KkshfCp0NGr7Lvp7d6EpuObCzsEhs97f0GclS7v+HrZTK5wjjhGIBzvDgvlkmv/LEE6/4CfpHhxOqmMNROCk/OaghsyAMPS5Ovktpd7EUpw8tlm78yRNe5sITdG4KDoJQLVfaGwF/wS1K9DnrUKZYaim1uq4hJ3Yek2keSLDVHdSW4ot+3Gt3dr17Yqdz9AYtGmApnRtCtTMZDBkYZlg5lA6gZpZG7UbbaeIqrmk2dCAdjK9RnoEYuC/GIbeJKv6HcCv7JRj/OFqzfyblsDWwNK0CtzIAg/yrB/9sK/0QLjYb1JCFBBXw94d3TtMOFUrebBT+fS9joHg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by CY5PR11MB6186.namprd11.prod.outlook.com (2603:10b6:930:26::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.11; Fri, 21 Nov
 2025 21:38:08 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::24ab:bc69:995b:e21]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::24ab:bc69:995b:e21%6]) with mapi id 15.20.9343.009; Fri, 21 Nov 2025
 21:38:08 +0000
Message-ID: <84d7bbbd-5902-4b9d-9bc2-eb1704b81d57@intel.com>
Date: Fri, 21 Nov 2025 13:38:04 -0800
User-Agent: Mozilla Thunderbird
To: Marcin Szycik <marcin.szycik@linux.intel.com>,
 <intel-wired-lan@lists.osuosl.org>
CC: <netdev@vger.kernel.org>, Aleksandr Loktionov
 <aleksandr.loktionov@intel.com>
References: <20251118121709.122512-1-marcin.szycik@linux.intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20251118121709.122512-1-marcin.szycik@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0285.namprd04.prod.outlook.com
 (2603:10b6:303:89::20) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|CY5PR11MB6186:EE_
X-MS-Office365-Filtering-Correlation-Id: bdd0f167-6802-45fc-16a4-08de29464307
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MVljN05tVFl3UzFKaTVXcUwrQlB4MFBwMU5QcDRucUFwcVBtQlFoSGF1WkI4?=
 =?utf-8?B?UktVL1h0NFQzdmxpMkhmZWNHZWxlQkk3Y09qT1IxSlNpZHNLNW96V0ovOGl4?=
 =?utf-8?B?ZHBGQXdVekxEak1jdmR6N01BNE5jWVJUNUR0OWVGZWV2c2pLdDdZR0FnZCtM?=
 =?utf-8?B?SzJTWkF1dWlHdWZBUDJBd3FISUxXejJaaFI2bmJjQkU2L3Q0cEc3N0MxV3FR?=
 =?utf-8?B?OFRJb2gxU1VVWlZacUQxNmJvelU3bkVnOXdObHdLTEtweVpaQncrNUhGT2xm?=
 =?utf-8?B?Z0YzMmxrVUY1UTdRbHdTeHRxUFdZanhUaThDUmpLL2QvMWRJY052dmJBMG9s?=
 =?utf-8?B?Q0IySTh3OFRrS3YxSzFhUHptdHcxMDU1aTRNOWZFQzh2TEk2MnZ3Y2k0aGtW?=
 =?utf-8?B?UXd2clIxMWd3MEZqTHdxS0pMM1MyRDlSdnpIUTM5UWZMZk1nZ2NKVmZNcXUz?=
 =?utf-8?B?YVFFVTFVMWZEa0IrR3VmU3lKZXJVQ0NoUnJqaG9XSVY1WTNDUUM2UDdFT3Bj?=
 =?utf-8?B?NEFsOE5yVGQ3N0JxMU1pUU1aSGJEUVhvVjQrd2hjQ1MzeXkyZWtadkZQdkp3?=
 =?utf-8?B?NjJkR3RRYnZGODFnOHBZMnFpUnRuSmkwUDI1V3dXTmFFemlOb1BodkljTE90?=
 =?utf-8?B?b1dueGlQcnROMStkV29udGpBMWQ1TFBEYmRqOTV0VUU2a1Foc0N6VnlOTzVG?=
 =?utf-8?B?R0ppRitjSktkMVZzRDJDTjZkS2pxYVNWTVcwVytWSTJrdDZOcU4xaEVPMFZ6?=
 =?utf-8?B?bmhpQ2QzSUQ2RGFQTlhjYUdHTG1NajRDcDZtWW9URHNZTXBYaExySmdnTmM4?=
 =?utf-8?B?Y0V6ZThzZjlTSW1hTUFqTHA2Y25xVTR6Nng2N1RwTmhBVkorQzJteEhwTEJL?=
 =?utf-8?B?aWpCd0lqNGlJN3VJTlhEenM2cCtGMHJTMVJpNmVEYTN1N0VRUGV3QkV1TnQw?=
 =?utf-8?B?NS9oY3puNi9qZ2gvSjcvZWZJUXZneC90RC9ZSndWVTF5TUtpeHZ2MGdoOFRC?=
 =?utf-8?B?SnhiMzhZZXJGWUpSSXZESmRiM3RMSUN0NENnSjc0dTdCdDZVZGgwUmtLVC9U?=
 =?utf-8?B?YldmZ1FvVU96UG5xK0h1ckpVYkVLR2QveUNDRzk1bk84QjdPQUt6SlpidUFn?=
 =?utf-8?B?RXA0SW5OdThwcW9qUTlvQjIxR1IxRE45cldOc3R6bGxJTXBBeU53VjBkd0hN?=
 =?utf-8?B?NTlOejlvRlZBU2I3WWJ4OFUzOGQrMWNTb2FyNVRTUkxkaXlXMGEzN2hYMVMv?=
 =?utf-8?B?eS81UW5DNkpVTU9tS2EvdWc4RjkxSTdzUi9KYkVLa2JQRFNNMDhFOTAwMEtJ?=
 =?utf-8?B?SUxSUVVvREl3WlhNVUJrbGRVbWw4ZlVqdi9LZDBFaG8vYXZjZXIybi9QeUwr?=
 =?utf-8?B?MU45NGI1a3Q3RDJNZVZvcEhIRVNsZERnRzl3dVdEMkkyc3JQUDBmUmt3RVBL?=
 =?utf-8?B?NWpNakZsMG5nOS9rRGRRTE9NVkt3MThFUXV5dDR1WXRqWlRBY1VaWVJxT2Er?=
 =?utf-8?B?V25rWHpITXoyY1pBWDc3YWM0SXpkMm82aytLS0RKSmttUTFmekVXMllMTWhm?=
 =?utf-8?B?QlhKN2J3QUZVbXo3ZkZxOUxYTFlFaDErRGovSW5uNG5MdlRvaDJhNUhreFlK?=
 =?utf-8?B?bnVwRzBLWUN6djRnQjY5bDJpMlF2a1pTZkQvdWxya04vSGdYUjRWM2NOSW9Q?=
 =?utf-8?B?U0pzTjVVUWlHdldhbHF1MTRqajVuNDhJVk9INUIyT043cnZ4TDBoTmlvRGxY?=
 =?utf-8?B?VG8wQTloL2ZkRnhNS0k2eENZYXl0RTdFZmY1V2srR0V6bnQ3QURibjVjL3M3?=
 =?utf-8?B?RHFXY1BWN1Qwakc5Um45UFhBMm0xWGowYWZuUG5sSWdKZVdUS3h5dG9JMTJh?=
 =?utf-8?B?VHdhclRwWmIxQlRLbHRGZ0JubEZ5SzEwcGk3c0paaWFQaERhekZ1K3lMSjlC?=
 =?utf-8?Q?p4ySa8mPph56juTgmR4EDZYkL2pkLYXz?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bHY4Y08zU3NYeW8vaFRuSXJQODJmV1dmWENBc0kxNmwybE1nUHRtb3p5MEFL?=
 =?utf-8?B?Wm5SNXVXUXVsNTZZUzN5ZHVSQTd4MHFxcURPcldTTXZ3YkUyTzV3Zm1Sc1pn?=
 =?utf-8?B?MDNVREhjQlpmZGdOK1A0TzAyR2VLekZqQmJpQkpsU1BFYWpveUthSDhTWmVm?=
 =?utf-8?B?czk1WXdRVEphS0g5NUlBYjRHdFR0TCtha2VPdld0SGoxNllicEpRRVlFdXlF?=
 =?utf-8?B?SlFRVG5yN3A3UW9xNHVZS1ByUktZZloxTVlkeW1OeE8zRjVXK2JDOExMVlc5?=
 =?utf-8?B?M0lVQmdDUUFQQ0puejU5YW4zZ0lDY21nYVZWK1VTQUdvUlZqQXBJOUNBN3Jk?=
 =?utf-8?B?MGJXS2p2Y3JadTQ2cVhhRjJUaVhsK0VqNlZNSTFBeWlubGpnbWg1YkNlOG1W?=
 =?utf-8?B?Y0lnN1JhN2YyTHBkaG8vOFNKVlJJL3lidVZhY1dvTjJPWEtsNnNIMzJ3VFlM?=
 =?utf-8?B?WWpOUUx1a0JmUDVYWXNpaUkxdjkybVlBTFRud2xBa3Mrdk8wZVd6UUdENFA1?=
 =?utf-8?B?YmF2ektRbXY5SjVKWlpGT2tIZDJqSU0vMEs3Q0RIbFNLZzJJaERLMlU5RVBW?=
 =?utf-8?B?K0NhQVV3S1ZLdU9PVi85ZzZSMmhZOExUeXhBUEppL0hydHFJL2c3citocHM0?=
 =?utf-8?B?SnFpVUdYdFBsdyt4WVh4RWEwcTE2TFo2SEFJQitBdE5PcHRKTUFmLzFud3Jm?=
 =?utf-8?B?R3BhVkNFMS80Uk03d1gvdWwrazBEQ09qZ1JuZXdkQ1U3ZlJKQml3TmViaDJR?=
 =?utf-8?B?dTNuZGpIOEtFZ2VoWWh6M1VuYytSMGpiZVMzdVFEQ0ZDSjlvODlwbUVjTE1F?=
 =?utf-8?B?VzY0Z0FQaENNTHRHUVdqc0pkdWhWZUYrMjQ5ODRpOHpNZFp1UmNwandDeHNl?=
 =?utf-8?B?bURLblhXR0VNRmxIZkUyTU1TTG81WDB0emIrWG9rZ2tkNDFCcEJYVUtTcTEr?=
 =?utf-8?B?YlpBSlpEMnJkSFhHOXUwWVlMUkRvc0d5a1QxZDVVekFJR1huYTEwNE14ZDhx?=
 =?utf-8?B?a2VQWWhGUkVMZ0VydUxhRCs5WTMrN2VWWnpDWjZuQmw3bGM0VllNcDNFQ1Zj?=
 =?utf-8?B?YUh5TXJhNm9Ka2lPWTNFUDRONzd3OUZUMGpkMUZwQWlNYTlqN1R3cEtpYUgw?=
 =?utf-8?B?VUV4bnVJMEppNzdMcWppamcrMldGQVNKMkdlT1YyRHFYK0NmejRaclU1MUph?=
 =?utf-8?B?YjFJVnVlNnBCNnJUSERJN25hWkZ4UFA2aUFDOGhsL1lXMmd1cmlqTEdoRXRN?=
 =?utf-8?B?bHVoSG5XYXgwWUlURG51T1c5TWtuSnhvWjdrUGVqUjBCbVF2SFZ0MDNDdS9G?=
 =?utf-8?B?ZXI2eHNFck9tQW8wczdkQmZCY3g0UGJSMXlSYzBlelhPUENROXg3UTVZd1Zn?=
 =?utf-8?B?U1N1RHh3TGMwYnpNWm9waXJBcFhUOVpYOWhpd2JvVUQvOVVKNkkrUVRlSTZ2?=
 =?utf-8?B?MHN3REF3czRLb2E4V25lMjQ4bDRPeXpkNkdLN1pwVVN6Mzh3WVIzc1pOK0t4?=
 =?utf-8?B?aDVzdzBtblBuSDdiN1QzTC9VWGREUm5ZT1RVNDVDRE9ab0lNU2hCOXc2b3NU?=
 =?utf-8?B?cURyRmlMaWJlaTlkd2hsOGkycjJJUm9EZW5zV3VjZ05TcFRWQWs4a3lMV0V4?=
 =?utf-8?B?emZ5THFxUFpHNVg1ZUxoRnpkVFZ3N1JYRnNtaURUMmVjTDR6N2UwNHRpLzBn?=
 =?utf-8?B?Tk5VY0V3WmlCbktJUFBZYW9Xc2tBd2tRUnV6TUNOeGt5bmNmNSszeWhpQWFt?=
 =?utf-8?B?N3FrdEFvbEJuNUw2eGpxUzhzcHZVYk4yWHNuM2hQV0t0MkNKbGQ2Nk1MN2RI?=
 =?utf-8?B?c1dndUF5Wm5zSUNyK0hML3REOTZOc2tieHNjb1J1R1pCZnpPblcvUTV6TTdC?=
 =?utf-8?B?T1BWNWE5MEc3UjR5MEY0eDhpOEQ1ZThhNVFmU1VlTVpmbjREYmJuVEozb0Zk?=
 =?utf-8?B?akt5c0hCaEhXQkZXWnEyRFRDc21tMFljUUhPWG9GTnFSRTFNdHh0OWEvd2tl?=
 =?utf-8?B?ZXFsZ0VEZjJ6amx5V0tqcFowdkVJcVgvVjZzSjlTQWY1Ymo0bDlQb3NIeUpu?=
 =?utf-8?B?cmhWRGpyWm9xcVhCbWFCN3NtTGVGL3I5Nkc3aUwwNjRXWDhBbFZycE9MbkZF?=
 =?utf-8?B?NHQwcUVDZmk2cUxJVzZYYi9NalJ5Y003em9iS2FZQW5YcG93eHhlWGthNldX?=
 =?utf-8?B?R2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bdd0f167-6802-45fc-16a4-08de29464307
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Nov 2025 21:38:08.4991 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KAn9/W9yoC4fq18K2FZkoHo3OmkgSbd4Mf1eSmjnZClJ4GlpbX13Io98SXbh6RafANKnY0fGPdHzbr92D7CaKPKJncMEFqtlnwQhK+8Bxl4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6186
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763761094; x=1795297094;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=lLUdKt8EithfZjd72gz9dMFtJASw2VhLEI6zKq4kRHE=;
 b=dcgAx2bOJDJMq3XlPHGmLzjZeJkjdFjC9U3ltRSXYJtzmTby6Dc7hG1D
 7FlWWhj3KAN6dT2Rg8W3DkzD9JMIGK7ZO8rKxfqxCrSFQrdR2cmq2k4yh
 8JFX+MfGU1GAuqJrnblPwhUy7uzmvWIBu6BGISjtyN88TUeKbxDWH+r0q
 8/MVvwnpuQQk6eSB2XLVvwU7mrwaHPc8qmoeOmCuXEWgbTexI91QQHNmD
 nr+L1MkN6eDD95OB+uFbUIhPlYJP9ICBrXW/mjaq48m6CMQM4UPWBwx/i
 9uBMrBjMb9ufP1EP50pKlPqU8htYLDwKALie3lowU9OcoERzXgIky88d/
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=dcgAx2bO
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH linux-firmware] ice: update DDP LAG
 package to 1.3.2.0
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



On 11/18/2025 4:17 AM, Marcin Szycik wrote:
> Highlights of changes since 1.3.1.0:
> 
> - Add support for Intel E830 series SR-IOV Link Aggregation (LAG) in
>    active-active mode. This uses a dual-segment package with one segment
>    for E810 and one for E830, which increases package size.
> 
> Testing hints:
> - Install ice_lag package
> - Load ice driver
> - devlink dev eswitch set $PF1_PCI mode switchdev
> - ip link add $BR type bridge
> - echo 1 > /sys/class/net/$PF1/device/sriov_numvfs
> - ip link add $BOND type bond miimon 100 mode 802.3ad
> - ip link set $PF1 down
> - ip link set $PF1 master $BOND
> - ip link set $PF2 down
> - ip link set $PF2 master $BOND
> - ip link set $BOND master $BR
> - ip link set $VF1_PR master $BR
> - Configure link partner in 802.3ad bond mode
> - Verify both links in bond are transmitting/receiving VF traffic
> - Verify bond still works after pulling one of the cables
> 
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> ---
>   ...ce_lag-1.3.1.0.pkg => ice_lag-1.3.2.0.pkg} | Bin 692776 -> 1360772 bytes
>   1 file changed, 0 insertions(+), 0 deletions(-)
>   rename intel/ice/ddp-lag/{ice_lag-1.3.1.0.pkg => ice_lag-1.3.2.0.pkg} (49%)

The WHENCE file needs to be updated to reflect the new version.

> 
> diff --git a/intel/ice/ddp-lag/ice_lag-1.3.1.0.pkg b/intel/ice/ddp-lag/ice_lag-1.3.2.0.pkg
> similarity index 49%
> rename from intel/ice/ddp-lag/ice_lag-1.3.1.0.pkg
> rename to intel/ice/ddp-lag/ice_lag-1.3.2.0.pkg


