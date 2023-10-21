Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6850A7D19C4
	for <lists+intel-wired-lan@lfdr.de>; Sat, 21 Oct 2023 02:01:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8811E43490;
	Sat, 21 Oct 2023 00:01:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8811E43490
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697846471;
	bh=3T2ainhGT8vdBZMUd3fM9yro/IIhgXdVD8PdwTAkjfI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=X57W4eMFiVykhQ7fkd0G9jTYTIu+groB/Al0/G0+NaOHLyAY0Q7VaR7vBSUH2iB5T
	 PKi3TmuuKbfU0eiEN8DVa34fWhDz4woC/k3JrZTQ0sdKciXYscV3Jip5MpEqv0aVUb
	 Fs9MpJ0hhaV0EkmltLZPG/nlLU3iSegujmYsAuCSd7G+PA+rbHu3LnvPqSVxm0HBRy
	 hjzUMKUvWmQ0lsjyvfuna7oMkX5IAyW7bNVxrd76CZGhdJcCu8qS8tM86QSxQkkHKq
	 bHERy88oVTnI1m8YHvdVylbsxeitOPkja6yvevXo9hos1uOTw+ImNJmDUwT+YGmLz6
	 0JFzTwCoaoHpA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id T0f0YUHwmUcw; Sat, 21 Oct 2023 00:01:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 01FB543483;
	Sat, 21 Oct 2023 00:01:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 01FB543483
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7A8601BF352
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Oct 2023 00:01:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5A8F34348C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Oct 2023 00:01:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5A8F34348C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2-y1fwFxFcgD for <intel-wired-lan@lists.osuosl.org>;
 Sat, 21 Oct 2023 00:00:58 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2A2A34347F
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Oct 2023 00:00:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2A2A34347F
X-IronPort-AV: E=McAfee;i="6600,9927,10869"; a="5212036"
X-IronPort-AV: E=Sophos;i="6.03,239,1694761200"; 
   d="scan'208";a="5212036"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2023 17:00:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,239,1694761200"; 
   d="scan'208";a="5524721"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Oct 2023 17:00:56 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 20 Oct 2023 17:00:56 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Fri, 20 Oct 2023 17:00:56 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Fri, 20 Oct 2023 17:00:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ngpkM6smHrCeVxfQalBaXb5PE82WFPsPfrNAk9Ok3t1389CISHgqhP0Eiy83i8ki7T7YNywjNUehvf4Bcb3WuVoXnooSAmPFMC7POV1z78zwS/u4Rnq7aYY2veHY2HDmQNfqejV81fHgO+pgjc37X39G8E0fk62BHHX6M1O896GHbscoR+s4/q+w25uCrkFc5JFhFZ19RBNxgVBQlWb0KO+Q8t7gDiDN0pDwb40mWOlyyQGqPF+1R+ZdaXY2nWae/P7KRJ1Vg7U+OHWhK8ZLKdAkDD/QDkAxOgserZl58lXixLzBKla8QsbYlyYcEjNYwZQoS2950XtsL7SbOlccGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SdGtEvAs5q7rYrMKpO0uDLwpkXWy9uR5y5LLV75f5VA=;
 b=QvhuM3ne1cETfMTvSeQ2tv8KMnlw63qrI0JsmmGAnSMS3iuMqpKbmG5HEqzz8yH/AmqXNbqmvt0NH94aN7G0u6CRmkJRHTP7GgH/yY0UrMidtcwcUCXwY1NM1DgJJcsMGsYTmPGVa6U33rtvsxfHlFPcGEDmGZ+bwxCsY8cAOqiUKtopD9YJXwFM4khojnhrHn18WMryFUAYbbBO1lel7mFk2/vOFoPDm8MLC+i33waoru8VZFkyAPW+GPx07oPwMQAn2KJ9cpjVCgP3160C16XnzCZOVmHefCrsXkpUw+ll1oG3XDUfQEbpVOIm0PMa99ML1PmwVcOzNXpV56Rl4w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7420.namprd11.prod.outlook.com (2603:10b6:806:328::20)
 by SN7PR11MB7492.namprd11.prod.outlook.com (2603:10b6:806:347::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.26; Sat, 21 Oct
 2023 00:00:46 +0000
Received: from SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::2329:7c5f:350:9f8]) by SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::2329:7c5f:350:9f8%7]) with mapi id 15.20.6907.022; Sat, 21 Oct 2023
 00:00:46 +0000
Message-ID: <f6ab0dc1-b5d5-4fff-9ee2-69d21388d4ca@intel.com>
Date: Fri, 20 Oct 2023 18:00:38 -0600
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Jakub Kicinski <kuba@kernel.org>
References: <20231016154937.41224-1-ahmed.zaki@intel.com>
 <20231016154937.41224-2-ahmed.zaki@intel.com>
 <8d1b1494cfd733530be887806385cde70e077ed1.camel@gmail.com>
 <26812a57-bdd8-4a39-8dd2-b0ebcfd1073e@intel.com>
 <CAKgT0Ud7JjUiE32jJbMbBGVexrndSCepG54PcGYWHJ+OC9pOtQ@mail.gmail.com>
 <14feb89d-7b4a-40c5-8983-5ef331953224@intel.com>
 <CAKgT0UfcT5cEDRBzCxU9UrQzbBEgFt89vJZjz8Tow=yAfEYERw@mail.gmail.com>
 <20231016163059.23799429@kernel.org>
 <CAKgT0Udyvmxap_F+yFJZiY44sKi+_zOjUjbVYO=TqeW4p0hxrA@mail.gmail.com>
 <20231017131727.78e96449@kernel.org>
 <CAKgT0Ud4PX1Y6GO9rW+Nvr_y862Cbv3Fpn+YX4wFHEos9rugJA@mail.gmail.com>
 <20231017173448.3f1c35aa@kernel.org>
 <CAKgT0Udz+YdkmtO2Gbhr7CccHtBbTpKich4er3qQXY-b2inUoA@mail.gmail.com>
 <20231018165020.55cc4a79@kernel.org>
 <45c6ab9f-50f6-4e9e-a035-060a4491bded@intel.com>
 <20231020153316.1c152c80@kernel.org>
 <c2c0dbe8-eee5-4e87-a115-7424ba06d21b@intel.com>
 <20231020164917.69d5cd44@kernel.org>
From: Ahmed Zaki <ahmed.zaki@intel.com>
In-Reply-To: <20231020164917.69d5cd44@kernel.org>
X-ClientProxiedBy: DUZP191CA0035.EURP191.PROD.OUTLOOK.COM
 (2603:10a6:10:4f8::27) To SN7PR11MB7420.namprd11.prod.outlook.com
 (2603:10b6:806:328::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7420:EE_|SN7PR11MB7492:EE_
X-MS-Office365-Filtering-Correlation-Id: 3437f8ce-702d-4b73-4c3c-08dbd1c8c67b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 5emK9AH6BX5KD5WXB9dbgMyG+FxQWUF8vhgwtF6s9Mfb+L60VzTELNPdfKmEH/6cexxsspMCOWj34vFTGB+8LPsu2TjAj14EXS+7jWEcRRCo1ZMO9mll7t2omZN9eZjXv7zCZY2yyi6ZM8R0QMq7dY8fHwOtiX9G9wkOmLVPKCw9iGe3Cux0ASRYJNyaymmuUanDHEVmsvinpuYLnZ56ywBQ1Et21F918KnDZDIpAVO4qzzWBEheWce2cP530pBRFb1w5fqPx4OgkNVooHMBDupXbHs/H7sR+ihsXHIvF+bln1hE5UjGzwuPzaGEaTO0mY3TWVMKbLNCuVAj3r3PpnCUpiU5Dc4yKojWJ/NHCy7BBAVPo107071Vt9Nbv7j3LlZX6l2kaXpjG4CwNQbeJzpAW4mmv00UyOGJi+aSxQIQHUoXt7UV8U1+pQSBtQDje83YyPmHu8rDOK3bi+H2SeSpRFAFGpKKac8Skws9aszDHdFNJuXYBUh8SECAK3ZjwQ0qBX7DKsw4ipZETetuibbdZMso/b8SsAwKlMFRHHpUCNm4AdfVhuHPrdWYT8Mv36CHE9ieNn6nd5PlwQFvCm2UcneoTWQYEOcU4u/N672fhLDUyaO8xlcFI6U2zcmptFynvkzOPNA9sx7obGoOyg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7420.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(136003)(346002)(376002)(396003)(366004)(230922051799003)(1800799009)(64100799003)(451199024)(186009)(66946007)(66476007)(66556008)(54906003)(316002)(6916009)(478600001)(966005)(31686004)(6486002)(41300700001)(5660300002)(4326008)(8936002)(53546011)(8676002)(86362001)(82960400001)(31696002)(83380400001)(7416002)(36756003)(2906002)(6512007)(6666004)(6506007)(44832011)(38100700002)(4001150100001)(2616005)(26005)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?U1NFYjB4Wjc4WFlPeWRYNmNVWHZYZEZZTkZ6TjJ2cHlkZk8xdkZNdlc5cTI3?=
 =?utf-8?B?T1ZKVUZYYlgwNVVXNThaa1RFdzN3OU1kY3VsaTFpQVZPT1VXaENNRFQybmsy?=
 =?utf-8?B?TUR0b2RiWVVncTBTcGFIbDFlMzI0anNCeUtZY0gxVDluY3VRSWdxbVYwVmJM?=
 =?utf-8?B?a2QzN283SlNkOGZ0R3FIQnZsNmNUUlJJN0pqaE9EaUtiRlFCVjF4QnptbXJT?=
 =?utf-8?B?dnVRd0NvUklIOFVuZnM2ak8rYlo0MTAyRDdBaFMxTFNxakJ3Y3VXblZjclZo?=
 =?utf-8?B?Yk45K0ZDemVHTUVZRFVKdFB3ak1seEc1bGR2SHM0WUtoTEFtd3A5RlhUMzk1?=
 =?utf-8?B?RFpLODA1MkZlVkhCQ2R2bWtHQTMzTzgyY0xqb2RMa3NZbjVvVXFPZWJNOENi?=
 =?utf-8?B?WnVZNFZWdk42MFlWRTQzcWdHMkQ3SldyN1d5enltdEVwRllrQjIwSE1xTjlr?=
 =?utf-8?B?S3FoOEM2ZGV4b2RuMmRPbndKeEwzTVlJS3R2MTBNT2RCS3duRHlQNUVPTkw5?=
 =?utf-8?B?aG9lNHlCZ203QzFEVkROei9uYnpHMlM4UGsxdjNMbEd4R1ZtMGdNc0lRMldw?=
 =?utf-8?B?WFZrVjViTkx6NEFNYzRBYmZGYnpsNWZwMm5obHRrODI5eVUyQVpudFJBalY5?=
 =?utf-8?B?WFhFMDNkRHA2Rnh1VGR4eVBRbjIyMTlnZDBLWEhzWE5RMm4yQ29UT2ZkMjcw?=
 =?utf-8?B?bmVMeXAwc05OeWRqNnV2d1FhMEl5TG5uZWZZOE1wbnZUcGhUZW43Y2JFYXFP?=
 =?utf-8?B?Ym1QNVZDa1dmTHBHbXV5T1FFMXpWb0ZJV1RLYVVxdEp2SW5CWFkxVjRiTkhD?=
 =?utf-8?B?WVE3TjdSamZ3TTBPQVNWZXlKMzlkWWNSTVdMRms4OCtpRHY4UGU2RTQvS3dK?=
 =?utf-8?B?Q3pWSmdkZmhRM2dEdHE1clR5ODdRRm1DbmZNZEVNUlhwWEtEb2g3UkkralVY?=
 =?utf-8?B?WGFvOUhaSmtDLzNjb0tGZEtCSE9Genp1UFFzY29XQVdEOXhUMTA3MUt3S2pw?=
 =?utf-8?B?S0NSb0ZONHRqK3VOaVp5eHo1OW1GZGlkbGx6NWYrRFFQaks3RE9kVnJyYlli?=
 =?utf-8?B?cS9HTUtmRTBjUi9yUVhNTk1pSURDNGNkeGM4bGxkdmtMWHR2RTQwa2ptb3Jw?=
 =?utf-8?B?Z1d6ZWJhYW9YTTU1cE9QV1VGMiswMW5oeDZ5NVJJaFQ5RDdhQldlZnBLMUFL?=
 =?utf-8?B?RlBmQUJPNVZjeEJyYktuNk1EUE0xK3hmanJJVE9zdUIyVTVwVDZTRUEybkxY?=
 =?utf-8?B?TjBYQTFDMDVsalNDRmFKT3VoRXpURWx0TktSQ1Z1TWoyNnpVamtWUldQUlJO?=
 =?utf-8?B?WGd1RGQ4V2FUYm9ma0ozVkZhQnRnb1V3QmErNExtZ2hoOFVsbkhreFBzM0Zu?=
 =?utf-8?B?TStaeUZEc0JrV3E0Y2s4eUlHdHVSWE1nUEJIbDFvSVBBWHAzSFRrcE9nSGdo?=
 =?utf-8?B?N2k3V3dhRzUyYnZCUmhwWFFvOVllSTZ4NWljN1NwQ3RiY29xTGEyZzJueWJo?=
 =?utf-8?B?b3pxT3N0TGhWRWZmT1pQTlBxSnJnYytwL0l3eGtQQnVxbnhTSHNjWjNRa3hT?=
 =?utf-8?B?bjJkL2hMeHZUdzNRaUZlcmJmcXBzZ3RGK2pVOThPdHRRYTZQTlkvM2RGZVVj?=
 =?utf-8?B?RVhYQ1FNektDYnloNGlhZ1lONkFMc3BzQzU2WkU4ajVoenJuei90dk9MSDhU?=
 =?utf-8?B?RmhVZVA5SDlmRXUvYmhGZTV0YXNYekVxY3RZd00yWUwveTVJc1J6dkxhdnM0?=
 =?utf-8?B?ZnNYYUNFbHFTaUloK2xvYUc3alZ0OTY4N0dCeEpWS1BtZDljWktreHo1a2Ew?=
 =?utf-8?B?cFBzQmxSL2xiOEo4Y090SkZuVnNoSWVTWlRnTjRwWmVTcUZFRkVkTFlPZWRO?=
 =?utf-8?B?V0h5WUQwVUZFUEZzdDVSVHFRNStmYWVwcVcwTkp1WE95OXlOY1grd2JRKzk3?=
 =?utf-8?B?UWhUdWY0OEJpaC90ZjZVK1YvWklCSC9Qa0RHeTYrV0RrQjBVTGhOL0p0S1Nl?=
 =?utf-8?B?UnNhSXVBTWJTSXZaaXJnNDJ2S2d0RWpCTWdKc091VmUwTVE1dmsyVHFuaU5a?=
 =?utf-8?B?NFFCYjYwSkxyMW02dzBsWEJTbWVQSUFORHBuanZHK01GS1E4M2lkM1hWbTFp?=
 =?utf-8?B?Z3BtV0dQcFo2WVBKMjFuS2RrdlhsTzBpc1JMcnhsaUFPVFBaekpXMkJIU3oz?=
 =?utf-8?B?YUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3437f8ce-702d-4b73-4c3c-08dbd1c8c67b
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7420.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Oct 2023 00:00:46.3425 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4Pn0kcFq/z+WC8a18GZXMskE1MbeHApRsc2cPDsdQjuX8ikNGie4xVcKVxr2qE2p4S35yejOe2xFftP7lyAnag==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7492
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697846459; x=1729382459;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=lnPReLFxDVs858aMmbeuUyc9aJnf1Cdy8DQUemetoxE=;
 b=NvHXTnD8Hn3pmGcMIdY9R0uwXVx+Y/2F8l/EbiXHbdzNjv4HYsp5CUz+
 jaGAy0+s318kXh8V9vNwIQ5WfW0LOR4OEnNCW9MbPvsoL5DSHUbx+wa/+
 QVVKtEQLLgH3+UHbzEanrG65FmAiISexqZHPn/M59JO4YKMH1Wr0rWnv2
 eLFO4mel3YwBYd3/v53bCla51ciFVQ+j0w5/jZbuEVVbGEJS4BLkktdO0
 68/r4/gkLVIblkuPD9E0QnDEDXW1pBPjJ5mMXhyjxK/ovv4ugMdSFQ7oY
 wFt+upmaz8QTTnRnFBMNTU6lagjGlSv3uw2yqt9+EMmJFrPc3/Aw90LYY
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NvHXTnD8
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 1/6] net: ethtool: allow
 symmetric-xor RSS hash for any flow type
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
Cc: mkubecek@suse.cz, andrew@lunn.ch, willemdebruijn.kernel@gmail.com,
 Wojciech Drewek <wojciech.drewek@intel.com>, corbet@lwn.net,
 netdev@vger.kernel.org, linux-doc@vger.kernel.org, jesse.brandeburg@intel.com,
 edumazet@google.com, anthony.l.nguyen@intel.com, horms@kernel.org,
 vladimir.oltean@nxp.com, Jacob Keller <jacob.e.keller@intel.com>,
 intel-wired-lan@lists.osuosl.org, pabeni@redhat.com, davem@davemloft.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 2023-10-20 17:49, Jakub Kicinski wrote:
> On Fri, 20 Oct 2023 17:14:11 -0600 Ahmed Zaki wrote:
>> I replied to that here:
>>
>> https://lore.kernel.org/all/afb4a06f-cfba-47ba-adb3-09bea7cb5f00@intel.com/
>>
>> I am kind of confused now so please bear with me. ethtool either sends
>> "ethtool_rxfh" or "ethtool_rxnfc". AFAIK "ethtool_rxfh" is the interface
>> for "ethtool -X" which is used to set the RSS algorithm. But we kind of
>> agreed to go with "ethtool -U|-N" for symmetric-xor, and that uses
>> "ethtool_rxnfc" (as implemented in this series).
> 
> I have no strong preference. Sounds like Alex prefers to keep it closer
> to algo, which is "ethtool_rxfh".
> 
>> Do you mean use "ethtool_rxfh" instead of "ethtool_rxnfc"? how would
>> that work on the ethtool user interface?
> 
> I don't know what you're asking of us. If you find the code to confusing
> maybe someone at Intel can help you :|

The code is straightforward. I am confused by the requirements: don't 
add a new algorithm but use "ethtool_rxfh".

I'll see if I can get more help, may be I am missing something.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
