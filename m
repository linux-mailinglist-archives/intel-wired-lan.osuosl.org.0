Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93FB0824F12
	for <lists+intel-wired-lan@lfdr.de>; Fri,  5 Jan 2024 08:14:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E61D1435F5;
	Fri,  5 Jan 2024 07:14:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E61D1435F5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1704438891;
	bh=nwtuZWzjj5RhwJNhMU+KlaHQoDbabLAZ8vnuqu2TvaU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ERkWgw/8mibvfqW5rmW3+GtCtRmZaYEOO9PxvVrnNIMU6ylbbh2hr4jdTFPrGP/7O
	 l34lxUoNcrfawpeyQa2R5k+xum5PRlFF0W54zhSRR0XKsIDBZfvA4fg3bYZm/mTCJa
	 ZPnl2/iFSpC8EiCre0bQMaUAec02jt50nmDYTPrs5Y9uB1Um9lh5pUod6qI123mPVv
	 vZpjwJW7UVpX0PIk20BSJZT+lsYu7K2jE1ZXb55tl4W4ZB8/efBP6Nj+pY81mJhZzn
	 +E8ikSl43uA1l1ReTznsSRjleALezOVK+vjFrJVTcW6f6qhg5KwntlW1DH8NUHWGaT
	 9rK67sp8jPIWQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XZRCI7k4wLuy; Fri,  5 Jan 2024 07:14:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3D22A4015F;
	Fri,  5 Jan 2024 07:14:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3D22A4015F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 777BC1BF40F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Jan 2024 07:14:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 49A76613E4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Jan 2024 07:14:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 49A76613E4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id F69g0GOlGS5o for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Jan 2024 07:14:43 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 90ECC613C1
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Jan 2024 07:14:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 90ECC613C1
X-IronPort-AV: E=McAfee;i="6600,9927,10943"; a="376936580"
X-IronPort-AV: E=Sophos;i="6.04,333,1695711600"; d="scan'208";a="376936580"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2024 23:14:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10943"; a="924156779"
X-IronPort-AV: E=Sophos;i="6.04,333,1695711600"; d="scan'208";a="924156779"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Jan 2024 23:14:40 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 4 Jan 2024 23:14:39 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 4 Jan 2024 23:14:39 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 4 Jan 2024 23:14:39 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CcNGLAb3MiUpCjYIhEJUwjw74hbwTk1xRcc4htrbUOV604EDE5NrSEDsNyYFwdgANdtQw/bEh5OWDJnxIazqhccNjlkY7n1QVmu3Vw2fGHYmo+Zr1Kr3h6CkayZXgkNcKU+LmVTDXQuoO+kHHwHS/s5d+yfdzoeXJ9cKeSsgasJoUzJue7DC5IzKLVtygY9E6b0Z3WJo3X1GAlttv1wxrGUvsViVcieqXcSek74YS6ZdyNwXSCAp/43KtT9I826X60Mk5zfpipoSEYZVDKGKb+nLIWh0E5yDT3OnYTh7ET3NhVOn+WjS8qDaDCHuBrhtLdWNSxrcGMwqkZx9PiRFig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nwtuZWzjj5RhwJNhMU+KlaHQoDbabLAZ8vnuqu2TvaU=;
 b=P96KdR4dbqiQqUUNtmPlL3ChV64lH3MYgFl8abDnXyxY5JDR31Msrn9cTxpz0cL9oU3vkNK3Le9229SBI9aPJy/kJo7aDBDQ4wBG/EalrdG6hJ0dGVWuqWsQkg7isSMZJ6kuMELDAThKvUCqXzGx1ybEXMkmI+M7AIWSsvwlPXtbuOfS4ikyAUpMTuq2LcPfeV/ST8bGhvxogqy7R+qaIkhXAFCsqZjF7IiT7alsgZk/rbkgB8TjTSQ2CdLwf/v1DVxasGIq0rO7LI+yRYVbTXB/Ytfzxu5QZfuMNenaFcMnzEDAoJuWGRJ4j21o3bHBddPM+jnL8vXIfLiXa29t+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by MW6PR11MB8339.namprd11.prod.outlook.com (2603:10b6:303:24b::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7135.25; Fri, 5 Jan
 2024 07:14:31 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::3c98:e2b:aeff:5041]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::3c98:e2b:aeff:5041%3]) with mapi id 15.20.7159.015; Fri, 5 Jan 2024
 07:14:30 +0000
Message-ID: <a89dcad5-1c99-411e-843d-baf1fc8e5fc0@intel.com>
Date: Fri, 5 Jan 2024 08:14:22 +0100
User-Agent: Mozilla Thunderbird
To: Dan Carpenter <dan.carpenter@linaro.org>, <oe-kbuild@lists.linux.dev>,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <08d8b75e-af80-438b-8006-9121b8444f49@moroto.mountain>
Content-Language: en-US
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <08d8b75e-af80-438b-8006-9121b8444f49@moroto.mountain>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR2P281CA0070.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:9a::9) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|MW6PR11MB8339:EE_
X-MS-Office365-Filtering-Correlation-Id: a694f75f-3219-4a24-facd-08dc0dbdf5d6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: AlJlysheTuoT0RB5Ab+nYDru6jMlaaEPnCgAQjcPDDmhMAgiSqA05wAA5DfkAOUUFzrXpYTvFIuLKNNdwtSDzmBD3S9jFsSKHwtpvsgRvGn0jvVmTNmINTM6aqEglhEp0c6i6PmcohvtmQWp5TCkEq2rUy8MXR5hOsA1Po+97Xw7+WOvQTXgxbC3VS3XM1ZOUqVjLbh6BUHhGdw8jfBcB1vZsI3nYKAUMmWdkP8UOQ8+NFx1mO3Upftt8GZzCajaqIAnvne3brr9xVjhOMmyePpWnVrZGfPSXov2ERMNSXuagBNjll9xdDpoVhA76kH9c6e84XWvnnOU1Hm+aGj79zWvq2TbkzfOeLC7xGi4V/mAxs1UsDwooTVI/30dGrWv0aJN4faL3pd5p5Sk9yOfVOxA+9rEP7UVa3ltbRH06HddnpBurPvlv+uMXJeZt9ozZklndxAGqUDO+d+ldsIJdmEwjRIGAFMs2eA3b+3he7e/vKE+GGZqNDvh5LiTokGkm7dWSF0fFQsWN/ALlbhDF8d+DNWFwwf62x31Qp/0nEQAVdBVQNvccq05+f9WhdwPJMb/V6XodhouPmosIRlSYZR+2g68hD6QHWBtA4yxKn0mth+CBWWyovdYvFNQsbjaYbF1Gsg/hG1oZ6gC2rpS7nBIXJdZgyk4+zP+xFirQs3yn+pdw5l7OqnAqHnvINdxhQtnv6vG7xcSYzZObrDndKbBboVIxTaJkeTaor02xZs=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(136003)(376002)(396003)(346002)(366004)(230273577357003)(230173577357003)(230922051799003)(1800799012)(451199024)(64100799003)(186009)(6666004)(107886003)(2616005)(26005)(38100700002)(41300700001)(110136005)(8936002)(316002)(8676002)(5660300002)(478600001)(83380400001)(2906002)(966005)(4326008)(66946007)(66476007)(6506007)(6486002)(6512007)(53546011)(66556008)(31696002)(82960400001)(86362001)(36756003)(31686004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aFIzS2xNYU0vU0xZYzV2SHJycGRVdzRMM2ZPQXdEQXJ3aVFnTUhaZFRSU2Rt?=
 =?utf-8?B?Q01EeWI4aXE4ZXBXNWlJM0RhQUY3ODFkRWkvK0Z0QVVwTTNsTzR1Ym5RRUdj?=
 =?utf-8?B?dlQyS3FlQVJib3k5QUFIWjFCaXdITmhGaHpFenBPZkkrRGptMFdMQzQ1T3Qx?=
 =?utf-8?B?ZFY3YVF6SE91VGMrRnB4Zzhobzk0R2phSVJXTXhremJJM2RFODU2ZHgrenc1?=
 =?utf-8?B?REYvWjk0Ym0vK1BLNWR6MjRLNnVYQzF1Y0xMVHhCVHFoNEpQTnJjY3lic0Mw?=
 =?utf-8?B?alAyN2dTMlNXYkZXRGhrZjJzM0hWcjRjTzhqUWdmWm8zbkJrbUZYNGx2S3Vq?=
 =?utf-8?B?S05QVCtQSFhJNytDSGJNUUZyellLL1VVT1BxMHdBenM5VS8rNWF0UWtXOXBX?=
 =?utf-8?B?OStZcXdKSkdIYk0xQmd6V3hpYWl0eWtGWTdaWVk5YWRLUnJmVzVtSkRLd2Nm?=
 =?utf-8?B?WnNLWnpMUSs3MWdJSjkwUTF5Q3Y0NkZDMEtuQ0JiTkhRcWFmUjBZc2VBNUNz?=
 =?utf-8?B?TVJYWmg3Tm5ndC9RdDZEaC9qS0Z5bWFaSCs5R0lFSGlzbnlMYjNoN21ndVQ1?=
 =?utf-8?B?Q1VwVkh0YXMzVi96QVNWWFJiamQ5dmhocmVFckxaK2NMV3NwY0ZjSHl1REFB?=
 =?utf-8?B?ckpNcGRRMm5BR1VCRWpYMXc2QjNHeDRiK0VCaGNoQVNKYVBPSFowK0NYNFNq?=
 =?utf-8?B?WnVkUDNVNkloVndnbkpoWmJYZ1N4ZlhhN0t2cDllNmZkTEpwRUR3U1htZEda?=
 =?utf-8?B?M3pQa2dyL3VNZGJ0bjU5bWNlK1FTUktNUUFiODFIWTcyMjRZNlc2aGxoTmRu?=
 =?utf-8?B?OG5hS0Q5NTJPcWlDWXpOeXZUM2RLNWVtZmdzbS8zVTZsNjlxamJWakdPcFVa?=
 =?utf-8?B?ZkZtVW5KYU8zMGdRK2NnWlRmOFJWSHQ3WnlnQzZUdGZWZ0FWOFBxRXpuckVx?=
 =?utf-8?B?b1ZTYlY3WVhtUERaYk8yY3UzSDR3bTNvTXo3QUpNWXRjWU5FQzF2MHJtNlhE?=
 =?utf-8?B?czNYVC91ajdBaFptMVNtL1U0VVNiM205QmN5S0duZmF2ZmM5bDNHenFLL1h6?=
 =?utf-8?B?bFhjcjJMVUpRUWNZbVZDOExxUGVnTmRKSG9nZThRSWNuc1dIMkRTcVJLZ0t6?=
 =?utf-8?B?c1RoZFlmamJEQzdvbjhmdEN1SU9WQmNZUXM1QVpMWDVSZTJYUndjeFNEbjhE?=
 =?utf-8?B?K001Wlk2NVlPWlhPWFVVZGJyemx1OWx1WUhpenVlK2YrVU1KakJGUDhENy9P?=
 =?utf-8?B?dkkrVnF6WmJGSFVOMHBnZTRwdTlSRmdLV3RRb2lzZ016ZVNGb0hmc3pPdlcz?=
 =?utf-8?B?Q1Q3aDlONXVvSUc1M0dVZmp3WWRxU3FFMnR5ODBHOENWckZFN056VURFbUJE?=
 =?utf-8?B?UTZwQXYxUnMveWpwa0dEenhrbUU0b1RIYUdaWnFwa0FhbHVGNEN1eEdWeFUz?=
 =?utf-8?B?WTRPUlpZMXFMQVNxbEswSWk5WVg4M0hPb2V3ZDROQXNrVUFoZ2ZYb3g2bHBS?=
 =?utf-8?B?VVpyOStIMjZ3aUF1R0l3K1o2b29CNXFlL3ZaWjFwSDZVd0ErNWJ4TzJKQ0VI?=
 =?utf-8?B?eFcxa2tZVm9EaXV6d1c4dXZWU0wwQk14OFRqSTVRalF4OGFkU1d3RzJLYUwv?=
 =?utf-8?B?Q3VGY0dITHl3bHBWMEN2OSttbFo1RmJOakVTZkFxYWs3QnYvVm9FTVdlb2NO?=
 =?utf-8?B?cmF4Y3VGZk4wRFNrNWhCcG1wQ2d0dXVVbldUL3R4Ymg4VVNQUjQ1ZzdLSGlJ?=
 =?utf-8?B?RlRPcExyS2NxdDJoSjBXTU5Nd0EvZGYrVXc1YW0yYjRzSjQ1Nzd4c0dLcHVT?=
 =?utf-8?B?ZWRNZHo3WDYxRnByYUpJOWJCVFBlRFVyMkNBMHdJOVF2SGtPZUpDQVdFNlVG?=
 =?utf-8?B?K2JBTVV1dlJNT054Uy96NThSN2Nqa3drWXRPTmVvZTBIUVNYYkE1OVZXd1RH?=
 =?utf-8?B?ZnUrYlBWZTJidVZ3OUdJK05IVjdBTjN1YnlUM2RzZ2RqUGdVY085SEhkTEpa?=
 =?utf-8?B?YUpRdXZ2NmlQU0UyNmluSDI3cE5DYmI0Uk8zSDVNNTRQaVM3S29vMk5hS1h1?=
 =?utf-8?B?VVo0TVZKa1JXL2VFMkN5UW1zd0ZsOUlwNUxlOXA5bEo0SnFhUnUrUnNPaU40?=
 =?utf-8?B?L0s0Z1pSUUQwQTlMak0rbHgxMXAydzlHZ0t6YVZURkw3bzZiOTNWOTBWcUFa?=
 =?utf-8?B?QVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a694f75f-3219-4a24-facd-08dc0dbdf5d6
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jan 2024 07:14:30.5476 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ltTx+frCfwKne4ywtl4XtvKXOnoxLncX/1lG7Ic4HJP5/Xme5V4DAXVChnQCwLRWZDagUit0k0nD070RDLNWN8a+hUQvyXVh6LsGLY176Xk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW6PR11MB8339
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704438882; x=1735974882;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/pXzJYb+HEOo8OnC0WvhhhLlAEzEjJklNOOxYIUcy24=;
 b=UzmktdYCsq+B2o+It/Zp0XqgspG9DYUFdr+rMOwJKYphqtMptHzvmYFv
 JXHm1ZgKYfAQ8ODoeCl4nqGScrtdfcSBPzBFAp68k139G5qXDGhQUEQxF
 RG0G0/hpoZ828PfXuaIHq9rS+xdl1EYJTKr2i49/91zyrwFiVDH5JCnmb
 bWeabOSZna9akI6BbYsOtgUdz79pYojhCYDbLc9/vREbtqapsakC1Udp1
 0TQsNGxddohNcl1rcF/wInA3a3SWivx3PfywDP6UZVKz1caktrsErEnpV
 bW1uUETr/E4m3/BckA6Dm2eI15WZH7o1PLEa67zHa1O+RY9rVoVqOKwmm
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=UzmktdYC
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1] ixgbe: Convert ret val
 type from s32 to int
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
Cc: Jacob Keller <jacob.e.keller@intel.com>, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, oe-kbuild-all@lists.linux.dev
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 1/4/24 15:47, Dan Carpenter wrote:
> Hi Jedrzej,
> 
> kernel test robot noticed the following build warnings:
> 
> https://git-scm.com/docs/git-format-patch#_base_tree_information]
> 
> url:    https://github.com/intel-lab-lkp/linux/commits/Jedrzej-Jagielski/ixgbe-Convert-ret-val-type-from-s32-to-int/20240103-182213
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/horms/ipvs.git master
> patch link:    https://lore.kernel.org/r/20240103101135.386891-1-jedrzej.jagielski%40intel.com
> patch subject: [PATCH iwl-next v1] ixgbe: Convert ret val type from s32 to int
> config: i386-randconfig-141-20240104 (https://download.01.org/0day-ci/archive/20240104/202401041701.6QKTsZmx-lkp@intel.com/config)
> compiler: gcc-12 (Debian 12.2.0-14) 12.2.0
> 
> If you fix the issue in a separate patch/commit (i.e. not just a new version of
> the same patch/commit), kindly add following tags
> | Reported-by: kernel test robot <lkp@intel.com>
> | Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
> | Closes: https://lore.kernel.org/r/202401041701.6QKTsZmx-lkp@intel.com/
> 
> New smatch warnings:
> drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c:2884 ixgbe_get_lcd_t_x550em() warn: missing error code? 'status'
> drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c:3130 ixgbe_enter_lplu_t_x550em() warn: missing error code? 'status'
> 
> Old smatch warnings:
> drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c:2890 ixgbe_get_lcd_t_x550em() warn: missing error code? 'status'
> 
> vim +/status +2884 drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c
> 
> 9ea222bfe41f87 Jedrzej Jagielski 2024-01-03  2866  static int ixgbe_get_lcd_t_x550em(struct ixgbe_hw *hw,
> 6ac7439459606a Don Skidmore      2015-06-17  2867  				  ixgbe_link_speed *lcd_speed)
> 6ac7439459606a Don Skidmore      2015-06-17  2868  {
> 6ac7439459606a Don Skidmore      2015-06-17  2869  	u16 an_lp_status;
> 9ea222bfe41f87 Jedrzej Jagielski 2024-01-03  2870  	int status;
> 6ac7439459606a Don Skidmore      2015-06-17  2871  	u16 word = hw->eeprom.ctrl_word_3;
> 6ac7439459606a Don Skidmore      2015-06-17  2872
> 6ac7439459606a Don Skidmore      2015-06-17  2873  	*lcd_speed = IXGBE_LINK_SPEED_UNKNOWN;
> 6ac7439459606a Don Skidmore      2015-06-17  2874
> 6ac7439459606a Don Skidmore      2015-06-17  2875  	status = hw->phy.ops.read_reg(hw, IXGBE_AUTO_NEG_LP_STATUS,
> 4dc4000b35119f Emil Tantilov     2016-09-26  2876  				      MDIO_MMD_AN,
> 6ac7439459606a Don Skidmore      2015-06-17  2877  				      &an_lp_status);
> 6ac7439459606a Don Skidmore      2015-06-17  2878  	if (status)
> 6ac7439459606a Don Skidmore      2015-06-17  2879  		return status;
> 6ac7439459606a Don Skidmore      2015-06-17  2880
> 6ac7439459606a Don Skidmore      2015-06-17  2881  	/* If link partner advertised 1G, return 1G */
> 6ac7439459606a Don Skidmore      2015-06-17  2882  	if (an_lp_status & IXGBE_AUTO_NEG_LP_1000BASE_CAP) {
> 6ac7439459606a Don Skidmore      2015-06-17  2883  		*lcd_speed = IXGBE_LINK_SPEED_1GB_FULL;
> 6ac7439459606a Don Skidmore      2015-06-17 @2884  		return status;

indeed, 'return 0' would be clearer here

> 
> Smatch only warns about missing error codes when the function returns an
> int.  :P  The bug predates your patch obvoiusly.

:D

> 
> 6ac7439459606a Don Skidmore      2015-06-17  2885  	}
> 6ac7439459606a Don Skidmore      2015-06-17  2886
> 6ac7439459606a Don Skidmore      2015-06-17  2887  	/* If 10G disabled for LPLU via NVM D10GMP, then return no valid LCD */
> 6ac7439459606a Don Skidmore      2015-06-17  2888  	if ((hw->bus.lan_id && (word & NVM_INIT_CTRL_3_D10GMP_PORT1)) ||
> 6ac7439459606a Don Skidmore      2015-06-17  2889  	    (word & NVM_INIT_CTRL_3_D10GMP_PORT0))
> 6ac7439459606a Don Skidmore      2015-06-17  2890  		return status;
> 6ac7439459606a Don Skidmore      2015-06-17  2891
> 6ac7439459606a Don Skidmore      2015-06-17  2892  	/* Link partner not capable of lower speeds, return 10G */
> 6ac7439459606a Don Skidmore      2015-06-17  2893  	*lcd_speed = IXGBE_LINK_SPEED_10GB_FULL;
> 6ac7439459606a Don Skidmore      2015-06-17  2894  	return status;
> 6ac7439459606a Don Skidmore      2015-06-17  2895  }
> 

