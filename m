Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5705A88D66E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Mar 2024 07:33:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6C8964157B;
	Wed, 27 Mar 2024 06:33:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VebvLZHxeNif; Wed, 27 Mar 2024 06:33:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 34B1F41571
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711521229;
	bh=yafXPHPv0EmkPr8NCn0MO4UIQMJg/5a1LlcVeawHe9o=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=e6nYBX7OGH+xxRLf+NGkvFzmY3AHJEgwnMfxFbvblpt67b1Xsq97avFj/2KD2bf8n
	 NFal+y2SeByAk+MxLvtv4vJac1UGGImE+nHq3y7riMqtzrSAZfPKjYekazk9pGfEFw
	 fCe8E7yx8RxZ2YP+FtHsXEtRsxhlJYTtCz0+npdSZ/9vwAPxyNGunIav+1se5Kwzbz
	 9BuwymWrsIeYRzzvSBMEgUESB3qc5IXThOzjSEgbegX69qn2ABMmJEExKIRQ0UWcNS
	 UKY3JrpwBkmDoXjPrGKzDu60SzEwtq1uk/HFqgXHfbVRSEDHbha08C3WKmSnUxrulf
	 MVknNlV4aZiCQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 34B1F41571;
	Wed, 27 Mar 2024 06:33:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D9FF91BF470
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Mar 2024 06:33:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C5F7F80F7E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Mar 2024 06:33:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2az796jEUWZG for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Mar 2024 06:33:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org B513B80F4C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B513B80F4C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B513B80F4C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Mar 2024 06:33:45 +0000 (UTC)
X-CSE-ConnectionGUID: Kv+4E7C3SP64KBueR6cFmQ==
X-CSE-MsgGUID: 4dciBZzRTUmmgrPjL8u3ZA==
X-IronPort-AV: E=McAfee;i="6600,9927,11025"; a="6466812"
X-IronPort-AV: E=Sophos;i="6.07,158,1708416000"; 
   d="scan'208";a="6466812"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2024 23:33:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,158,1708416000"; d="scan'208";a="20839168"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Mar 2024 23:33:44 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 26 Mar 2024 23:33:43 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 26 Mar 2024 23:33:43 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 26 Mar 2024 23:33:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XhNhwyYplDAzjXYAaLOdg91d6RMvQFuvjEjHesjp40C04tz08qUL/JeoIyldfCboqEyByUwJYObK5hUJk83O3H92WJZDjTdStV3d92EyumyRJTn5UwrPP4fJNpd+5mlaQdO1sSYVGbczWJaiRp+qvXMX9PUEpRNWgvdsWN1bT13e2b0dM30kelMeXHFbnCsvEDoz0EjkJr/n/q6W21EoG3hd8bkS8OPaTYAKx203ps9qzFWaee0TUD2nqa//ZqQeIUyIiqd5X9HeAg3vdnJTVLRkp/bipS4HK2VSa173tnCQDv/K8O1O3RwjMO3vI1gnE2guz4tTJRlR0xOuwMIPFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yafXPHPv0EmkPr8NCn0MO4UIQMJg/5a1LlcVeawHe9o=;
 b=WVRvo7OkzpSWxYusGOfAX5u2XmkxkzHmbu1VEPXz7y6wU1OGo46O/6MfDwQbe5stPfWOMeTNLt6tnPZWhVqfGgJrC4RFrmhreQ970MGtLz0zVHLO68RcBH65WjaJzvT/bS1kin0fLonsB23jeehv6u5SCnhMMeV5wIrMyOnUpTGO3gS+IXLsdNmFTVCTTM0ZQ3ELjfY0OZngu90HhK0M0yZhLzx2IRSrAdUerbS5SXMO46cPhBiMlbUHZ0E+T2Btp4ntyX06E0kEZqvDFsBX6Uoe01AROVFga4wsgBqExRldZRi3qP1ZEoTcEhUA5mDhqS3WJ1AyDQtfRyUDdNLe0g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by MN0PR11MB6135.namprd11.prod.outlook.com (2603:10b6:208:3c9::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.33; Wed, 27 Mar
 2024 06:33:36 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::618b:b1ee:1f99:76ea]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::618b:b1ee:1f99:76ea%5]) with mapi id 15.20.7409.031; Wed, 27 Mar 2024
 06:33:35 +0000
Message-ID: <391517f4-62f4-4eb8-9b39-4d743a8ac156@intel.com>
Date: Wed, 27 Mar 2024 07:33:31 +0100
User-Agent: Mozilla Thunderbird
To: Marcin Szycik <marcin.szycik@linux.intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20240326164455.735739-1-marcin.szycik@linux.intel.com>
Content-Language: en-US
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <20240326164455.735739-1-marcin.szycik@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: WA0P291CA0007.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1::11) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|MN0PR11MB6135:EE_
X-MS-Office365-Filtering-Correlation-Id: 7facc15f-a89e-49da-9dc8-08dc4e27d469
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: SBKkQAEi+3+xBjTybjY9yveQXwnOOI/jgtozscmHi4Q+k+T1nUr7MhRLSuhdgHWXTvgAJ+dqzbSrQD1xw8nvT9+efpJAXAPlAFsPbjdg2iuMsxAJdcagf/g8cjpFVNOA5539DiRnTckGb4IOAMSPM11ogc+kfE4pRbDmFLyA9LchdsHfHMMfIww6P/lQFgb0DXZUy+UQ2vGhuon/x6XFkr7KAhVQYfbGzqrJWt3UsRHKjxigmOQC8PEtxykqHYxGim7k+mflA2KLvuXVDPNqtGtA87Yn00isJjNNbTvMqargUboiQr/eKPkrmOjrZzmjE6UvRuRpppsB+eMpwmTxyOjhiVUfZWmZWX/zme05mBLTDINaYUW50t5er+/4Rvo9LKmLGY/tiOF3r7O7N2+Rvktslkz9PM1UJP8KP2oy6Lrm1WKuRIzS5B7K5Y8HCWz0wV0XuIaydxJdZObI1lS4r22P48ANo8a0xa4woCa5Y0oivX/vKOzYztMDm5/o8NXqsBS1PeEshXx06jolrRdsDSaB7oNdNABcBDliC5c6L7lncBwULWJB/Gr6BAzfuz2IHO4fPVAI1s2oPFm5XaAlSCLkSZuOETNmvLAyYKHJ5IY=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MElldlp5S3dvR25aWi9rM0JGQTBSakJ6eXNzSEpXK05wdWk1ZlloQ2xxdlpj?=
 =?utf-8?B?eUNrRzRQUE5vRnlhRXRwdVJwbzMxVWdWZmR4aGxuNTlJTmlwcE9VMmVoV1l1?=
 =?utf-8?B?enQweTlZZ094ZWsybm15R2dWZjB6Tk1XeTZ6QnZXUk1uVFJkaWk2dWx0VHoz?=
 =?utf-8?B?SXJBZWxLS0JiV2Q2S3k5YUlJeWdzaHkxU0V0ajdYelJOUkVJQ0RCMnV2M2l3?=
 =?utf-8?B?SHl1VjYrbW0rbXhoSTVoNDc3OHNSclprK3U1S1UrTy9lNDhZcTZkelJ4OGJj?=
 =?utf-8?B?NjRqenFTeUVvOXU1Y2RWbTh6SE5pWm5YN2lDQVZDSFQrYVNmS0RhSUlwdHJX?=
 =?utf-8?B?YmpYWFIzVWNzT1pUSzFaWTRpTGN4RXlZUEd6cnBpRER3a2JONmI4VzB1QjJu?=
 =?utf-8?B?ZGdwT0h5dk9jbzlOZ0VMd0FRMUlxU0Z1WE9PcmhtanhxQ1IzZktpSkY2NnN5?=
 =?utf-8?B?ai9QeWdwZ3h5Q1B2WVVQSjVBQ1JEZkxyRlFRMmpvd3BBbjZkS21pYWtlM05M?=
 =?utf-8?B?Tnl4bnNPc3NCUy84blpuYW44Y3NjbGVEcHhUNHVVdU0xbitqWDlBbnN6T0RF?=
 =?utf-8?B?czJteVJzYnFWbVlUNm14MDl5TFg3d3B6K0Y3bEVHakxUMERGcTVVK0hEeVV1?=
 =?utf-8?B?LzNoL0twZ1JNSnNJVUYvNWh6S092M2h0RStaSlcrd1JTeEpleVVlUG92bmlV?=
 =?utf-8?B?K0JCRnkxU3g4VlNiM05jSlZSejhBNnc2dWxleGZSd294WlVJYVp4Zjh6VHIz?=
 =?utf-8?B?dEhuditMdUpZVHRHTU5sRUlVT3V0OGlsNHh6ZmZmZmhiaWVWaGZ1TmlqUnZw?=
 =?utf-8?B?TG8zRVlxaEtJVjNLalMrNUpSd1NLVjBldit2ZWExcG5xYVNTaW5QbUhsMVJj?=
 =?utf-8?B?RllYV1B5Q1RpVlMzQ01BNGNqQzVmZWhQUnRoMU02RXFHQUxZSEsxcnFGSUVC?=
 =?utf-8?B?TlNtTkhOU0s0dG9XZDdyT242dDNsOVRnL25MQUpwclBBT2E0cmdWYnB3aWNT?=
 =?utf-8?B?N2dTZ3pvamo4VGR5ODRpRmdDbkVyRm81Z1BjTTcrMDdqOUJhOWYydUJlNEJz?=
 =?utf-8?B?enQ4amU3SE05dDNYYzQ5dkJndjVDUEFkcU1jUVFramlrWC9rMmluWm5GbmZh?=
 =?utf-8?B?ZXRNelJ2YjFBL2NpWHd1VmRQVlNmamF1WUZJSmQ0dGFuRWNYOFVtRDQxZjd5?=
 =?utf-8?B?azNBZXRvdGRiOWJXeVBEc2I3ek5LZ01EeU9VOW1RTjNQbWF4cjhBQ0VJOFVY?=
 =?utf-8?B?ais2dytVUmtNYlVzM3YySUh6Tk5sYTNTa3k1Y0tiWEY3YmFCdEtMWmN6WFBp?=
 =?utf-8?B?aUVsU2VxR2NaRVc5cm5JRzNkMVlmb3d4OXpFWXJsMjV1MUZaUTBET25vV1hP?=
 =?utf-8?B?QW5QaGpRekdVYmcweDQvVDJOcVVpazFRR0xtbVV3MzRJcDcvNTlKNVIrRzhj?=
 =?utf-8?B?YW9jSEs3d2g5Tmlid0d3TUZPK09GRG0wa2RBaDQvY21udUtudzBGRkZuMWl4?=
 =?utf-8?B?Yzlpcmk4aWNKamhrN3hjUFVFL2JxNjhZYnMrUnFVRzU1L2NpOUg3Z1hNTS9W?=
 =?utf-8?B?RkgvdFVuSFE5Z1RUamRxR1IxZmJHVUppMUZRTTVFNFpjaDZtaGhacGdzWUV0?=
 =?utf-8?B?L3A2L2M4TmdtRlBJVnM2alJpL0c0aTVCOUlDZ3JhSGRXem0waWFwcGJlQkwz?=
 =?utf-8?B?eUl2bWhFRXR3dEVNL1Jmc01TcVhjNnMxNXZGaXJnTWdZRHg0emlwZ25uclVh?=
 =?utf-8?B?L0tHZ2JZT2kzTG50YzA0dk5WR003RCt1bTRSZkdaMmVtSDVnamc5Tmc5Uk5K?=
 =?utf-8?B?bDlXbmptclo3NE5UNWxzS0JBVldVSUpmNXlVNjUwdGdEN281R0lwbllYaFZh?=
 =?utf-8?B?Mk5FU2ZrbHBCcmFjeU8vM3VTSGZJYStiRzdSTjlWMTBEQklqdkkxb3htY0py?=
 =?utf-8?B?eitXOW9JYzFJYXR0SGhmcDJrZm5yaGwvQ1pxQzNva3dobEk2VUtWdHB0T1lD?=
 =?utf-8?B?SU1iRE5pL20vUzFPc0FtMk9nUloyTG9NbTlURm9KY3dTb1dsUVEybHZOT2du?=
 =?utf-8?B?eUVTZWVJYlI4UmRsSzJ6M1BNNkhZbWRBM2NIV09tK3RVRWVwU0ZRQnRNbXJo?=
 =?utf-8?B?ZDZnT3RibTVSWFpzSzRlUzZ6b3BVM29mMHFyUnhVMjVjZ3NrL1B2bmpNbnZk?=
 =?utf-8?B?MGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7facc15f-a89e-49da-9dc8-08dc4e27d469
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Mar 2024 06:33:35.6438 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: n+dBkjk32JfYdrrXMjjeJj/UrQFFwHqyxxr6B83Vl2aw0r/PqckJ0xo6Dn3mi6q6E2WpVClrBBPDyz6p6yKBMOBNGnL8s5xwyHdfbwtTOys=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6135
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711521226; x=1743057226;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=RchmgOKg4DPB1k/077vPuR1wUfSMmr8CbANxS+jDGtE=;
 b=n1gSyZKTDtDrp2lv0RKj7p09g/6Aae8Ho/W8h736tMn37NXER2pjXIah
 zb5ZkYt7EsVhpLrE/3RFF+I+pLdy1W9kNVJayNH1sY66dzmBth0dJspbH
 86reW5oto6JveN3DBxaIHLwtsDEngit6CQstWIniPE/fpIVto0KFo1Q9I
 41xbnk7MxuVcRHsiLc0WFTOqQtPRt574kRwuHrqAG0qng09GYcX0k//f+
 Zbd61ywpmvhDIBp9wAZhyxCqDYHZ2er5bQW0kDg/4S8VBjgCPR605bxhW
 4aWUzM7wL+ZlJxDklDpehRj2WQTCoDWEFD+kOkMX0YghFJUzEtWmnYvEL
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=n1gSyZKT
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3] ice: Reset VF on Tx MDD
 event
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>, netdev@vger.kernel.org,
 pawel.chmielewski@intel.com, anthony.l.nguyen@intel.com,
 Liang-Min Wang <liang-min.wang@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 3/26/24 17:44, Marcin Szycik wrote:
> In cases when VF sends malformed packets that are classified as malicious,
> sometimes it causes Tx queue to freeze. This frozen queue can be stuck
> for several minutes being unusable. This behavior can be reproduced with
> a faulty userspace app running on VF.
> 
> When Malicious Driver Detection event occurs and the mdd-auto-reset-vf
> private flag is set, perform a graceful VF reset to quickly bring VF back
> to operational state. Add a log message to notify about the cause of
> the reset. Add a helper for this to be reused for both TX and RX events.
> 
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Co-developed-by: Liang-Min Wang <liang-min.wang@intel.com>
> Signed-off-by: Liang-Min Wang <liang-min.wang@intel.com>
> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> ---
> v3: Only auto reset VF if the mdd-auto-reset-vf flag is set
> v2 [1]: Revert an unneeded formatting change, fix commit message, fix a log
>      message with a correct event name
> 
> [1] https://lore.kernel.org/netdev/20231102155149.2574209-1-pawel.chmielewski@intel.com
> ---
>   drivers/net/ethernet/intel/ice/ice_main.c  | 47 +++++++++++++++++-----
>   drivers/net/ethernet/intel/ice/ice_sriov.c | 14 ++++---
>   drivers/net/ethernet/intel/ice/ice_sriov.h |  4 +-
>   3 files changed, 46 insertions(+), 19 deletions(-)
> 

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
