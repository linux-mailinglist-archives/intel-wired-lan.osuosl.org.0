Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AAE77835E2
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Aug 2023 00:43:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 175AF40A58;
	Mon, 21 Aug 2023 22:43:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 175AF40A58
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692657814;
	bh=Wh3V5kZYkwOXx6Ss/UX95w1gxbTozGmNkcmibhslirs=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Huvff3sz+vUSPa0antza/7fU7bVLiSmUmnBwp7qmRBhPnandzk7XbukcGElvG2MQV
	 8BRDXIhCsT0I5kFSi9AdP5KHyBmW9GIH8MJrMa8cSURxCuPQUVjwZ26XQWdIdPW6Fz
	 tjfwXK0H+K7YXlthyUJ8J4JodavTOVpc+pZdUpYficTVZ1ng2beOW1uyfNU9wkiyzf
	 /ny+4GYlDjbcqBr2W5kRqRkhCSp70VUJwj8GSeERdvbgfc7N9DVI4eNti99eaBTeDC
	 gxc5jikswbkxR32CP+XY+m5fOmEwI4HKN5FtvjV4DMtCedzw7XsWHai5TiFzfkjHZK
	 Qaqob3EsxRupQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WNBT578gy-ee; Mon, 21 Aug 2023 22:43:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 010EF403A4;
	Mon, 21 Aug 2023 22:43:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 010EF403A4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 091BC1BF35B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Aug 2023 22:43:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D53AB605A9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Aug 2023 22:43:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D53AB605A9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CWx6RyIAiNeC for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Aug 2023 22:43:27 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0C81960594
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Aug 2023 22:43:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0C81960594
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="358702680"
X-IronPort-AV: E=Sophos;i="6.01,191,1684825200"; d="scan'208";a="358702680"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2023 15:43:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="1066789605"
X-IronPort-AV: E=Sophos;i="6.01,191,1684825200"; d="scan'208";a="1066789605"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga005.fm.intel.com with ESMTP; 21 Aug 2023 15:43:23 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 21 Aug 2023 15:43:22 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 21 Aug 2023 15:43:21 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 21 Aug 2023 15:43:21 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 21 Aug 2023 15:43:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Xz5/om6qXLqm/P/L83jK8qHozvqCKQrbsmHbp0K1paeEl6B4yr9HWawTOrAX1+f/AEP45lOpxlpvOmU5TOUIyS2bM1JneJviNBVVw203XSrIy9/IHMbQ8bJA1JtNfXouvU5CiDmJnZxrpsMDAKtRO2Owg3EMuHy/SK3+/CHFQNBgjhI93yWmRcShZ7DtbteD8CnMElK7yjDTIc2LHwRBZkRTvjx6tmmZ7iZLj4TbkkcJyKkESrmy6UwZXjdfSQngjwwBwpEcOanfi2A/yt/kpRkVr3Tb0wsIXAPl9o5Ue9y4wmdG262ipK0GRmAVY2mVy+MIlCrqgQ0WHGnNLBip+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=T5UP/rYr97Ic4RhdOMZ8N1vcf/C2GTSVYgZQ7RZmT7w=;
 b=BN5j1k3cmW1WhK8rA+D+bmNqXjZrwlHcbwsFltCj3O1S5BBmlXxxSfv+CSwtCw+yrv2r1JSazX7wL5eoOOQFjX3nBq4sYX1yphwjVsqga14N0WlCs6UpjKuQni4rFM3kbup2rGPVNY1F68qyCdB1ucCFgmdykKtdMIJsM0m26XdzJsNwwzEV7yk64yal4BDQsdRagwE0GDehc7Zpa/+1V+QoNVEJhjz6XWlehoMn4O7EUNYUqPr2Q5binqs3Qd6qJZaC1m+wfcsSvvJvku/D/1HoWZZcwENrm3VYg5ZiX8lw6fnov0NyFJp+d3Ru+bhvph2Vs3QY63hiD3rWoz4YKA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7420.namprd11.prod.outlook.com (2603:10b6:806:328::20)
 by LV8PR11MB8700.namprd11.prod.outlook.com (2603:10b6:408:201::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.20; Mon, 21 Aug
 2023 22:43:19 +0000
Received: from SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::3e89:54d7:2c3b:d1b0]) by SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::3e89:54d7:2c3b:d1b0%6]) with mapi id 15.20.6699.020; Mon, 21 Aug 2023
 22:43:19 +0000
Message-ID: <b2921ac1-e436-42e0-ce1b-10dcd1ca6ba5@intel.com>
Date: Mon, 21 Aug 2023 16:43:14 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20230818150558.638998-1-ahmed.zaki@intel.com>
 <a934455a-b94f-8d92-f2c1-e1776509d5c3@intel.com>
Content-Language: en-US
From: Ahmed Zaki <ahmed.zaki@intel.com>
In-Reply-To: <a934455a-b94f-8d92-f2c1-e1776509d5c3@intel.com>
X-ClientProxiedBy: FR2P281CA0148.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:98::6) To SN7PR11MB7420.namprd11.prod.outlook.com
 (2603:10b6:806:328::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7420:EE_|LV8PR11MB8700:EE_
X-MS-Office365-Filtering-Correlation-Id: 3ac2752b-93f8-4868-618f-08dba298042e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: HUWds9BiuyR+sftatHNwHHKuu3T12iD7DB5uT1VV+UQt7nFRITckGi+YnQIOaQshW3G43tUcmGleoJyCi0cBYtMHidGBRsqv1FVoSXcpEdzGxMWG3xIeIqXYIHg3JAvnct2qLhWazbUjNhbsPN4mFBb5TfUaU/VCszOlt6E+o/AYveLf1OvNg2ivZbchMoOdjEW792OZRmhLVZT4/KuT5TZMS8Cw/YRXpiFpMyWR81/PFn/HPwbXo6voo6z1SqOu1u/8CJUx5+RVvhyIEfFEW0O9fNl+nO9AuppCYYYXoM3Z+YV0l90pIPj7qAeHrkeZbmaT6nATKcfR5Wr7hRrmYPkY55A2nN9TYJ2L+FzvDUC9qptniyEoPwBYTny0MG7tvU9tlxJ2pnW80aIU8PNuT1CmwAG0OofyibbxoPqn7ZVdtZvI5RDKqAj2SuoGFQbZWmejdt/BoDI4tGJTUul8zERCVfBRaQKduW1R2pjgX4nCk9kedsgpi8BwMfgdlWY3HAG+Oe1+I+BaFObKEy2gR5cv08rj4zSP8k/cvvgtc/hCfcGMmZe1gYIDyEGB+SVJ+eXeATTOTUkoxuKU3rU9VflsaQnpQ97ebRTjNG/cd6GlpUU2XAPsUkrnBp2eJPV770f/wAT6hpdzb076UoVJdw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7420.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(376002)(136003)(346002)(39860400002)(366004)(186009)(1800799009)(451199024)(66476007)(66556008)(316002)(6512007)(66946007)(82960400001)(8676002)(8936002)(2616005)(36756003)(41300700001)(478600001)(6666004)(38100700002)(53546011)(6506007)(6486002)(83380400001)(4744005)(2906002)(86362001)(31686004)(31696002)(44832011)(5660300002)(26005)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NWphYjFkb1BOYXhpNFlJa1V0SCt0S0ppaGUrMnQ1N3lsakRsdWtncDRmTXJO?=
 =?utf-8?B?bnM3cEwwb0VWcjNPaEVUT0xxZW56a0dBWjNZNUhoT1owdlN6Sk1lZ3hRZ3Y3?=
 =?utf-8?B?MDNxZkhBWStvc3BGbVcvNGMyY0dhdHVmNDF6empoVjEzcU1pWGxBR0lBYkRy?=
 =?utf-8?B?RkxTYW9aRjcxUW9oY3V2ajFuOFhTdkhZYkF3ZGNWL25LeVp6ay9Hcld4UUNi?=
 =?utf-8?B?cnhwblZMMTAxRVB1RzE5WHNJcFMzMHg4akZCcEtjVVVVSXZwdXB6UUN0RUdq?=
 =?utf-8?B?NUhZRFAzOVZBVXJUd0dUa25HMWNNazQybzI2MjRwZGZiWTZDdEp0ZldiK2pv?=
 =?utf-8?B?eUlrN0d4TTk1b0pPWWc3aVY2aDZON24xL1pJbU5WSFVEbitxeWIyWlhEaTRh?=
 =?utf-8?B?N3BiSFJmTEd0OHlHYk9YUm1PRFh3YTFaK0MrZTkzaUVLSlVaK2pQbFBaZm5Y?=
 =?utf-8?B?SHAyU25VamlhTk45V0VOcXV4WjhLaU1VdXljVlE3Vnc4dm5aVDZuU1VVWkdH?=
 =?utf-8?B?UHplT3F4T1duemVtd3BxWFVZbU11M05IUXlrWng0WEZwSTlsQlBTM2E4T20x?=
 =?utf-8?B?NHFNTmNWYWcxa29lZGpnaWg1cXh0bEZSb3g1WTExUVhRdFRqTFRSUjF4TkFD?=
 =?utf-8?B?eUpHYnhJNEcyOE85b0RtSWJyZXdVR3p3MjNiUFFuZ2FRZUNQSmlvbHoxYVls?=
 =?utf-8?B?dmJVZ2hoRDNzM2xzZEN3NUdScGNNeDBrUEpqVjlnSkhPa0EzUldJZ1pKc0Nr?=
 =?utf-8?B?UjZuMUZ5MVJ3T01vd2NVMlJqOEdZd1JGOVpEQ3llVHFjMU9wVGlIRFZZY0Uy?=
 =?utf-8?B?TFhJRDZodmtUcjFWcWM0RTk2T1Y2WUF1OGg5TlpmUy9EZm5JVks0MUdxMjFR?=
 =?utf-8?B?ckRCVmpBMTRPL05SdU1mN01XUjlyMDY0Q20zdnY4RDMzdVJCdEtxRzVsU21L?=
 =?utf-8?B?ZmZkNXppTDNjZmN2VTI0NlZKeGk2MnFHRyt1cVBQVEV1dlV3MmRxVHlqV1Er?=
 =?utf-8?B?MUFZR0d6VnRrbDRMdklHQTdKY0ZiWVhEcVJNM05DQVNtNWMxaDd0L3FMR0Zp?=
 =?utf-8?B?YzBtR2VOa1d6QkU5OEV4N3FzTWhUNmViTEsweGMyQ0MwMFJON3VibjFKcVlU?=
 =?utf-8?B?bDRjVVJRQkVPWDJrNVluekxZdVpOWFBnY2hvUDdSTFphWGtFVHppcDlXb2JX?=
 =?utf-8?B?T21FdlArQ3FEV3Yxb3o0Q0VOaU03ZWJsMmUvQWovV0loUytZMjRPYVh3R1Qv?=
 =?utf-8?B?Mm15MFZ4ZldYaUNVSW42eFNSKzBZTzlVOGFRYkJyTEM3RWo1Um0ydk9sV2s4?=
 =?utf-8?B?aDV4RXcwb09FenA1UFZHRmgwUUY1dlB1Y2JkcEdkSXlYbE1TSUhBZmRtMGRW?=
 =?utf-8?B?ZlRnNjBHTFZCbmo0ZlgwZnhPR3IxRmtDcjJlSks2KzJOQS9lK1Q2NWw5ZDAv?=
 =?utf-8?B?dTRTbmh0Ry9yazdNMkhnYlY5eEI1QjJqWHJZQjBCY2VxSHoxNFI0c3NiOHFi?=
 =?utf-8?B?TlBnOWVyVWNUclZvUXdHb28wTWhyRUdHOXZzSEwyYk5nS1FjSFdmbm15dXJO?=
 =?utf-8?B?cEJUWCtWVE5jaGlNenU3QVdUSUNzM0RwMmpWQTdRTjFPRmJ6V1lNdlZ5WXUx?=
 =?utf-8?B?ZnlUc3UvWjZiZFpBb25uMkIvSEdLV2ZCZllxMjRaMU40WVFFNmNrbWxqUjk4?=
 =?utf-8?B?N053dW0xTVlQY2FhQU5mR1NtNzdobk42V0YvOE5Ca0F3YXZVcXE3ZVB2ZE1E?=
 =?utf-8?B?cWo2RjNpenpGMHJReTluc3JIMElWQm1SQi94eWZVanlCcUhlTi9FT3RXL0pR?=
 =?utf-8?B?VEt4d1RPdi9ZK3dJcVFJdVY4bUc0eHA2eUtvUDc3VjZVTmJVVFM0d3pLRjN1?=
 =?utf-8?B?TExQRnczSVJYSE1nY0NTYUpVbUw3dkJVK3kxQUU1TkYwS3hJY2t2dDhsa1RE?=
 =?utf-8?B?K3ExUDVrNGNHRGQ0MW1oNGJURU5aOGV6SWU2QldCUmFnVUZNVXZXMU85MFBQ?=
 =?utf-8?B?Vnl2WnhnWTk3MXh2RkpYS0dBOVRKNWFuTzVrME4xM1F3STFINEVKcGp0MU1O?=
 =?utf-8?B?L3JLeC9KZGN4eWI4a0YyR1E0cWEyUE1aUXJ4R3Zkem15MW1VM1MvNythWDBo?=
 =?utf-8?B?VHJ2bEpUZkt2eUZQMEdiM1EwNUpJWGJjRTlxV1pkOXI2MjY1ZnN3OTNHdU82?=
 =?utf-8?B?TXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3ac2752b-93f8-4868-618f-08dba298042e
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7420.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Aug 2023 22:43:19.4294 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pyiC6U9DQwPXmDY7OANl3TaWucCGiHnQxbT/Aw7RauzG068+00Cy6Gw49VsUFb+vrsQG5+27AN1hUNm2kZuh4g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8700
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692657807; x=1724193807;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=WKAeEARfSe5B1cGcKGnFhlWb/7Fs8qV645UXIyF0T0Q=;
 b=GPpNWhTo+hfNTlroevcMZyvDDSV0s7MZPKvmO0LOrrLUBldTUZPDY8iG
 ZD1Nkdif5xQ1Sun2eKmIjUBdePMMaBYLL/wXl0W/X9AeoVofEvUwu+RNV
 5kbnGCSWW+mCTtufMe9ada1mQLbE0U2KPSje4E0V/jzJAv+nv2YyU8eep
 vlqhmff0JBQS7Qxws1jrSAI8VaZtdB/FWk06iibYtLO0roomKtnbJNuPx
 NS2zn/u08CgL4tkrA900U0Q0sC1fdy6NnVmNZEsyY3mfVe+NrJmS5zIPD
 I1jarpGtx5IxWeLWveiyhNSHSEw0FFqPeSjXVBoKQv2/zDBgX5EEzOh2P
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=GPpNWhTo
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] iavf: Fix promiscuous mode
 configuration flow messages
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


On 2023-08-21 16:35, Tony Nguyen wrote:
>
>
> On 8/18/2023 8:05 AM, Ahmed Zaki wrote:
>
> I believe the author of this is Brett? If so, I think you need to 
> adjust/change the author of this; I'm not seeing From: Brett... here.

You are right. I will fix and send a new version.


>
>> Currently when configuring promiscuous mode on the AVF we detect a
>> change in the netdev->flags. We use IFF_PROMISC and IFF_ALLMULTI to
>> determine whether or not we need to request/release promiscuous mode
>> and/or multicast promiscuous mode. The problem is that the AQ calls for
>> setting/clearing promiscuous/multicast mode are treated separately. This
>> leads to a case where we can trigger two promiscuous mode AQ calls in
>> a row with the incorrect state. To fix this make a few changes.
>
> ...
>
>> Fixes: 47d3483988f6 ("i40evf: Add driver support for promiscuous mode")
>> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
>> Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
