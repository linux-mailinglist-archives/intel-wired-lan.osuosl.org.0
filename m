Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CA9BB8CA7A6
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 May 2024 07:34:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 45D164050B;
	Tue, 21 May 2024 05:34:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nRXk-Ec8tYkN; Tue, 21 May 2024 05:34:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B9E644031F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716269690;
	bh=oIRivWN89dKqsWCHuj3ptDFgZ0aVLHIONexTUuQZdNE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=DaRNZNM3cQcymst5lGc6z6qSrJ+zf6IbYnA+Q9gDy9CRhrOCVCNDpa6Ullc46yJ9W
	 I7iS1bWZIptwPFt7jcmPtVQOfEB8tkwpkTgiNamu2D1cAzW/a3e2OZ7jJetDdy4SXe
	 4IetCXGplFa3bc573Y8iiypCfo6+pi85MFV+yFyqTJYy3eS4NdSj/ku3UrGqRdRQJp
	 k9yMLhhh6R2yQPtIQpdZaRTrkoKVFNJDWIKYrKm41ANPwgZo9lRu7TcWQtpSwZBVqW
	 iOrGwzMskpOFVKf4s9L9r0/Mq6YJWftCVcAVD7aQruRieXQge7O8SZsNPF/EJgqA0F
	 4Doi9T1q3LqMQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B9E644031F;
	Tue, 21 May 2024 05:34:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3346A1BF35A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 May 2024 05:34:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1D4078169A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 May 2024 05:34:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Y71XtQmfo7_N for <intel-wired-lan@lists.osuosl.org>;
 Tue, 21 May 2024 05:34:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=sasha.neftin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E96DC80EDC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E96DC80EDC
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E96DC80EDC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 May 2024 05:34:40 +0000 (UTC)
X-CSE-ConnectionGUID: U134pPt+Q2e6/EYl2oWxRg==
X-CSE-MsgGUID: npfyvqjeR7GL2sXdfUssMg==
X-IronPort-AV: E=McAfee;i="6600,9927,11078"; a="12281014"
X-IronPort-AV: E=Sophos;i="6.08,176,1712646000"; d="scan'208";a="12281014"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2024 22:34:39 -0700
X-CSE-ConnectionGUID: UspRepB/TcOAG+6QCVm9XQ==
X-CSE-MsgGUID: WTgEtgqKT4+Z88R1PcoGeQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,176,1712646000"; d="scan'208";a="32918490"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 May 2024 22:34:39 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 20 May 2024 22:34:38 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 20 May 2024 22:34:38 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.171)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 20 May 2024 22:34:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hSThgR8lvyge5HI49uFsXJKXRhINa+hRGpyDUI7XCQsPEdD6Xp4wPuUr3oitIh5gB6/TVEnK9BEaItADjjFEql9Qw6sPb6Fp9JCFKRD5PlhfQnvTPMp0NuXFTFU1hFIkk529n01+0s3x9fY1dmkJUjhOq2B/0vtgjMNKDLYOLmloExmU80dqcl2Y6mOWPYavEGI5ABFxZqgXbvmGLLwZVeAjyqiy0sTtTP3Rvca54M+N0zYD6rij+L+O+fC6hOaTQrc3gjzs3kTz6D/qvFfsF4Th8ri8KuFwApyiFg6noyzNtrHMeJLJ7eIjG7YRjeRNXFtQkri1odM37VnTmuxr7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oIRivWN89dKqsWCHuj3ptDFgZ0aVLHIONexTUuQZdNE=;
 b=PLQST1rpQprSlCqVuhEFqMJdah0VKca5q6EDhzGB0vVzR32WDszkzfufyhFhrAVSTaC8qjNimW8f8/Vk6yLOdbtneGawvAHft1S8Mx2vk8ERsEjn7h8VitnU8STj2OJilh3v6EEhQE9q5Lljt8aStKq7uGmbVQbwitJYlliamVcr2NMkfIkjCWnVWyEfoNhJT+czCFyDEyZAHeEguQdmFgSZxwxFsoVdrDQz3j4QxU8WuxvqW4yEnPzOEiN1RruqL2uj5dbxmZqtd/szBmAesETWDQnSFOjfwwfFRdBvaSgqWRYQ5oPMwSBf7ef5SrSgl5d333/gh57XmEas+vyvpA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB6738.namprd11.prod.outlook.com (2603:10b6:303:20c::13)
 by SA0PR11MB4574.namprd11.prod.outlook.com (2603:10b6:806:71::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7587.36; Tue, 21 May
 2024 05:34:36 +0000
Received: from MW4PR11MB6738.namprd11.prod.outlook.com
 ([fe80::f174:29be:e20c:113f]) by MW4PR11MB6738.namprd11.prod.outlook.com
 ([fe80::f174:29be:e20c:113f%4]) with mapi id 15.20.7587.035; Tue, 21 May 2024
 05:34:36 +0000
Message-ID: <8fb634f8-7330-4cf4-a8ce-485af9c0a61a@intel.com>
Date: Tue, 21 May 2024 08:34:29 +0300
User-Agent: Mozilla Thunderbird
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>, Mikhail Gavrilov
 <mikhail.v.gavrilov@gmail.com>, Linux List Kernel Mailing
 <linux-kernel@vger.kernel.org>, <vinschen@redhat.com>, <hkelam@marvell.com>,
 <naamax.meir@linux.intel.com>, <anthony.l.nguyen@intel.com>, "Ruinskiy, Dima"
 <dima.ruinskiy@intel.com>, "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
References: <CABXGCsOkiGxAfA9tPKjYX7wqjBZQxqK2PzTcW-RgLfgo8G74EQ@mail.gmail.com>
 <87zfso6tfk.fsf@intel.com>
Content-Language: en-US
From: Sasha Neftin <sasha.neftin@intel.com>
In-Reply-To: <87zfso6tfk.fsf@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TLZP290CA0007.ISRP290.PROD.OUTLOOK.COM (2603:1096:950:9::7)
 To MW4PR11MB6738.namprd11.prod.outlook.com
 (2603:10b6:303:20c::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6738:EE_|SA0PR11MB4574:EE_
X-MS-Office365-Filtering-Correlation-Id: 6f6c2007-ec9b-4f6f-b8a8-08dc7957b393
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|366007|1800799015|376005|921011;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bCtXVjJ3dGJMT05NOSs2VnJudHBReHlOMlZGYlBFeVBnMURMc3ZpOUQ2MjFk?=
 =?utf-8?B?RmpCYVpYOWxYaUNPb2VHWFQyTW0vYnp6c2JFNkl1RjNCR0txdDNla3Jhc3VM?=
 =?utf-8?B?SUJxZUUyWWNTNFNJb2JBWHZqNTNZbVRIWjBTK0xzemJhUzJMYlF1OFVlUVBR?=
 =?utf-8?B?c1d0Smw0aTZLeDJwUTJKSU52azZoQ29ybzFsRFgvTDBCU3greVVRS2szSm4z?=
 =?utf-8?B?YkZaajJ6bXpoeFoxYzJraDRpSnIwQ2pJMTg3MGtuT0VDQklpbUk3MXFqK0Ir?=
 =?utf-8?B?bTBTWSthUllFYkZZY2EvZ0c2ZGwzMmE1VFM2dHdJOFpabVhOUzdMeTAvSFoz?=
 =?utf-8?B?RktyZ2pROUdKeXJKdDJJRTdldHBydTh4cEw2dFYvd2R0YlV3MTF2bzVhOEdE?=
 =?utf-8?B?QlhwdGdUbk5TbVRFZmdYQldvSE8wekRGQkdYZGxuQnN6WVBHSHlwRm03cnhY?=
 =?utf-8?B?blZzOFM1YUNVK1daZ0U5N2xBVEhMR3FkM1RTd1pWdnRmT1hqenlBaHh1QWFw?=
 =?utf-8?B?Wjh2cm9GdkEwNnNOcFk1a1ZSbTFLSm5wUHB2SHpYelpIbXMzRjNiK0xIYzg0?=
 =?utf-8?B?OS9QMzFVREVwajR2SG5SUTR3QnZCL2ZUNHkrY3dnaFdNWnhzQ21lTlUyM1Yw?=
 =?utf-8?B?aUlpMTZ1YXZKbkdEbEhCOWx0NVg4TFdxN0pHb0thTWRnVEZ4WDlMakVLMUFE?=
 =?utf-8?B?WGtrdDRXQloxVkZDR0liZlNrYlBCSGNUZjZBeDB6dXN3ampPQW5Ybkxkd1Vh?=
 =?utf-8?B?SGxFRmVna0RiNjBoT296UGxKNXMwellZRFpueWU4SnVBeG91VUg2VFdmUTFB?=
 =?utf-8?B?eTgyVXVaRGs5cmZlR2RFUG02U1EyNGJ3UUxmRlVDd1cvRDkwYVRIREwxZjRh?=
 =?utf-8?B?VzB6TkJ3bWNVbVl4WFNkTTIzSjZ0Y2JMdEQ3U0sraklQSVdLem5rR0lLWE5E?=
 =?utf-8?B?TW5QZUtlTy9sZlJhNVU0QjVkVm1ZWERRRzZKVGJIK3dnbEppZGVPcWJWUkRB?=
 =?utf-8?B?dHY1TG1nRUUwcUFXRmpYV1lrRkt0R2EzZzFTK252UlJZdlk0Y3I5OU00dm1B?=
 =?utf-8?B?ZWlQRVg2dGRQRlJ5cm5QMmtHRkI0N1gzUzNVdTByQzR0aSt3NE5kUFFaYitB?=
 =?utf-8?B?SnlSOTZzOEQ5UW5TeEYzVzlGOGs0ejg1WTNONFpSL1R5UkdLb3VTN0ZFME82?=
 =?utf-8?B?SDRwZ3FQMis5OE5uSE5GdklNMElHQUJBcmpzZGlMSmFOb2NwQ0lkd1gvQzNK?=
 =?utf-8?B?S0pCblA0emZXbHE5SVQvUW1EbjZaSXVqZHdLeStoRU9ERVZUU253QWdhUERR?=
 =?utf-8?B?Um1qcW1xVjR5SnFqSU9aejNaZW4yODYweG1Jb3QxeUtlVG8ySjB0enJkb3lJ?=
 =?utf-8?B?Y1ZnZGRuc1hKQ0ZVc2krbG12ZzJicmRWN2hKTGVyU1BYV05ocGVOczBleGM1?=
 =?utf-8?B?VnZEdlpKMzBldmRVcmtmMi9XRE1KWFlTd3F0dUF2VFJmMk9IbTJ0WHIrOURT?=
 =?utf-8?B?Q096N0JMK2xObTNGaU4wRkV6aEQ0c1E5NytvK25LNXU1YllFMmNJbG0rSGZy?=
 =?utf-8?B?NUo0V245cXk0TUo2blFmV0NJdFNOZGV3U2t1aHFDTWNsT3VGYjdWWlhvRmxp?=
 =?utf-8?B?K09YSXRSMitFYjI1cnFlenorbWRvTnZSdzFjQUFJSmMxRUNzU2NRVG5iU1ps?=
 =?utf-8?B?WWZuWWFnZTBIQTk1MlRkb1hYcUtNcHNnSUg5eU5SbWFTWEsrK1lZZE13PT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6738.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005)(921011); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TkxVUS9ZQ0x5VGZCYi9yYnRjMUUrWGpwMWtUWklJUE9qMnptWThSSWJnQ0Vz?=
 =?utf-8?B?TTZ6c2VBUng3aFlVaDE1MFoxeFNuS29FZVVXbjhLakh6VHZYeEQvc1Zsb0F4?=
 =?utf-8?B?ald3eEQwNE1TQzNGYllWSTJFVW9uK1U0VUdzbWlaQWhqaVF1OWpOejlKRzNj?=
 =?utf-8?B?YjhTQ0FpV0gybkduUWxsODhrYm5XdXB6dzJDVGsxR1VKUVFWdTVpRTRGSnRU?=
 =?utf-8?B?cmpOeEdzelBnUEQrdk41QkdwQ0x4Q3E1eHRWZGVFTXJjQkFIbERVdUZxbWds?=
 =?utf-8?B?NUxHSm1NOUFUM1NmRk5tVHVjdnJQN1dhOXpma1cvZElJd1FqK01Iem1tUVhl?=
 =?utf-8?B?WHRjZ0hkNS9XTS9paVQ0MVZBUVNlQTRlUGhGb2pNd3Vwb0c0VVljM3YxVVI3?=
 =?utf-8?B?cHJvYmVKZS9qalFaeDdzZCsvVWRLSkU0aTVuQ3BuaDJ6cDdaVFgvRmpBdFhE?=
 =?utf-8?B?cFRPQkNCS0ZvM3A3WkxJRHQ5aEF4UHBsb2xpZGl4bFJSTS9ObmVPTjJlV1NY?=
 =?utf-8?B?cDEwSmVvbHVCWVFUNHVOMWl0d0RSbnFDS0hTOFJqMWFRVGRDRHUzUU5oSE1q?=
 =?utf-8?B?VkM2RHk5SFBUcXc3Wm9URnhRbitWSm1yK09XaGNVM2F5VllqWUR0dkd1V2Zn?=
 =?utf-8?B?OWhMdW10MEpBaE95c2J1cS9za2RYa0p6Q3JxMDhneUpYR0EvekNEYjk5VTll?=
 =?utf-8?B?dlQxR3RXZytLdkluek15QTJVMGhQeWtJaXFlTlJkankwK3BsR3RVWkd6d05U?=
 =?utf-8?B?OXpCT1JleTBiQnBubUt1UmdsbHY0OEVOVXBvTFhEdDJxdVR5OUpyb1dyNDhT?=
 =?utf-8?B?ZVhwNDVMWTJTTlVvRW5lVmgzTXhPejVkZitTSVRWQjJ6MWtmZjVkdUkyWTBK?=
 =?utf-8?B?aEFQZXV4Z256QzBSbVVxWFVQVmN2THhObmp3TVFRQ3JZb015V1dQUHNUY1J1?=
 =?utf-8?B?T3BYR2doZmR6R01rR3QzNVI5R1ZmcHBLcVQvcW5aSWYvNytjdFY3c3luZ3NS?=
 =?utf-8?B?N1h2YzBHUUJNUVhFckRYUFAwbVQ2aG9GZ1ZmMVhyZ213dmQ1d0xaQ3NQQ25M?=
 =?utf-8?B?VG9nNlUzQ2Q1Q0krUGd2bC8yRThoU3RnOEVaK3RGTzQ2c1NITERYNGpaOEVX?=
 =?utf-8?B?K1plOUI2Ym9NTUhlU1Z4eFB5ak1pbVpXNWV5SDJrMUhoREpYVndiai9xTXQv?=
 =?utf-8?B?UG9ZckNTeThUaTFNRGp3Y0R2Y1BzQnN5elB6QlBEUE9xdGNwNzFFMXRYcVBX?=
 =?utf-8?B?a2pMTkRTQ3hDN3JMdytpRmUvajlwNWo1MHFMeEU5TmdGR09qaCs4dWpsUzFV?=
 =?utf-8?B?YU9HNXRLWHNsSWZNektscGVMeHZhRUZkaWtpazByUWdmS0RFU20rSnpUS1Fq?=
 =?utf-8?B?MkhkTHk5RzRLZ05zTXB4dk5Fa1hNbHZxWU5ZTVE5RmVUUEt4a1daL0JQQnZa?=
 =?utf-8?B?MXpxd254S0thMnYxekRxTk4xRVRFWFQ2Z2p4bnBJK0JaNDRJanFubEJRdTlt?=
 =?utf-8?B?aTZHSHZVdzZjVzlHc0ptalhBUCtEd3VXdUlDTWY5RHlFUGtoS2V4UjYxWGtT?=
 =?utf-8?B?OFUwOVErOW9XUjQrVDIzQW5yWndtUmVKVUhDSkg0OHBESHVPeGx4N1Zjb2RR?=
 =?utf-8?B?Nm0zTGpHcE55WGdNV3pFOFBmVWpkRTZCdUVkVTV0YXJDVlpxd1dGQm81UVRU?=
 =?utf-8?B?Y1VvVllsdzdkbzdTd2dUb2xIZ21wVjRCd2lLckpWbzF2SnU4Mml6dWJjeTd5?=
 =?utf-8?B?TDNZWk9iWU1PVDB3aVRMU1gwQ0FuMWVVSFJMQ3dXVGIzS083TjA5VFlvQnhp?=
 =?utf-8?B?OEVVQjJRZU83WWltc211ZTNOYzlQZzhwVmRMS0l1OVU3ek5Ld0hUb3N3TGsy?=
 =?utf-8?B?VGZnMm5QY01jd0JEY1F3TzdVUGdWanRTRVJRZ2FsZ2w0M1djUCs4TlpWZWJL?=
 =?utf-8?B?N2tvTUY2RUZZdGdkc3NRRkpnczEvMFRDUWpvR29pQ2ZIdEIvRjdRUjcwNUNo?=
 =?utf-8?B?TjNtSWZNZnA0Nkoyb1hwOWNuSFVyaFZEdWcyMUJ6K0l1YnBPUjhWb3pDWTVs?=
 =?utf-8?B?MWR2eEQxYzJGeG91VlRybjRCWmFjWGJtRlpMN2lpZDhzSTBySDA5Um1pVU04?=
 =?utf-8?Q?2lgxlaAUtLQL9pV5sKEG7NnRe?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6f6c2007-ec9b-4f6f-b8a8-08dc7957b393
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6738.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 May 2024 05:34:36.4895 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BzKdYhzs2FFCV8Gtu1ZR8Of7fgt160RtEAHN7uje4TlpaFutn7eCUfIBGdFUqravR339B9GVgPDf7jX0oghZyg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4574
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716269682; x=1747805682;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=7qZ2rZ3E76HAuoX8rHu+4gF/Cv3EuHwcpn8WoZbgbcY=;
 b=B3/TjSIeR3ZeTG9mMKf+TGucAqANKmNblnn+rL8lZ6VukQzWeBA8RKrx
 GBRSy75IRGuA0bfZ6xqUC3e/7cGMYf8MGovkszvpdr4nUkAayDvCiddfz
 VHKraH/VIrfpkuTW+Ro8R+brqOKpqqxxy5J+nNMVwyHyIVMVsBh+lLdGb
 PDyZtV5WGjwnQLcQ49Yqsiswfr7iWUpHNbQnt29XfD8Oq7pSgyAOs968R
 /usfi3HfJvzexiPU1KNhuG7GSoE5huh99ovqkICCVJwpuDFH1OYHdcnr0
 VFcunlCvbFItRfTkIVx3mF7LwUu5CeEPtt6IpmratV38IauuHSTB71RUI
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=B3/TjSIe
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] 6.10; regression;
 bisected - commit 86167183a17e cause info msg "trying to register
 non-static key"
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
Cc: intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 18/05/2024 0:05, Vinicius Costa Gomes wrote:
> Hi,
> 
> + intel-wired-lan
> 
> Mikhail Gavrilov <mikhail.v.gavrilov@gmail.com> writes:
Hello Corinna,

Any thought? Revert?

Thanks,
Sasha
> 
>> Hi,
>> I am here to test unstable kernels.
>> Yesterday at Fedora Rawhide arrived the new kernel
>> 20240515git1b294a1f3561 and I spotter in kernel log new "red" message
>> with follow stacktrace:
>> [    8.471610] nvme nvme1: pci function 0000:0e:00.0
>> [    8.471616] nvme nvme0: pci function 0000:04:00.0
>> [    8.492638] nvme nvme1: 32/0/0 default/read/poll queues
>> [    8.496190] nvme nvme0: 31/0/0 default/read/poll queues
>> [    8.507051]  nvme0n1: p1 p2 p3
>> [    8.522270] INFO: trying to register non-static key.
>> [    8.522273] The code is fine but needs lockdep annotation, or maybe
>> [    8.522274] you didn't initialize this object before use?
>> [    8.522275] turning off the locking correctness validator.
>> [    8.522276] CPU: 31 PID: 683 Comm: (udev-worker) Not tainted
>> 6.10.0-0.rc0.20240515git1b294a1f3561.4.fc41.x86_64+debug #1
>> [    8.522278] Hardware name: ASUS System Product Name/ROG STRIX
>> B650E-I GAMING WIFI, BIOS 2611 04/07/2024
>> [    8.522280] Call Trace:
>> [    8.522281]  <TASK>
>> [    8.522282]  dump_stack_lvl+0x84/0xd0
>> [    8.522287]  register_lock_class+0xd84/0x1000
>> [    8.522291]  ? __pfx_register_lock_class+0x10/0x10
>> [    8.522293]  __lock_acquire+0x3d2/0x5c70
>> [    8.522295]  ? debug_object_free+0x298/0x550
>> [    8.522297]  ? __pfx_debug_object_free+0x10/0x10
>> [    8.522299]  ? __pfx_lock_release+0x10/0x10
>> [    8.522301]  ? __pfx___lock_acquire+0x10/0x10
>> [    8.522302]  ? hrtimer_try_to_cancel+0x22/0x460
>> [    8.522305]  lock_acquire+0x1ae/0x540
>> [    8.522307]  ? igc_ptp_clear_tx_tstamp+0x38/0x1b0 [igc]
>> [    8.522321]  ? __pfx_lock_acquire+0x10/0x10
>> [    8.522323]  ? seqcount_lockdep_reader_access.constprop.0+0xa5/0xb0
>> [    8.522325]  ? lockdep_hardirqs_on+0x7c/0x100
>> [    8.522326]  ? seqcount_lockdep_reader_access.constprop.0+0xa5/0xb0
>> [    8.522329]  _raw_spin_lock_irqsave+0x51/0xa0
>> [    8.522330]  ? igc_ptp_clear_tx_tstamp+0x38/0x1b0 [igc]
>> [    8.522337]  igc_ptp_clear_tx_tstamp+0x38/0x1b0 [igc]
>> [    8.522344]  igc_ptp_set_timestamp_mode+0x3cc/0x700 [igc]
>> [    8.522350]  ? igc_power_down_phy_copper+0xf1/0x140 [igc]
>> [    8.522358]  igc_ptp_reset+0x3b/0x5e0 [igc]
>> [    8.530693]  ? igc_set_eee_i225+0xfd/0x1e0 [igc]
>> [    8.530706]  igc_reset+0x2d9/0x3d0 [igc]
>> [    8.531707]  igc_probe+0x14ca/0x1e20 [igc]
>> [    8.531715]  ? _raw_spin_unlock_irqrestore+0x4f/0x80
>> [    8.531717]  ? __pfx_igc_probe+0x10/0x10 [igc]
>> [    8.531723]  local_pci_probe+0xdc/0x180
>> [    8.531727]  pci_device_probe+0x23c/0x810
>> [    8.531729]  ? kernfs_add_one+0x3ab/0x4a0
>> [    8.534068]  ? kernfs_new_node+0x13d/0x240
>> [    8.534070]  ? __pfx_pci_device_probe+0x10/0x10
>> [    8.534072]  ? kernfs_create_link+0x16e/0x240
>> [    8.534074]  ? kernfs_put+0x1c/0x40
>> [    8.534076]  ? sysfs_do_create_link_sd+0x8e/0x100
>> [    8.534078]  really_probe+0x1e0/0x8a0
>> [    8.536433]  __driver_probe_device+0x18c/0x370
>> [    8.536436]  driver_probe_device+0x4a/0x120
>> [    8.536438]  __driver_attach+0x194/0x4a0
>> [    8.536439]  ? __pfx___driver_attach+0x10/0x10
>> [    8.536441]  bus_for_each_dev+0x106/0x190
>> [    8.536443]  ? __pfx_bus_for_each_dev+0x10/0x10
>> [    8.536445]  bus_add_driver+0x2ff/0x530
>> [    8.536448]  driver_register+0x1a5/0x360
>> [    8.536449]  ? __pfx_igc_init_module+0x10/0x10 [igc]
>> [    8.536456]  do_one_initcall+0xd6/0x460
>> [    8.536459]  ? __pfx_do_one_initcall+0x10/0x10
>> [    8.536461]  ? kasan_unpoison+0x44/0x70
>> [    8.536464]  do_init_module+0x296/0x7c0
>> [    8.536466]  load_module+0x567b/0x74f0
>> [    8.536470]  ? __pfx_load_module+0x10/0x10
>> [    8.536473]  ? __might_fault+0x9d/0x120
>> [    8.536475]  ? local_clock_noinstr+0xd/0x100
>> [    8.536478]  ? __pfx___might_resched+0x10/0x10
>> [    8.536481]  ? __do_sys_init_module+0x1ef/0x220
>> [    8.536482]  __do_sys_init_module+0x1ef/0x220
>> [    8.536483]  ? __pfx___do_sys_init_module+0x10/0x10
>> [    8.536487]  do_syscall_64+0x97/0x190
>> [    8.536490]  ? lockdep_hardirqs_on_prepare+0x171/0x400
>> [    8.536492]  entry_SYSCALL_64_after_hwframe+0x76/0x7e
>> [    8.536494] RIP: 0033:0x7f29997265ae
>> [    8.536499] Code: 48 8b 0d 85 a8 0c 00 f7 d8 64 89 01 48 83 c8 ff
>> c3 66 2e 0f 1f 84 00 00 00 00 00 90 f3 0f 1e fa 49 89 ca b8 af 00 00
>> 00 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 8b 0d 52 a8 0c 00 f7 d8 64 89
>> 01 48
> 
> It seems I have missed this following flow (in reverse):
> 
> + igc_ptp_clear_tx_tstamp
>    + igc_ptp_disable_tx_timestamp
>      + igc_ptp_set_timestamp_mode
>        + igc_ptp_reset
>          + igc_reset
>            + igc_probe
> 
> And that in igc_ptp_clear_tx_tstamp(), it uses ->ptp_tx_lock. So
> igc_ptp_init() needs to be called before igc_reset().
> 
> I think that is what this splat is telling us.
> 
> Don't know what's the best way forward, reverting the commit in question
> or trying to fix the initial problem some other way?
> 
>> [    8.536500] RSP: 002b:00007ffee505bff8 EFLAGS: 00000246 ORIG_RAX:
>> 00000000000000af
>> [    8.536502] RAX: ffffffffffffffda RBX: 000055eafe4a2ac0 RCX: 00007f29997265ae
>> [    8.536503] RDX: 00007f2998e6007d RSI: 00000000001067d6 RDI: 00007f299828c010
>> [    8.536504] RBP: 00007ffee505c0b0 R08: 000055eafe43a010 R09: 0000000000000007
>> [    8.536505] R10: 0000000000000007 R11: 0000000000000246 R12: 00007f2998e6007d
>> [    8.536506] R13: 0000000000020000 R14: 000055eafe476280 R15: 000055eafe4a25a0
>> [    8.536508]  </TASK>
>> [    8.542741] pps pps0: new PPS source ptp0
>> [    8.550932] igc 0000:0a:00.0 eth0: PHC added
>> [    8.550992] igc 0000:0a:00.0: 4.000 Gb/s available PCIe bandwidth
>> (5.0 GT/s PCIe x1 link)
>> [    8.550996] igc 0000:0a:00.0 eth0: MAC: e8:9c:25:6c:40:75
>> [    8.558160] igc 0000:0a:00.0 eno1: renamed from eth0
>>
>> Of course, I immediately wanted to find the first bad commit.
>> And now it has already been found:
>> 86167183a17e03ec77198897975e9fdfbd53cb0b is the first bad commit
>> commit 86167183a17e03ec77198897975e9fdfbd53cb0b (HEAD)
>> Author: Corinna Vinschen <vinschen@redhat.com>
>> Date:   Tue Apr 23 12:24:54 2024 +0200
>>
>>      igc: fix a log entry using uninitialized netdev
>>
>>      During successful probe, igc logs this:
>>
>>      [    5.133667] igc 0000:01:00.0 (unnamed net_device)
>> (uninitialized): PHC added
>>                                      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
>>      The reason is that igc_ptp_init() is called very early, even before
>>      register_netdev() has been called. So the netdev_info() call works
>>      on a partially uninitialized netdev.
>>
>>      Fix this by calling igc_ptp_init() after register_netdev(), right
>>      after the media autosense check, just as in igb.  Add a comment,
>>      just as in igb.
>>
>>      Now the log message is fine:
>>
>>      [    5.200987] igc 0000:01:00.0 eth0: PHC added
>>
>>      Signed-off-by: Corinna Vinschen <vinschen@redhat.com>
>>      Reviewed-by: Hariprasad Kelam <hkelam@marvell.com>
>>      Acked-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
>>      Tested-by: Naama Meir <naamax.meir@linux.intel.com>
>>      Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
>>
>>   drivers/net/ethernet/intel/igc/igc_main.c | 5 +++--
>>   1 file changed, 3 insertions(+), 2 deletions(-)
>>
>> The next step I was convinced that reverting the commit 86167183a17e
>> removed this info message.
> 
> Thank you for the effort.
> 
>>
>> I also attach here a full kernel log and build config.
>>
>> My hardware specs: https://linux-hardware.org/?probe=98ecbf3636
>>
>> I hope it helps.
>>
>> -- 
>> Best Regards,
>> Mike Gavrilov.
> 
> 
> Cheers,

