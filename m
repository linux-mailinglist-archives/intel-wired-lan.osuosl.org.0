Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id F2FC884262D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Jan 2024 14:27:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 70C4F83BAF;
	Tue, 30 Jan 2024 13:27:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 70C4F83BAF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706621248;
	bh=H8l5j1E6dZqTnl14GQxj+bn8DpEmY/a/w0OppXa95MU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=yBXDp58n0fBkkNcwqaz02ytMYF5uBXr3PVioUCQs8Cmw525GtfoNl3KyRHREfRYZ9
	 FJ9jW3z1vCg3fHFvkKQ9hsXm/6FwEQwGPeqWJ+U1MPu277SfZ0IiavbaK3HwyKKXMI
	 CoGXVRTRyOqB2lipDc/lzKK5IZ3v7qlY6ovFfH9f9ig3SQpZeSFTgTHxnnoDRNU4bF
	 U9MEj3G6oeIaMPYzRTQ6/5t0/eiIDc1WhYstpryFmObyo+zGukWzRq9QQQ3dJWTl89
	 V8TRD+2FaZMdrY18f4XMTTSOBBG6gQvft5bEhOEPI54hCjHlOU0kaDGadmBZEMADaJ
	 Ma7Xq/22s+Y+A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Bw1H6Bj9E8a4; Tue, 30 Jan 2024 13:27:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5965083B8C;
	Tue, 30 Jan 2024 13:27:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5965083B8C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 307E41BF2A5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jan 2024 13:27:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 037E383B8C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jan 2024 13:27:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 037E383B8C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CxYWW8FaKmOt for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Jan 2024 13:27:21 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E9F4A838B6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jan 2024 13:27:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E9F4A838B6
X-IronPort-AV: E=McAfee;i="6600,9927,10968"; a="467532661"
X-IronPort-AV: E=Sophos;i="6.05,707,1701158400"; d="scan'208";a="467532661"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2024 05:27:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10968"; a="737777753"
X-IronPort-AV: E=Sophos;i="6.05,707,1701158400"; d="scan'208";a="737777753"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Jan 2024 05:27:19 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 30 Jan 2024 05:27:19 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 30 Jan 2024 05:27:19 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 30 Jan 2024 05:27:19 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aiIz+6LKsVEDkSIqMco1BH1BTHVd6tqX4jIhFxT5knf5lAH1+cytOhRuq1zRGSguT6p/bo5P/Oww6ddz64p+JKgYvcDg/EVxGysIq4wmsUNnZlEJYFGZfUk+eC61eNrphMNNMllP3eGzj1rQw1iTcATkZBAh69gJLj3IBiIBaTBQw0uRRPEs+W+DnUYJH8N1aFkmbPs/nXnmWASaOH7fBF+m8Ls2SX26o8INOvEM6a2SQTnVzF3CWwSjjfcoyrL6x69UxO4p8NbrXauNE5Exw12GXC8Nn5V/dCNpF6+JMN5qSYpdGauJq+Lo2xVfzmv8E3RI7S1dKDLj7a7NltQzPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=H8l5j1E6dZqTnl14GQxj+bn8DpEmY/a/w0OppXa95MU=;
 b=k79gTFXmWGew4Vt1UKthWGM6PV+PdP9kDw90gFbAIWCrW5G1EMviYftef6JEj9UH2MeE8eNMZWF9DdpPDVmcW56LhpS2FyoLLWpuVFecJW16j/4V3M6+lAio55crrJzHc4VQAN1x5giK/xSLnSSnzKYtnr20fF0WX/fp/PLD+nZfa5XTkt+UsJ9Y3dHE5YsbbE1jxdjdTMm6tZqYKgMImqsK31x7lq+yV36O7X5RRxyYwdtQG/p/8nxAthg8A99HncF+/Ly+J6tGMhUXsdAOtLpmx53/cLcdSKEvUBxsswG8Dzzx13TEu4+OlFqXAMMbRp6yeTr6ZCfNCShUjCrwXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by CY8PR11MB7133.namprd11.prod.outlook.com (2603:10b6:930:63::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7228.30; Tue, 30 Jan
 2024 13:27:17 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::b1b8:dbaa:aa04:a6bf]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::b1b8:dbaa:aa04:a6bf%7]) with mapi id 15.20.7228.029; Tue, 30 Jan 2024
 13:27:17 +0000
Message-ID: <0ffd1e6a-35ff-4868-a15d-d0f12c5c9720@intel.com>
Date: Tue, 30 Jan 2024 14:25:54 +0100
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Christian Rohmann <christian.rohmann@inovex.de>,
 <intel-wired-lan@lists.osuosl.org>
References: <f38a6ca4-af05-48b1-a3e6-17ef2054e525@inovex.de>
 <7bbe621e-52cc-8111-bec7-70632900c3b0@intel.com>
 <e1b2f012-7e0a-4167-bfa9-026d49f1b45b@inovex.de>
 <1ec34cee-bfab-4dc8-81eb-9a9688b9a61e@inovex.de>
 <df3b33f3-8f78-4c94-854a-dd70a8b5fcd3@intel.com>
 <ae802f16-d425-4377-82f5-b72f8efac0de@inovex.de>
 <5ff11c63-d1db-4a8c-a496-99e17acc273f@inovex.de>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <5ff11c63-d1db-4a8c-a496-99e17acc273f@inovex.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: FR0P281CA0078.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:1e::17) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|CY8PR11MB7133:EE_
X-MS-Office365-Filtering-Correlation-Id: 8d1680e4-2f25-4326-c9a3-08dc21972df1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: xdUfVg2N6tdf3rNpXhyBV+LtQxQBn12ekgjSsDJGe4sOr8pA95Yc+fH1MDPBGAwpukekFSq9ldcuMn6wTfybhT1ZlyVk/6odjZOiHUDi9pEPL+HXXZnRVtHrA0FVirWSwqIZO+/CPaSp3V3m3epLWniNZwe4XX2jprr27g+qhoh3Jeho4bfdt/TMXWyvhxQMQ71jrTJU2q2Jh9ywG+sQst8U+VbhSOlytUv8VpZXtXUxAUwfj2ywdU3JxK5qSadJ6doVxXaUmcjgRkWLROzf25HdhxTpTVl561XOHxjFl4JfZTJfigjdIsQ2k0bMonbyxHJ+dI+aJxis1BXRA9fUDlcaq17yraaWhzCT5tUI9JPQN+Gizhjq4cgF0lRzAOJgidMlUjwQ2oXsklilDsnIu+ooDUu2qJKYZx+/N0Ghuh+kjU7UtXfhAX+BCnF4wXuiip4ohJkIbGkQbHXUCKzbRxPVmx9LA2+9kcloJNlIiXJ393UCd0Yl82N4c5GEwbeHD3jgW1bJYg9Qk7ni/MW0w8HAtD69L6C/GgyiJMZWfNgXRDemtWhbvfUt08PfJ5k4gEggrk0mLcrl1HAVMTNDgyC19q6a/E6BNmKeXxUvS7jacVQhSCCIHudnqS7h1E6SMAiuxhBeZ4gQqJGDkGmVlg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(396003)(39860400002)(366004)(136003)(376002)(230922051799003)(451199024)(1800799012)(186009)(64100799003)(83380400001)(26005)(6506007)(53546011)(6666004)(107886003)(66574015)(478600001)(8936002)(38100700002)(5660300002)(8676002)(316002)(41300700001)(2906002)(66556008)(54906003)(6486002)(66476007)(66946007)(4326008)(86362001)(36756003)(31696002)(82960400001)(2616005)(6512007)(31686004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UWV1ZnNrVndxZ2JpRjJUZndSN0pkd3laeVdONXB3ODl3dzg0WmYwbnJnY2M3?=
 =?utf-8?B?Z3RsdmNLNGg1YzhBM0EvUVpXYlNLaFVJYkFKME15YVl5VFRmOUdMcVNPV1FP?=
 =?utf-8?B?d0IxODBiY0VGbFFBdHVuUTlabFk3VmVKeDdhRUFoZnNkZFV0WnhFY1BwOUVI?=
 =?utf-8?B?QVdZU3VaYngzWXNIdDI0Vk1sTk5TZGdRSWFKMHkwaC9kODNheVFlYXMrMmpX?=
 =?utf-8?B?QmwzeVVkMGl2NVU5NTF1THQxblR1dU0ycG52L1kwWjBXSHhiWWFUZlRUcmJB?=
 =?utf-8?B?RE9mTEQ0NTdLOFhLSHFhWW9LSGdOMXZPRmx6M2N5Z1lrc1Z3NGxNSUY3b05i?=
 =?utf-8?B?UmZPbDVPa2Z1dFJUNWc0UHB1dU9vRm5uMzEydm5lNjhJb0FId0l0aHpjVVJ2?=
 =?utf-8?B?SFJMUEF1Vlh2c2lST0l2VnVQOXZyNFc2WHhMbmUyNWd0MjVQV3htdXJOdWZn?=
 =?utf-8?B?SXIyd3gvbzNMYTdqVXV2a3JqeFpCVGhFZ0twSHlFVTZBdEo0OWtwN2ZIVEU4?=
 =?utf-8?B?NGFVRWMzOGZzdGRzSTN6cW0vYWVtdnVaNzdmaTNqSW5DdUV4UTJOVG1yUlc5?=
 =?utf-8?B?NUxtWUVLcGZ3eXB0aVkwaGh0MlJjYmNLUWhsVmdsZmNYS1FVVHJNcVhNTEZx?=
 =?utf-8?B?QmRaUFREVFJZM1Bvd01vdEt5cUhVWWRENythVkhaNVdFS2p4TVZ1dStFYkxs?=
 =?utf-8?B?TUFpUlRSUFBFOXJ6OEQ5MHNrdHcveDkrTTBaSG4zOW9FSEVra3ZJRVFJa1hJ?=
 =?utf-8?B?Qms1WEl3dXlMQ2duK2tRc0pocWJzNkZsMkt3QUgwaDAwaGYrUFAwZVRPblhN?=
 =?utf-8?B?dVo0VFJXY0d3eGdoN2dIdW9GbjBQR2FGd0pGQ2YxbjVQV3IvdVN4MFozN0Qz?=
 =?utf-8?B?T2U4eHNuZzRRbXZtT0h6bDdLYmFBMTg4dlNwWU45ak5ZVm0weDI1a1JQQTFq?=
 =?utf-8?B?WElpcHB5bldQM0czUExPNExjSWh6bTMrVkZPc0psWk05S2h1S3Y2K1B4TVBO?=
 =?utf-8?B?Vk5RemdDc3k1bUZycDRiV3A3QVFZY3BiMFRkeWRzckxaNkR4TXFjeWgxdGk4?=
 =?utf-8?B?UUxLdFkydXl5am9ZME1yRTUyaWY2Z1JrdHhtcld4YWphVytlc0tEZ0o4OGNx?=
 =?utf-8?B?bkl5dVRCbC9YeTc2VlhPYXk4NitsZXFMa1FGV0oxNmNvdmI0ODlLRTZYR2sy?=
 =?utf-8?B?bno4Y0dGNmhTbEoyRnlKVVFiV294elJPUUZXNWFRRGx1akNUaUZBTDduaDdF?=
 =?utf-8?B?cDR0QUJodlA1eE9Fc2hHQUgwZERHUDBDdjdsU1JXY2JsdFhyUG1JS25KTEZr?=
 =?utf-8?B?SVhHK1lsYnp5S0NqQlhlTnd2eGYzVVk1amNqdEd3VU1ZNC9BVUNnN05FanRr?=
 =?utf-8?B?S004azBxVklwNFdmQjhrd002eGlubTBqTzN6RHJYQjB2bWlhRnJTNHZodUEz?=
 =?utf-8?B?QnovaEVEV1hjRjNabnRVaUhER2hjbWJFeldLRXNMVFBuZ2xQZy83Mk1NbFBD?=
 =?utf-8?B?VUFjZ0RUL3prU0NydFJPZTVpYU1NWXh4MUpnSnNyTDg2ZjhWSUdBc21RY0Ry?=
 =?utf-8?B?aE5PcU05b1U5VFA5UnZCeDdQdTV4bGdaZUZiRXBnRVptanpwOHB5MnhzdGpn?=
 =?utf-8?B?amhXRWE5eURheUZ5K1NlbEdsOU1nRjhxN0FnV3h2Tmc0V2tpNkxHRkJEcFlQ?=
 =?utf-8?B?SlBJazRud1N6eWpnNXQvSCtzK3hQNzFlSFJid1JHWXExNlpnQ1l2YjBPb0JI?=
 =?utf-8?B?WExla3pEanVneDFNZ3NZM1NUN0Yzc2ExQyt6dmpBZ0V6aDlrTzNZNVlGVjdG?=
 =?utf-8?B?a2NINHgyN1h4VEpLN0VqT1dqSmdMU29HTXozSVZoejFxNGgxL2tEcmU1WmN2?=
 =?utf-8?B?Y3NLVUtyQitaZno0MVRkQzB2MzNEMEFLdXZBV2hLSG5zcml4ckdQMFJQaVI1?=
 =?utf-8?B?bzdtVjR0UzBQa3BQSGFEZlFvR2RZbmdGRExydXVZQ1kzZUJlWWlydk5ObWto?=
 =?utf-8?B?Z0NZWE9kMm5pYWRybnhNUUhxTVk3RFdqdnNqVkUyRjN4SitCVEpzVmFxNzhh?=
 =?utf-8?B?RENJaXJJeXFsVXlsQUkwV3Irc255YU9zQkprWVBpNUR0S3Jpd3BIR3ZLUjJF?=
 =?utf-8?B?bHlBZzluMXVrRDF3a1VDNytmb2VjbWttSTBGam5jTEZKbWNDVzV3Q056UWxR?=
 =?utf-8?B?SVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8d1680e4-2f25-4326-c9a3-08dc21972df1
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jan 2024 13:27:17.6411 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Ya3djvx0jAiF0LHrHmKx5/DgTa93ldftWDGiJTfYWJMGXCe+JGCevHfH1TIxNYfZxehgPFWffvK6t4N3kJUyUJSXdpO9doB48AXig9VAi+g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7133
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706621240; x=1738157240;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Zmq0u30EzSV8geQTq6AaQ4EGivK0u//fNd2qeXlSstA=;
 b=mV4mp+tjGiCQPtxiWoaqpP2LjEjuSdvIfoXE6RdyM9fHTMPoI3Dim6NL
 h+2ow9nxbMpto7+iZgbqG3IQFb3p1GxmUD/RUmZ1B/AMcTo2znC+8LIpE
 Pnl3FpcAAUZ6d+44Mj7J0y0/KxDxBi0fQ4Xizysk59i9BPwlBKWlLXBlo
 b0p3bIWwPhZGRUI+EKkoLweVAk8s5clGiqctK0Ow17+KbkyJk7XDrHPrF
 1GwakV+psy/veIcHwUNHBc4MALoy3uzmy4KMRvJr9b05eUkp89sth/FsX
 CXsqfzf2vFcy2rfu0Z6C9HX4bIrqJ6JpYp+vhDSE2CLvoFjUN/Uae1Z4+
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=mV4mp+tj
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] Counter spikes in /proc/net/dev for
 E810-CQDA2 interfaces (ice driver) on kernel >=6.2
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
Cc: Jacob Keller <jacob.e.keller@intel.com>, leszek.pepiak@intel.com, "Czapnik,
 Lukasz" <lukasz.czapnik@intel.com>,
 Nebojsa Stevanovic <nebojsa.stevanovic@gcore.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 1/30/24 09:30, Christian Rohmann wrote:
> Hello again Przemek,
> 
> On 11.01.24 16:07, Przemek Kitszel wrote:
>> I plan (and my manager agrees :)) to work on this ~now
>>
>> So far I have found a few bad smells to fix in related area, will work
>> with Ubuntu as main test setup for that too to increase a chance of
>> repro.
>>
>> Also, just from the code there is no obvious bug (even if there is about
>> one patch around stats in 6.1 ... 6.2 range).
>>
>> I would also check exact Ubuntu kernel sources (not just "upstream"). 
> 
> Were you able to find anything in this regard yet? See my further 
> findings below.
> 

[Ben changes]
By looking at the commit range, this time also for iavf, still the only
obvious candidates to look deeper in are two commits by Ben:
2fd5e433cd26 ("ice: Accumulate HW and Netdev statistics over reset")
288ecf491b16 ("ice: Accumulate ring statistics over reset")

[split]
after them we went via major refactor:
6624e780a577 ("ice: split ice_vsi_setup into smaller functions")
After that there is more than 200 commits (for current Ubuntu 6.2 hwe),
including more than 5 fixes for this spilt (and much more just touching
code touched by the split), so reverts for the purpose of just testing
are infeasible.

I would check with code set to prior-to-split, then prior-to-Ben changes

> 
> 
> 
> 
> On 16.01.24 15:40, Christian Rohmann wrote:
>> One observation that I can contribute to maybe narrow down the issue:
>>
>> Looking at traffic graphs of three different machines (attached to 
>> this email; I can provide them in better resolution, but ML only 
>> allows 90kB),
>> there seems to be a correlation to the number / existence of KVM 
>> virtual machines:
>>
>>  * comp-20 has 29 VMs
>>  * comp-21 has 96 VMs
>>  * comp-24 hat 0 VMs (<< !)
>> [...]
> 
> 
>> [...]
>> I have now moved a few VMs to comp-24 to see if the issue start 
>> occurring on that machine then as well.
>> This should only cause some of the mentioned L2 components to now 
>> exist on this machine. The issue did not appear immediately though, 
>> but I keep observing this and maybe start increasing the VM count and 
>> networking load.
>>
>> Maybe the counters spiking is due to some offloading feature such as 
>> VXLAN?
> 
> 
> 1) With only a few VMs and no churn there were no spikes in the counters 
> over a long period of time.
> 2) I then moved some more VMs to this machine yesterday and soon the 
> spikes to multiple TBit/s happend. See the attached screenshot.
> 
> Some observations:
> 
>   * the spikes happened during or right after live migrating of instances

we are still going to propose full solution for live migrating on our HW
(however I'm not sure if that is a problem here), it was already on IWL,
and now Jake has picked it up

>   * the spikes then did not appear for > 12 hours
>   * I believe this relates to either
>   ** the number of linux bridges, tap interfaces or vxlan interfaces
>   ** their chrun (creation / deletion) when VMs are spawned / deleted or 
> migrated away
> 
> 
> 
> Please let me know if there is any more input I could provide to help 
> resolving this issue.
> Regards

I did multiple rounds of review for [Ben changes] mentioned above, still
there could be some omission (IOW code looks fine, but I don't know if
there is some path missing); then there was huge refactor [split], that
touched that part rather "mechanically".

Testing the scenario with code from prior to split, and prior to stats
would certainly help, if you could help that would be really great,
I will do my simpler tests with that too.

If there is any BPF program re/init during that migration it also resets
some stats (and if there is any other bug that could manifest like that)

Finally I'm still unhappy with our resource arrays reallocation,
thankfully it's not as bad as OOT flavour of the driver :~|

> 
> 
> Christian

Thank you!

