Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 52B685F7528
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Oct 2022 10:19:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 65EFA83F9F;
	Fri,  7 Oct 2022 08:18:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 65EFA83F9F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1665130739;
	bh=w5xKQ84hykFIeCl1rIZq2XbBfTkjLBVnzJhFMWZNlr0=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=2qJA5Uen3+3Apv9HQvnITLiSmP6EITlELoH5opeueNHX5PXAywheZIQW6uHPMIRjW
	 p0VaL9Y+t7nvdNJDbXvLYvYG+q4QkG2LCAgMRlu0xjajfokLWzNPFtitMZBCyokAaA
	 Ly66qko73elUZAY1BSB2SnmeeZ/FRDxSYKpAFJQvZg7lJGA+hWjL/+okNypky5N3xT
	 vHkClYxyh66zsrq7klHT+m4fpIGxdmHcQpyxLm9P+Np+90bP+0ke/03zpnJdGLca60
	 3pL9StSmUwyQPOHGMp+LPBW4pz7c7vJ1TgvJ5dFLf1ZhbEtiFx0oTHt6x7FC2ZOZI/
	 RPNscaBFj+IPw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DE495AzC5JFf; Fri,  7 Oct 2022 08:18:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id F41FD82F3D;
	Fri,  7 Oct 2022 08:18:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F41FD82F3D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 616AC1BF423
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Oct 2022 08:18:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3B65A40474
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Oct 2022 08:18:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3B65A40474
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Nwk7ZRx2lkMJ for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Oct 2022 08:18:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 44CCF40106
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 44CCF40106
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Oct 2022 08:18:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10492"; a="303662253"
X-IronPort-AV: E=Sophos;i="5.95,166,1661842800"; d="scan'208";a="303662253"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2022 01:18:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10492"; a="655970682"
X-IronPort-AV: E=Sophos;i="5.95,166,1661842800"; d="scan'208";a="655970682"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga008.jf.intel.com with ESMTP; 07 Oct 2022 01:18:49 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 7 Oct 2022 01:18:49 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 7 Oct 2022 01:18:49 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 7 Oct 2022 01:18:49 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.105)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 7 Oct 2022 01:18:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QqPSBVmoyoefXFRN38SFjkWYc2lM4BqdyEbELw1su9uE5RjeK9x6ww1bpvUZmsddTmQ3rSNmDmps8ilCI8QOaV2PytxjB/UCWT5o43PG1DR3arUThRT7SN7KKNOHSg7OZxpPm2Vi5gJEoohnju8vXubwAcCJD3zURg7MfxduAa3MLsvKLJCnbbRiof/chm+YweY1Acnf0sKSgB5f6XoLz56UL5cmv3o6WJy4Z75sNs+IzUWKlOHXhwHEH9KnFnxasTuYksItPuBXTWl6kXWTQeuSVAxPwbtNYLSlB/WlAn0XQNPGp2IHEsN2FBlR70JYksGdBOcM+oVCnoUQiXEq2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Hutvo85Gxkje2TA4eD1AMxluOdp3cGpzH/RmPIIvBMw=;
 b=WbeV0NgvvtQtM2JCExmFNys1XbLatxH/I9oqk8ve35praXkLYLwhLkN16qBDnt4BChihttrPfD0xEZBpQyFJO0LozuifpWeqHWO6dyrJzAw4xJZUcZgN/bJWsFxaPV0xnFe7k5x/0X9Zh65Q2qhTbkEPylU6eg01eCABzSc4NTdhMfcQtamro00dw1mvaB3jLV1mh/n2e1dwkRF+9+rcrK/p7rYbhJIba8qh+e2eaSm9VVoFmt2oI+5p6PV4a74/BEO45yxizBhArM3vYNtQX63uuIhBRTPqLTaTO90bNdsj+v7d7yKNZRoJdKcdcQROMNsAqVPV/SfYWT0twEknBg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 SJ0PR11MB4927.namprd11.prod.outlook.com (2603:10b6:a03:2d6::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5676.24; Fri, 7 Oct
 2022 08:18:47 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::6ae9:91fd:f3e0:7923]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::6ae9:91fd:f3e0:7923%4]) with mapi id 15.20.5676.028; Fri, 7 Oct 2022
 08:18:47 +0000
Date: Fri, 7 Oct 2022 10:18:41 +0200
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Joe Damato <jdamato@fastly.com>
Message-ID: <Yz/g4W9rnhLcBsrd@boxer>
References: <1665099838-94839-1-git-send-email-jdamato@fastly.com>
 <1665099838-94839-5-git-send-email-jdamato@fastly.com>
Content-Disposition: inline
In-Reply-To: <1665099838-94839-5-git-send-email-jdamato@fastly.com>
X-ClientProxiedBy: FR3P281CA0154.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a2::7) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|SJ0PR11MB4927:EE_
X-MS-Office365-Filtering-Correlation-Id: a13b80b4-0b98-46b3-f821-08daa83c8ee9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: eRvYUAwz034b4vHuNdS70yoo7hChFfHfxhT1AzDnuB1g2UfZ/9/5kSThF6ofWoXNdCFfyBW5HAfjZt54RSNsiiBB/mBeGAgUZ6jfi5OIusdZWC8BELnACEPJfsN3QP7n0S5eokKTG/V56mSoNl/RTqspG7xEdJmiUwB0S4qr0F6vW+7GqAzPXDQj0ljYWMwt0cn/GqVmxcUsZ8JZXZ6zi9BDDaSwNXGC8ihWlDnzR0/9VF0ILZPlwIttL7UEFhZSBF7JvrVq+/82HoggJ8V8XhizItK6wWUAZCSKVFfHw6e3oZ7NFNzsONEB0sOnNHctUGMm+mby6Qqvo3sWUc5xMsPVcjNCBR06h8bbTVi80uddM3RaCCwENVFLxko3uubqapbxtf9HvIecRRm/yZGLT1UHUmYaFznDCb4O7ZYWWB38MajIdAv4nC4v8CP2hTM8D/PV5WOr/9QAYunNoR0l0q+F5x8TETTq7Pabu6So64H2y22d13k1+dD8LY8pIqWldCMIMrT3gzNGdnF3eKlFv3DFWSE7gEF9obfCUla3Jj1vv7LXC2SymtlkZd6YY27x9aIv/uzHuI/vOsiZGJRDLoRXmHao+vxQh6kpgdFw37svbRQnA9fQWD3uR8ZOe39e4x7SmYW9XT4BCoAxu5ib5ZBEQN1bULzs+F7M3yM21SA+ryc54FlpaU1x/EMmuAZpGlmdwD9V3ngwffqxuNSH6g==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(376002)(366004)(396003)(39860400002)(136003)(346002)(451199015)(38100700002)(6506007)(86362001)(316002)(6916009)(6486002)(4326008)(5660300002)(66476007)(82960400001)(44832011)(66946007)(8676002)(41300700001)(2906002)(66556008)(186003)(33716001)(83380400001)(6666004)(107886003)(478600001)(8936002)(6512007)(9686003)(26005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?s5//Tt2komQO0W1F05/p7/du8CJ9Ti7G3Dc8bwZGcjPfgMce5SQxzQOqi1xg?=
 =?us-ascii?Q?xnWPLY3gwkMSUlzkeRkrRqF+kQmTaWue0kxzbpTvrfJZpJFm2YeSeFaWd+rF?=
 =?us-ascii?Q?LcnPUdZ+YPe1LQMBxOe+s4Sens9WbstaIPUQ+nTt+Dkg9OhugTc6zX5erd8y?=
 =?us-ascii?Q?CWpW/STRXelLiXN0l4T3U/eeF2vylUlDd3fiSkwWO091CCIhvEbQxMvw4S6D?=
 =?us-ascii?Q?CDm+clpBuqsyMaCJpJODTFKtIQ6CuaLLRGIH3UgBvsCK9qnGmff51RXWiIIJ?=
 =?us-ascii?Q?Ptj5GMK0HQKor5stf7Qgd0IWQxm01Q913PB/pn1fLNis2DDJ2sCzn1PfHB0f?=
 =?us-ascii?Q?CArsffdC6/D/xGV3riG6LATS2mn3b24dyKE19aKDiR5OUQuIGmGHOW3ioXDr?=
 =?us-ascii?Q?IQOkZrv2NUXfjPjp7CS94UbPJrPXotVZfOQDyaeBBqNEr4clgKgr0zeBlgR/?=
 =?us-ascii?Q?O2sbojwgVaItLQ0tDjjGmx80XxGvL6PIJMyfnlq3+fsd4tw5y7zSRdGBtEro?=
 =?us-ascii?Q?wyJJzmvcLW73lo6+mRecb8VkI5oer0wpdIm1I2U+GISbfbmp1SlaOnTU0lwF?=
 =?us-ascii?Q?FRBHac17KYP78+c4Ozku+w/BIsk351qKjXFzLK6nOS4x140Cc3qfwNZzHEVf?=
 =?us-ascii?Q?EY+DsfazqeeBl8sSJXukZDNqT57Hff8CsAcf6k0aJGVYaBCZsz76Tu5HNC3L?=
 =?us-ascii?Q?0zISIbdJkCXBKaoYVpKfW7RjP7JW5OQ624QGl2EYjE08QlAjW1nkq7APGGxa?=
 =?us-ascii?Q?b5W8drrvtP6Q/EGkE3QGeRkLveFOmcxWh4iIJalwrNGlx3QMNDvoZsGsYwFo?=
 =?us-ascii?Q?cp+XgSOHJiNnRNHsiSE9m90c54i1aBvP4jQ8AMdHl24HYsIcZB7151RUUbhv?=
 =?us-ascii?Q?AqbQ3BC6ZrvZfrdToKGVyH7xO7xs8d82WO9cMEQVdwAGCNG8MrHywN+d24Iw?=
 =?us-ascii?Q?7HxPxl+JhghLjGRPl9dAtmRuXGepQPGUnBcImcHrjxvNiOHGDzKh0NG91yJ4?=
 =?us-ascii?Q?Ff0gtfrbGOZadQI1y2OdzKq0UyUV8t9jZJF62gJKRsg/NYMPYcwG7i64OFJV?=
 =?us-ascii?Q?kpC0FlFSBaNnumOA84tYwPupDKYBYBBOaFhxJdBKj1k5Lw/Bqx80cNYUnY7D?=
 =?us-ascii?Q?3x98T3n/bW7IVjXSJCAhS0qQCqcUjZ/gFnm4shq3kfhf+Dut5xAMs4lCuUep?=
 =?us-ascii?Q?606n1IQVrX1YXxFGzse4yp423osnUFizYBg4Frzl64c7YQAylFkR5hyO/weV?=
 =?us-ascii?Q?SdSPRMWK6G2yOXpyIVSQiDk2aqJ9GieKvyHv0aXV7+W+ouZTZUxaA5teSJl4?=
 =?us-ascii?Q?6sWesgsJj3spMXZKHmwXIRd5ZKZtRzI4blKp7ou8NM+rNlrDppJvOuk6j7ML?=
 =?us-ascii?Q?ZLXGdhzs3PIrFBCOPPi4ainBfTOHpIaB4/SJzrRm/7SiKydssYrKxU97Nbvp?=
 =?us-ascii?Q?f+sei0G1vXk1fIEcyTjxcMu1btqeyvIcTZ/GfiNgJjR8WvtI3oaS44eUkeXt?=
 =?us-ascii?Q?1pEKpM38OMOo10c/D/49IYHDEMUb4bQWHR/urusRZ9xFWgYA/5kuUMujNW08?=
 =?us-ascii?Q?d78a4RHH9hYyqhsjtcJcbnM3ZViO7+EsX82qxSqU9c2csjWmHfNx2WFUY2AJ?=
 =?us-ascii?Q?9KDCKjuyd2XC+0IUz4m3SG4=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a13b80b4-0b98-46b3-f821-08daa83c8ee9
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Oct 2022 08:18:47.6642 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qZBO/56qHbNQCU3XoXzZu7x5KNbYI20b56iAvQZn7et+BoKWXGKE+njFu9QRSUtOrE6XLxpwTEm9C/gDsva864LDz/2zGmN73rvaQUeh1t0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4927
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665130731; x=1696666731;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=EiY+9MC1KxSXiNjL2fpFoyNjN6/ldSC/kRT7mmYt6JQ=;
 b=UjFfzJfhOOuM+fJ7DsJIO0evQiuPj4XIx7hBahc1HxMROtPoftrjUPaJ
 AsOenvKVxBYH/qYIgmxpDQROeIeKI+whOioUAlemZkDpAzeGEB+F3m87H
 ozvW8CddFdANRFnWY5IM4X8RRT/PVc8Kky2Z9V1P/Vvp/QWBIoMpG8Q9z
 VbsxeW7aa48e157KR3ZkWV3kMlk+28JXOuSK/YHDH5yENzNaztxokdna3
 FV4k1KJoriVDwABywPI7/i0nkXtMJbM8ZRXyRjCkMQM8sXY8e3FEvhF0O
 AXO/rS3ISgiNJKFRpIaaTwrnNYalqDd1bkCFXQZ2IXbQ1FyGRmJ4/6Rx1
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=UjFfzJfh
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [next-queue v3 4/4] i40e: Add i40e_napi_poll
 tracepoint
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
Cc: netdev@vger.kernel.org, kuba@kernel.org, intel-wired-lan@lists.osuosl.org,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Oct 06, 2022 at 04:43:58PM -0700, Joe Damato wrote:
> Add a tracepoint for i40e_napi_poll that allows users to get detailed
> information about the amount of work done. This information can help users
> better tune the correct NAPI parameters (like weight and budget), as well
> as debug NIC settings like rx-usecs and tx-usecs, etc.
> 
> An example of the output from this tracepoint:
> 
> $ sudo perf trace -e i40e:i40e_napi_poll -a --call-graph=fp --libtraceevent_print
> 
> [..snip..]
> 
> 388.258 :0/0 i40e:i40e_napi_poll(i40e_napi_poll on dev eth2 q
> i40e-eth2-TxRx-9 irq 346 irq_mask
> 00000000,00000000,00000000,00000000,00000000,00800000 curr_cpu 23 budget
> 64 bpr 64 rx_cleaned 28 tx_cleaned 0 rx_clean_complete 1
> tx_clean_complete 1)

So from AF_XDP POV I won't be using it as I would need some other
information. As I said, we don't work on NAPI budget but rather with the
free ring space and I don't get it here. tx_cleaned is also quite
incorrect name to me for count of produced descriptors to Tx ring. I feel
like it would be better to stub it for AF_XDP.

As Jesse said previously we probably can followup with AF_XDP specific
tracepoint with tx cleaned/tx transmitted/NAPI budget/AF_XDP budget (free
ring space) if we find the need for it.

That's my 0.02$, I'm not going to hold this set or whatever, I'll leave the
decision to Sridhar & Jesse.

> 	i40e_napi_poll ([i40e])
> 	i40e_napi_poll ([i40e])
> 	__napi_poll ([kernel.kallsyms])
> 	net_rx_action ([kernel.kallsyms])
> 	__do_softirq ([kernel.kallsyms])
> 	common_interrupt ([kernel.kallsyms])
> 	asm_common_interrupt ([kernel.kallsyms])
> 	intel_idle_irq ([kernel.kallsyms])
> 	cpuidle_enter_state ([kernel.kallsyms])
> 	cpuidle_enter ([kernel.kallsyms])
> 	do_idle ([kernel.kallsyms])
> 	cpu_startup_entry ([kernel.kallsyms])
> 	[0x243fd8] ([kernel.kallsyms])
> 	secondary_startup_64_no_verify ([kernel.kallsyms])
> 
> Signed-off-by: Joe Damato <jdamato@fastly.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_trace.h | 49 ++++++++++++++++++++++++++++
>  drivers/net/ethernet/intel/i40e/i40e_txrx.c  |  3 ++
>  2 files changed, 52 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_trace.h b/drivers/net/ethernet/intel/i40e/i40e_trace.h
> index b5b1229..7d7c161 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_trace.h
> +++ b/drivers/net/ethernet/intel/i40e/i40e_trace.h
> @@ -55,6 +55,55 @@
>   * being built from shared code.
>   */
>  
> +#define NO_DEV "(i40e no_device)"
> +
> +TRACE_EVENT(i40e_napi_poll,
> +
> +	TP_PROTO(struct napi_struct *napi, struct i40e_q_vector *q, int budget,
> +		 int budget_per_ring, unsigned int rx_cleaned, unsigned int tx_cleaned,
> +		 bool rx_clean_complete, bool tx_clean_complete),
> +
> +	TP_ARGS(napi, q, budget, budget_per_ring, rx_cleaned, tx_cleaned,
> +		rx_clean_complete, tx_clean_complete),
> +
> +	TP_STRUCT__entry(
> +		__field(int, budget)
> +		__field(int, budget_per_ring)
> +		__field(unsigned int, rx_cleaned)
> +		__field(unsigned int, tx_cleaned)
> +		__field(int, rx_clean_complete)
> +		__field(int, tx_clean_complete)
> +		__field(int, irq_num)
> +		__field(int, curr_cpu)
> +		__string(qname, q->name)
> +		__string(dev_name, napi->dev ? napi->dev->name : NO_DEV)
> +		__bitmask(irq_affinity,	nr_cpumask_bits)
> +	),
> +
> +	TP_fast_assign(
> +		__entry->budget = budget;
> +		__entry->budget_per_ring = budget_per_ring;
> +		__entry->rx_cleaned = rx_cleaned;
> +		__entry->tx_cleaned = tx_cleaned;
> +		__entry->rx_clean_complete = rx_clean_complete;
> +		__entry->tx_clean_complete = tx_clean_complete;
> +		__entry->irq_num = q->irq_num;
> +		__entry->curr_cpu = get_cpu();
> +		__assign_str(qname, q->name);
> +		__assign_str(dev_name, napi->dev ? napi->dev->name : NO_DEV);
> +		__assign_bitmask(irq_affinity, cpumask_bits(&q->affinity_mask),
> +				 nr_cpumask_bits);
> +	),
> +
> +	TP_printk("i40e_napi_poll on dev %s q %s irq %d irq_mask %s curr_cpu %d "
> +		  "budget %d bpr %d rx_cleaned %lu tx_cleaned %lu "
> +		  "rx_clean_complete %d tx_clean_complete %d",
> +		__get_str(dev_name), __get_str(qname), __entry->irq_num,
> +		__get_bitmask(irq_affinity), __entry->curr_cpu, __entry->budget,
> +		__entry->budget_per_ring, __entry->rx_cleaned, __entry->tx_cleaned,
> +		__entry->rx_clean_complete, __entry->tx_clean_complete)
> +);
> +
>  /* Events related to a vsi & ring */
>  DECLARE_EVENT_CLASS(
>  	i40e_tx_template,
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> index adf133b..fb9add8 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> @@ -2753,6 +2753,9 @@ int i40e_napi_poll(struct napi_struct *napi, int budget)
>  			clean_complete = rx_clean_complete = false;
>  	}
>  
> +	trace_i40e_napi_poll(napi, q_vector, budget, budget_per_ring, rx_cleaned,
> +			     tx_cleaned, rx_clean_complete, tx_clean_complete);
> +
>  	/* If work not completed, return budget and polling will return */
>  	if (!clean_complete) {
>  		int cpu_id = smp_processor_id();
> -- 
> 2.7.4
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
