Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C94AEB38B40
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Aug 2025 23:14:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 69C2381E06;
	Wed, 27 Aug 2025 21:14:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2IwcOZVWRFWM; Wed, 27 Aug 2025 21:14:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D713081B72
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756329290;
	bh=XftpOaA2pg6gxNIRqHgkdIWKZkDkc0akSnvbN66CWlE=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=9YG/TFk81UstZHsC5i3Kjk6VHAYCx6+jK/pjaeWkhkpRYoQl2Az7H3feIEoeH2xRv
	 r27lybIAPrzs08pze2+K9s+3eeCZFmGosRXjDbq1rEA6IGvmDPf+LomejoLcKLDUGt
	 Qu5U2SMGuKFydBlsJbv7klEAZrCLdQtooRZhuHa2DqtzdCJCLNCgudGOJJwmCH/hpx
	 tqXRY4ChUSaeebPwkY0GmC7Jqoaj/iO4sAIxCA3Q57VCKKm/Cu4tILahv5tMDoaBt4
	 HpF8m6cr3kiBCvMByvJPRqyznqH7YSUZf8Pu5DnlJdAa2Ac+DgKjNJCchxHok3LQio
	 mAniSm4n3u6rw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id D713081B72;
	Wed, 27 Aug 2025 21:14:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 455B117D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Aug 2025 21:14:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2B473411D7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Aug 2025 21:14:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zafl61Cm8y_o for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Aug 2025 21:14:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 3BA7F411BC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3BA7F411BC
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3BA7F411BC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Aug 2025 21:14:48 +0000 (UTC)
X-CSE-ConnectionGUID: OccWuNhPSje0zKhybdj0Uw==
X-CSE-MsgGUID: ZPSua1e5S4OB0mRKaAGgWQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11535"; a="58521952"
X-IronPort-AV: E=Sophos;i="6.18,217,1751266800"; d="scan'208";a="58521952"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2025 14:14:48 -0700
X-CSE-ConnectionGUID: Y8xxtCcRT7uw+u9sJOEJFg==
X-CSE-MsgGUID: bRF0NRF8TKaLEeAB/sDmWA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,217,1751266800"; d="scan'208";a="200884714"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2025 14:14:48 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 27 Aug 2025 14:14:46 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Wed, 27 Aug 2025 14:14:46 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (40.107.101.62)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 27 Aug 2025 14:14:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=b6Tfl0OvQWqU1rbuUjXEgAOLpNzS1Fc9tUoV6Tp3lTXKNJSZZIyO8f7MZf/3I+IpfFxaa4/2CptTUygPO0iaG6yMFU3nyxqoAzad0NmCRCpY2ikmmgBmF/Ipo4E++Jb/eWjIgv0yIOd8wTY+7myuN/SYlsrzMAGxJXGylisYFXS4EkdG7BahbQSVhoI8F0xvrx3VxFnnD8sZ9YxlbF0UjUn8d5rAoQZ1tC7IhYGW+LoEpwBypYlUWlWF57PKCH8QhBX0Jkjf0QC/t34rA18TRzUmeHjsroFY6q22xuBfSusvJCpiK6cTJLXAUmcMDdzLSx/aqWqax4eDmGEdGFu90Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XftpOaA2pg6gxNIRqHgkdIWKZkDkc0akSnvbN66CWlE=;
 b=t0vqWyRXwEV0nO5kxQszL+WJcvP5J7o3zntvmbiq8WHdZooDzWct1lrqzDcMkynLzmuk0vjlgu9ZAiP7qIgsb3KnA4+D4ZZ3Wz1ZWrW5JID4fWJ75sXxnM0ZAtaHlDtKUf4NcAPLpkQJ47S3xoCNfOEC9QJ882NHFmgjRiZAIcQ/hM8tunLaGxfs3pb58OMqrUhJBOfEssmhXHsGzC3G9Du5mB2aVduVLcsLxo2Iv/ey3qvLcXPCIpTlY0YR54M0pEjfnC15xXlQ5sdy0+8tUnHFoQlscP28tGVcqYAW5q+GqAVPalXfwoBoRUuXPBQuKSHwOPH2bwG9P1cE0y8S4g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by CY8PR11MB6940.namprd11.prod.outlook.com (2603:10b6:930:58::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9031.24; Wed, 27 Aug
 2025 21:14:44 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::24ab:bc69:995b:e21]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::24ab:bc69:995b:e21%5]) with mapi id 15.20.9009.013; Wed, 27 Aug 2025
 21:14:43 +0000
Message-ID: <fe840844-4fcd-49bf-a613-c5a99934a347@intel.com>
Date: Wed, 27 Aug 2025 14:14:40 -0700
User-Agent: Mozilla Thunderbird
To: <mheib@redhat.com>, <intel-wired-lan@lists.osuosl.org>
CC: <przemyslawx.patynowski@intel.com>, <jiri@resnulli.us>,
 <netdev@vger.kernel.org>, <horms@kernel.org>, <jacob.e.keller@intel.com>,
 <aleksandr.loktionov@intel.com>, <przemyslaw.kitszel@intel.com>
References: <20250823094952.182181-1-mheib@redhat.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20250823094952.182181-1-mheib@redhat.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0045.namprd04.prod.outlook.com
 (2603:10b6:303:6a::20) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|CY8PR11MB6940:EE_
X-MS-Office365-Filtering-Correlation-Id: 88f43826-89ff-4ca1-e1c0-08dde5aebe51
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dEFiZnNjM0Q5NlpuRHVQKytnZU5Cdis2RUlPb2hQamtoTlBVcURDYTU2U3J4?=
 =?utf-8?B?SnlTdXpIVDloWjFRZy9xQmdWdExJcGJ2U3EvTDMvUzdGS2VRd3M2WS9nNGpU?=
 =?utf-8?B?THlIc0I5YWM5Z25tVVJudklBRlRkbm5ocFdxVURjOTNLbit2NDNubi9qVEs1?=
 =?utf-8?B?dklTUjJJcnNnR1k1NVVBM0hKYk83VW5KU0lGZkxIZzZ0RmxvaEVjRVE2UVps?=
 =?utf-8?B?eGxraFd5dURCTGV4L1dSZDRLOEZrcHFNY0x2OEtvQ1p5Vm5sSDQyWXZLVjhx?=
 =?utf-8?B?clZoUHdpUEhiZ1U2ZS9rbnpGQ2kwdDQzbWJtUmxjRk5RaUJKTWpHSnkyM09C?=
 =?utf-8?B?VDZkdGN2RlAvakt3YWIwQXo4WW1BejBQbkNmLzFqemRUQ0lNNG1oQ3d5dlJo?=
 =?utf-8?B?clVqMXB6WldCRUFJQ0lBOEZRS0k4Slo3dDU2dTErcm5HcUhRRXkxUUlCcHA1?=
 =?utf-8?B?WnhpMExqdWNzVHFVelowdGVhcUhnQzEzSVVpa081SmxOMm9nL3RJK2o4Qzdh?=
 =?utf-8?B?Sk44N1hhY3lkRXh0VEtLK3AzK3M5WTljZTgvaGxqTWVsaEp5Z0lIRitvWVcz?=
 =?utf-8?B?OUpUU2hKTCtweDBteGNETkRnSWFjbmFGTXpaalBkQ2I2SmhNYkhtbGZlZ2t0?=
 =?utf-8?B?bDdLSjJ5eVpoOEhndFN5elU0dGY5WWlNYTRON3NvNDJ1RWJnSDRvQmNDTUxI?=
 =?utf-8?B?cVN5OFFQQlZXa0xlVkpZY1lZcStkc240a0FWajFkOGp5VUlaMnRVTHNGcXBT?=
 =?utf-8?B?bE1kK2hZUTJKUjMyc21BY2FxNnVnSUpLZW9SRHA5VnFnY0hHN2ZDYjVQMGI0?=
 =?utf-8?B?d0hnTUtCSHJ4ZzVJYyttdDRqTjM5OVAzei96RHJkaDdYVytqdTdqeGhvNnhm?=
 =?utf-8?B?U05ycVVjblNGM3gwZnlsMS9IUk5zZG8wL1hSNitJano5clNCaDdBemVFVXRq?=
 =?utf-8?B?b0o5WWE5OFRiekhCSDNQR0I0WHhleTZvTXJHR3lpVHpYVHM5UU1ad1pRUGha?=
 =?utf-8?B?UU52ZWdoZ3g0OUt5N0MwV2xUL3VnRHBVSGw3Y0pqRGRkam5jK0RianpGTmFT?=
 =?utf-8?B?TkNuQk04cVZxNHVsMm10UnVmQlgzeGVzWCt1UFNaUGczV1g0VGhnUXVnRVFz?=
 =?utf-8?B?N2cyUGN0R2dIdEllL2FYTitOcU5Vclo3WVJ6VGFFaHNWVHN0bVJFWXZ3OTB2?=
 =?utf-8?B?VWpib2VDNWZZSnZnRktFanlSdHg4WmV1ZU1Jd2k2clh2K3VWZW5SMzN4NjQ3?=
 =?utf-8?B?aWh3cm1xZ0xJTTdrNk05VmxlZTllc25pbkJlZ0dodHV6NW9EOGV4V0VtVTl4?=
 =?utf-8?B?YmpISDdXQnRwRSswcWlmZmVZc0Zwei9TelliQkxOTmNjd1d6RllNWW9wYVdr?=
 =?utf-8?B?SnJ0bFlCdmh0bmVpUFZBcWEwVTE5OGJMUHVnWDgyT1cwVEl2YjRxbXdTWldi?=
 =?utf-8?B?YWZoaVRuc2U2OTVINW00QUU5SnloKzBOU0JnRnFjUjFMWUZUaUpGdzhVVUxo?=
 =?utf-8?B?ZGRsbHlqVnhHVkh3MkFRSWVmcE5mTmh2bzd5ZkEzRk1WRm05dW1kNy9BUUxo?=
 =?utf-8?B?U2ZWanExVmVGREl2YVdnTUZjdHd4b0Y2RkZlWXdIbnRqcEM0alluZ3B5L1hy?=
 =?utf-8?B?S2JWaTNjWHYyQ0k2QXh1K2hseklTbjVYTFNhQVBPZVo2R3c1aUYzMjhaVEtN?=
 =?utf-8?B?YnV5NldLS0ZjSE5RR0lHVm1yUnFhNkpLNkNHY1FURUg5cldQVlJBU29JaVh0?=
 =?utf-8?B?V3dQTmY0eWczMDlHVVluQXF2L3lEOWFpV0tNRExuU0R6QlpIYlNFNlRTV2xM?=
 =?utf-8?B?NytCbFlyNEUzZU15ZHArWVpDMVdjbjlGYTM2cGRJa2cwckt1S0FRUnNZdnNS?=
 =?utf-8?B?WFZBV1pIRUVQbXk5K01teDFJTXpnUkVzM1pEN1lqODFzalNpMndxLzlDQXVK?=
 =?utf-8?Q?JMbIB+mlnU4=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bFNSamdCY3hHWnJtYXhRbTd6bmNpODlkV21CSUpwTEFleEpGVGhPUkdPbk92?=
 =?utf-8?B?eEU1eDZxWTJaTXVldTRFZno3ZnZOZGc5UHZIc21YVHZ3MTZRUEdSTVZSaTRr?=
 =?utf-8?B?ZC9xQTd6MktBV3RJVHIzRG1oMGNvSTFidStQWTh6aDYvUEVSUHpiSkg5QlNF?=
 =?utf-8?B?Qm1rd3NMNWxUWmRXSjFxb2NqTzdZOFZDQlBrSFdTclEyRDMvYlo2TVRnNnVa?=
 =?utf-8?B?c3Z0SmRxWU1weDNZckRqZ1pObFBVTUVpQ1pqRVhGSm5meTgrR1NBbk5KVFJM?=
 =?utf-8?B?Yys1L01XMTJPWS9mNkttak42UzE2cHlmUUFKRWZ0SnNjcW1qTUI0RE9iU1ZK?=
 =?utf-8?B?WjRIUHE2RnJqMDNNQit6cEhBUlBKYVhIRWRhQm80amJWZS9CMWx5Yk9vVUdK?=
 =?utf-8?B?NUNtTFVRQjN5UEIwczNHMFJid3RTNUNFVGYxNEYvKzZiMzZHMGFTZGpoTnFi?=
 =?utf-8?B?RVJPVUsrSnhRcEg5WUxMREJ0YmNTODNBeXplMTdSRURHL1JkVko4NnVBSlI2?=
 =?utf-8?B?cU5rZHlLRUJhSWtBbERPMzFUZHM1MFFtZHlkeGlUZ2F3L3pFd1hWVzVQNWZS?=
 =?utf-8?B?Z2dTVm9BVUVHZEFBOE5QK0Z5M1V4YXVrVUhOL2VjNGFTL2V4bWNjcHdyRkhH?=
 =?utf-8?B?Mk5ubEhxa0JHbXdnN2NYRzBNUk5UeVpHSlFVVmsycmtoK3FYZ1VxdjdpZ3No?=
 =?utf-8?B?SThPNU9aSWo0dlJKd3NPT0w3NWlVTDFuRWN2SHUrampvOXl5alIvQzRrOVJK?=
 =?utf-8?B?QWNPL3FlNmJQSHNZUzd4aVpFSUFGN2NXT0gzQlhOYytXbXdLMkJMb3BNa004?=
 =?utf-8?B?SWluU09qR3kyRjNJSjJXaVc4Uk5rOEI2YnA2YnhSZzNXbnQ5TUptWFB1Y0ZZ?=
 =?utf-8?B?M1pRaFU0TzFadUpJVUZpVXBDSXAwREQwZjYzMTMwT0dWT0F4N1lpQ2xhbmVv?=
 =?utf-8?B?T2kwR09WZFhvRkZyb2FmRFVpbENuci83UC9hcmlldGdLNVdmY0F2OXdtYWM2?=
 =?utf-8?B?NVlJSDRQeGxCWWF4ZzVMSm56SjBTODl0eU04TkJZczZoK2pKQitIeGQ2T2RM?=
 =?utf-8?B?OEExVlh2NjdLZm5IbzlNZ3RwMGd4Q0tTZVVXMFB4ZWRGN1lPbkc5eVlCTDlN?=
 =?utf-8?B?Vm1yQ1Zidmw4cW1TUHFYSldUUVdzaEE1VFQ2TmttSVpHcGM1R2M2ajVJbFk3?=
 =?utf-8?B?TlR1N2VLMkZrbElWeEJtVDB6Q1BrdEpzZkVQVkllM0dGNDhJV3Q0cUtyaHAv?=
 =?utf-8?B?SXc0dmNta1UvTjFxc2xCSWNBemkwQXB3NUZyZzVvRkcrUnplaVpCRk5WbXdn?=
 =?utf-8?B?dXNLajBZNG9vT1pabWpKUkVTSFVjMUZmeWFmRDhUSE5NakxpSVl6TUp5TFFr?=
 =?utf-8?B?aGc4VGt4UjBMbVJCN1hXbXRmZFhDZUYwMEtLd0hUcC9OckExNFRoS09MT0NZ?=
 =?utf-8?B?NXFTNDN5cGIwYkNIS1JMVHRkMThBYlZ6QzVEZnczamJ0elMzb1B0ajFnZWFq?=
 =?utf-8?B?OFgrellBZjNwL1FoTzFkbjlJNmQ1WlRJQ3F1b2VPVVkvRlo2alEzZ3BwZVZh?=
 =?utf-8?B?eStDSFY0VWJtcUx4TkxDdUhDR21pcTlpUTB3QndPSi9qbjIvellhWGlGZDlQ?=
 =?utf-8?B?Nk5sZ0hPV3RRcmFvZmZlcTR0U25SME14S0VkekVoUTluc29NNHpGdHkxMkpB?=
 =?utf-8?B?MVhtN2ZYWlRRY0UzTnZrdGh6UkxKb3V6cHVkNjhZZmUrZDk1aWcxMVRiOWsz?=
 =?utf-8?B?NERjWkJ1RXAyUmt5R0x1VFRNQkdmVmo3MU9tNlkvM3ZtTGgreElsSGdlejZo?=
 =?utf-8?B?THhlK3duK1VsUE5WMUM5T2lzZ2U2RzZtc2psajgvRnV0RHZwb2VubjYwUDlU?=
 =?utf-8?B?SW9Uc0RUQnJ2a0dqUXY2UTR1RWFnTGhmT2Y5YzlJSW9XTE9YUGFLai9ENkRV?=
 =?utf-8?B?Q3U4Q0VhMGxqcWh5RXpCbVpmTmVuOWQwNEEwK3lrYTR3RlF6UDBMMEUvcU01?=
 =?utf-8?B?NlozbEg3amxNSjRZUDFPNXhzNFNlaHpZMEJsTjVyeTFqV3p6K1NRcllxSGMy?=
 =?utf-8?B?SnJpSmladzRWeW5SbnAyQmNnaFhaRXRtL2d4Z2c1a284QWIxZzFDcWs1dWlv?=
 =?utf-8?B?Q0k1djM5c21DYUs0Z1J2dkU2cjlIaUtuTThKNy9PUUxEMVA4dytRRFdIaXVu?=
 =?utf-8?B?bVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 88f43826-89ff-4ca1-e1c0-08dde5aebe51
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Aug 2025 21:14:43.8236 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YVtgbQjnwaY2LIe5Ae3Lfv8wWF5kk9FxIiBwk2yyHFOYfQxJOzXa8NMmQROFo6+jOwGJeHWHVfeZF2KuMHrrV6snmfmw8LLXdmaRFk+UjDc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6940
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756329288; x=1787865288;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=uPRTPPb+45TdVvBNkf5NAdAvWkPtnX0l4+dkMVkn4u4=;
 b=Epmz4gLXmCVRX0K+5fH2LpfPh+yWQDtm727/kuu44lccjh3OMPJpR+8M
 yk5HIpV4YG/XOqLOKR9VX0CBU+3bjnfp0lKh0hSPE/ZuNdoKNj+8OVp8p
 AykDbE/32mO7ffS7qF6abIQQczGrygTtTARSh6Sk2gdaWet7I5S63KNqd
 jlUrbx2lExKechHdr8O2qKN3XzkxOdRHA/8ERLaB4kh5eCwl5vBtkQy+Y
 tOgRWwxnprXgSwaukr3AnBDWsS9yJJjJLkUqrUYf3t7xssx6cj5Ym/PXd
 GVCdadpMZleBEkyOLqTFAZ8BZCQ3GUp/CK9tKK2H+1SHalXnGQ9bQJP66
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Epmz4gLX
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2] i40e: add devlink param to
 control VF MAC address limit
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



On 8/23/2025 2:49 AM, mheib@redhat.com wrote:
> From: Mohammad Heib <mheib@redhat.com>
> 
> This patch introduces a new devlink runtime parameter that controls
> the maximum number of MAC filters allowed per VF.
> 
> The parameter is an integer value. If set to a non-zero number, it is
> used as a strict per-VF cap. If left at zero, the driver falls back to
> the default limit calculated from the number of allocated VFs and
> ports.
> 
> This makes the limit policy explicit and configurable by user space,
> instead of being only driver internal logic.
> 
> Example command to enable per-vf mac limit:
>   - devlink dev param set pci/0000:3b:00.0 name max_mac_per_vf \
> 	value 12 \
> 	cmode runtime
> 
> - Previous discussion about this change:
>    https://lore.kernel.org/netdev/20250805134042.2604897-1-dhill@redhat.com
> 
> Fixes: cfb1d572c986 ("i40e: Add ensurance of MacVlan resources for every trusted VF")
> Signed-off-by: Mohammad Heib <mheib@redhat.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
>   Documentation/networking/devlink/i40e.rst     | 22 ++++++++
>   drivers/net/ethernet/intel/i40e/i40e.h        |  4 ++
>   .../net/ethernet/intel/i40e/i40e_devlink.c    | 56 ++++++++++++++++++-
>   .../ethernet/intel/i40e/i40e_virtchnl_pf.c    | 25 +++++----
>   4 files changed, 95 insertions(+), 12 deletions(-)
> 
> diff --git a/Documentation/networking/devlink/i40e.rst b/Documentation/networking/devlink/i40e.rst
> index d3cb5bb5197e..f8d5b00bb51d 100644
> --- a/Documentation/networking/devlink/i40e.rst
> +++ b/Documentation/networking/devlink/i40e.rst
> @@ -7,6 +7,28 @@ i40e devlink support
>   This document describes the devlink features implemented by the ``i40e``
>   device driver.
>   
> +Parameters
> +==========
> +
> +.. list-table:: Driver specific parameters implemented
> +    :widths: 5 5 90
> +
> +    * - Name
> +      - Mode
> +      - Description
> +    * - ``max_mac_per_vf``
> +      - runtime
> +      - Controls the maximum number of MAC addresses a VF can use on i40e devices.

Are you intending for this to be for all VFs or only trusted? The 
changes look to be only for trusted VFs, but it's not clear to me from 
the documentation/comments.

> +        By default (``0``), the driver enforces its internally calculated per-VF
> +        MAC filter limit, which is based on the number of allocated VFS.
> +
> +        If set to a non-zero value, this parameter acts as a strict cap:
> +        the driver enforces the maximum of the user-provided value and ignore
> +        internally calculated limit.

The filters are a shared resource. This will allow over-subscription; 
other VFs could be starved
of filters due to this. Since the user/PF is controlling, this is 
probably ok but should be documented. Also, since these are shared, this 
value acts as a theoretical max value, the hardware will start returning 
errors when its limit are reached.

> +        The default value is ``0``.
> +
>   Info versions
>   =============
>   
> diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
> index 801a57a925da..d2d03db2acec 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e.h
> +++ b/drivers/net/ethernet/intel/i40e/i40e.h
> @@ -574,6 +574,10 @@ struct i40e_pf {
>   	struct i40e_vf *vf;
>   	int num_alloc_vfs;	/* actual number of VFs allocated */
>   	u32 vf_aq_requests;
> +	/* If set to non-zero, the device uses this value
> +	 * as maximum number of MAC filters per VF.
> +	 */
> +	u32 max_mac_per_vf;
>   	u32 arq_overflows;	/* Not fatal, possibly indicative of problems */
>   	struct ratelimit_state mdd_message_rate_limit;
>   	/* DCBx/DCBNL capability for PF that indicates
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_devlink.c b/drivers/net/ethernet/intel/i40e/i40e_devlink.c
> index cc4e9e2addb7..8532e40b5c7d 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_devlink.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_devlink.c
> @@ -5,6 +5,42 @@
>   #include "i40e.h"
>   #include "i40e_devlink.h"
>   
> +static int i40e_max_mac_per_vf_set(struct devlink *devlink,
> +				   u32 id,
> +				   struct devlink_param_gset_ctx *ctx,
> +				   struct netlink_ext_ack *extack)
> +{
> +	struct i40e_pf *pf = devlink_priv(devlink);
> +
> +	pf->max_mac_per_vf = ctx->val.vu32;
> +	return 0;
> +}
> +
> +static int i40e_max_mac_per_vf_get(struct devlink *devlink,
> +				   u32 id,
> +				   struct devlink_param_gset_ctx *ctx)
> +{
> +	struct i40e_pf *pf = devlink_priv(devlink);
> +
> +	ctx->val.vu32 = pf->max_mac_per_vf;
> +	return 0;
> +}
> +
> +enum i40e_dl_param_id {
> +	I40E_DEVLINK_PARAM_ID_BASE = DEVLINK_PARAM_GENERIC_ID_MAX,
> +	I40E_DEVLINK_PARAM_ID_MAX_MAC_PER_VF,
> +};
> +
> +static const struct devlink_param i40e_dl_params[] = {
> +	DEVLINK_PARAM_DRIVER(I40E_DEVLINK_PARAM_ID_MAX_MAC_PER_VF,
> +			     "max_mac_per_vf",
> +			     DEVLINK_PARAM_TYPE_U32,
> +			     BIT(DEVLINK_PARAM_CMODE_RUNTIME),
> +			     i40e_max_mac_per_vf_get,
> +			     i40e_max_mac_per_vf_set,
> +			     NULL),
> +};
> +
>   static void i40e_info_get_dsn(struct i40e_pf *pf, char *buf, size_t len)
>   {
>   	u8 dsn[8];
> @@ -165,7 +201,19 @@ void i40e_free_pf(struct i40e_pf *pf)
>    **/
>   void i40e_devlink_register(struct i40e_pf *pf)
>   {
> -	devlink_register(priv_to_devlink(pf));
> +	int err;

RCT; declarations should order from longest to shortest.

> +	struct devlink *dl = priv_to_devlink(pf);
> +	struct device *dev = &pf->pdev->dev;
> +
> +	err = devlink_params_register(dl, i40e_dl_params,
> +				      ARRAY_SIZE(i40e_dl_params));
> +	if (err) {
> +		dev_err(dev,
> +			"devlink params register failed with error %d", err);
> +	}

Braces not needed here.

Thanks,
Tony

