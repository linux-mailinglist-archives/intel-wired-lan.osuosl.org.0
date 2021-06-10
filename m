Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9C8F3A347A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Jun 2021 22:04:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3D794401B1;
	Thu, 10 Jun 2021 20:04:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uICrdEJn52-z; Thu, 10 Jun 2021 20:04:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 25449400C8;
	Thu, 10 Jun 2021 20:04:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C74F31BF3CB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Jun 2021 20:04:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B20CB60646
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Jun 2021 20:04:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id htdGgLZcaY6h for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Jun 2021 20:04:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1AE0E6062D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Jun 2021 20:04:48 +0000 (UTC)
IronPort-SDR: UVCBVpRI9t9JPoC3uzBcpNd7B+PzLEldT793IWof4nTOHE9HCsCKnW1jU2zuxBzl0XTCjMmWaY
 9NF4XIQwc1SA==
X-IronPort-AV: E=McAfee;i="6200,9189,10011"; a="185080662"
X-IronPort-AV: E=Sophos;i="5.83,264,1616482800"; d="scan'208";a="185080662"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2021 13:04:48 -0700
IronPort-SDR: Jdi1Y+txzdbYMsMEgxKqQ4WTdM27wxVsiDKcKlcP2DJ6WN026Dj2snIQPevYDfyYw54//qQVTB
 mVfn8dDmoYsw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,264,1616482800"; d="scan'208";a="470384644"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by fmsmga004.fm.intel.com with ESMTP; 10 Jun 2021 13:04:48 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Thu, 10 Jun 2021 13:04:48 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Thu, 10 Jun 2021 13:04:48 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.105)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Thu, 10 Jun 2021 13:04:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=J4qoudK4i2AqTFRvpmRKnhw1MXlmaxtsRLEBS+VHQDHrE6NVh+onZYUyDiMkBysSgKXGVmIRcPpYb0LMjxKvDhq98KC3OuuHbzQbOIWZrhaAl/d3NOEOtWbY5JF3E4mGqyayekL5jKnkLiqdtnE6ENBwOpaoNvSCOzKCgnJ4DAxjtGXbJSsFRfY28mjNZ5xb8AKPFl/5Dwp1rxJeLiu2UHz3nX1/muDod9ndKsPzMF6Te4rGaVkXjsKQ40K5RPKrgC1rBvk8x0wp9t48qiEWJwBWlF8JDoVaPanXCmOsYxoFuxRrxM+fFTl+NMAQ8xu3SMVqL8Nl58Aga8hy9pNcrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bVWYKPV4l5k33Pu1QuIYW2t4TLHCTDPkQHVgeb9kuaw=;
 b=VszeJTdIb8IGAVB0O5zBctmrNvIs3ELjR0TQ9CUT2XPWPgkTtvgf3G/BV3LhoFH/QmRzM9CQX17rL9dD4sWfBYtSWMsTKOQp57ZcgbKIHO8K3G5Q5lVQAwjdYWOkqhgxUdVRtEq6WyqEtPc8b01MmBWRQV3I66mlix6wnVGNv9Ywe0GzOjDvnWqYDlcKg72FsektO9T9YfzJtd4r1YXkN7a0XqrfqP82aD4xvGDEewF0ybr93b7uG/C8f7K8iMPCDXtDxG2HtZPc/srdAIBzIRs/SGM15D3PHZ84bAxppkUGZRWKVUdbHRpKvlc2ZSJwcK70DNq13/lkKiVMjephbg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bVWYKPV4l5k33Pu1QuIYW2t4TLHCTDPkQHVgeb9kuaw=;
 b=iTSP96c4ChYTmXkPyyIXf+3DYejFEgyujqoAyCHB2wVMT0+Z6uJQGZw4ZIDoxwtNpJN7zKRd7SWNXIYxt1DrWPD17NYQyu//u8wJMW7smMrsA7PucZazB1Ghalibb2Hhrh6YGSIUBVi6djwexbmwL1gPDhv7uGiqfPHIs9N933A=
Received: from CO1PR11MB5105.namprd11.prod.outlook.com (2603:10b6:303:9f::7)
 by CO1PR11MB5105.namprd11.prod.outlook.com (2603:10b6:303:9f::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4195.23; Thu, 10 Jun
 2021 20:04:47 +0000
Received: from CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::4db9:fe34:a884:4e43]) by CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::4db9:fe34:a884:4e43%7]) with mapi id 15.20.4195.031; Thu, 10 Jun 2021
 20:04:47 +0000
From: "Brelinski, TonyX" <tonyx.brelinski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v2 2/8] ice: process 1588 PTP
 capabilities during initialization
Thread-Index: AQHXXU/nULvNlZ0DPEuV8O4t1CnIv6sNrO2g
Date: Thu, 10 Jun 2021 20:04:47 +0000
Message-ID: <CO1PR11MB5105145E9D92EDCB522C9261FA359@CO1PR11MB5105.namprd11.prod.outlook.com>
References: <20210609163953.52440-1-anthony.l.nguyen@intel.com>
 <20210609163953.52440-3-anthony.l.nguyen@intel.com>
In-Reply-To: <20210609163953.52440-3-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.0.76
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [71.236.132.75]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8296eb65-0062-4a8b-3a92-08d92c4aff75
x-ms-traffictypediagnostic: CO1PR11MB5105:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CO1PR11MB51050BBA9A6B9B9D446038DAFA359@CO1PR11MB5105.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: SvrB2YvSO12YViY99N0kXJnZwL3frTughmOWcStFwGrnIxmuRogPRgWfxk0XGl2+GBJBHgwltC8nuC3OAFebqAcUK+qocbuxfTB/OVEfU2zJ5bj1R2gk3LKiCEQ89DOdusIWSSZyWG1JgeH/mUGHr0YIkEnXw/ezuPH4JEMSMsrtAFF4U9DnmkKN2vk6j7SCRfM/XJgwD620Bfm/I/1X47ME7F/AeRBprFysY/Q83w6YbsWd+a1mqVE0qKL3h7WPojqsSVnGkuTB5xyuW8g5cyIv+JgclJE3Fcc8LpJrrIeR7qaZF+Y9bBUZlydZeeoIBLBvmlgq8om+0zP4D4otNcU43ackwVAE1nJxgMdXykF/xbGrJoskkFO2iMjz9C6pyK6irTbc16YfvlD7lyQIra/K/lwgTZLTKe9zZhd3rF2VEfn0/++IHtxJEd5e/AhsQWI0KGkD3yC6noQe3Zuyw5/ZucF7YUOiNBjlXqKUHJEdj4rMC1sTO5siLEA0WTJcg4tHzGNL7EKFDyK+b2mldiL6wBKLxqOPq947L+cNrJJZUdr+L2moB6OJRZe2SI3N5wbwCNvhszZTfMDHYhoWNu15Yq9gZ0qtQ0HY4ATPBfE=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5105.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(376002)(346002)(136003)(39860400002)(366004)(396003)(8936002)(316002)(110136005)(66946007)(2906002)(71200400001)(66476007)(64756008)(55016002)(76116006)(9686003)(66556008)(66446008)(38100700002)(6506007)(26005)(33656002)(83380400001)(5660300002)(186003)(7696005)(478600001)(52536014)(122000001)(86362001)(8676002)(53546011);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?6a3Jb8AWuL4pMMayEryyZPRuokQAIrD350v7Zbcgj90L2aLJXxm41fPWLzZs?=
 =?us-ascii?Q?4VWl1WnkoJFjqpq7e4oJhc3n1OZIHtnGhYx7GKFSUF6zPOllFYK5hNX8cRJ4?=
 =?us-ascii?Q?Epf9TnsogFVAWV15AT10jcIOTFmh8DelN3Xl/8XYZBdruy/SsC9n15/H3Zlt?=
 =?us-ascii?Q?Gosg3+wsVKXHcr8Mi5jWs4wJnmSwDfzAtyKNtOQKVk8VGwtp83vl0oMYDEyD?=
 =?us-ascii?Q?5yeZsIx0fiMZMqLMokCod3I8wbpMh6Pj022bLBhNbjTJvw6M1x2NM/kCfPnt?=
 =?us-ascii?Q?E446PFkTd857s1oohx2N/J73pljY1skQVf/fV8rzyog1608OMcbQmwFOnZ57?=
 =?us-ascii?Q?mfryMUTqSjSb34CYm5sSdQb6qLfqBOOgXXQ/zkvZwFgdBefNP/TKE+q4FXTW?=
 =?us-ascii?Q?tHlxzSNzdx0aeXT4iYDQnNClv/bLp00QucjxSVEZOfI/L3XOhY/T/EFEL19D?=
 =?us-ascii?Q?gDsTQBLvXWSzwyqdbJUfuK8jzZGBxY6JbYoE4ngFpmJt7ACpdcrF3wMxPHGW?=
 =?us-ascii?Q?ZwjgQdiuJYdLJvuAk8EZ/MlMYFN5lZIuinBvVcZkVpKaLWluq6477v8SyhV1?=
 =?us-ascii?Q?MNQsHErTgcBziI5rNNbvFh1cSh3iSWExwsEcpoBt9BU8qRhggbX2hLCcU42L?=
 =?us-ascii?Q?RxDKFaroDcNyBeIjhNRjtLvTgYAGkvm3T8FaCbmmbcXb2RuCgYwulL8JZNHj?=
 =?us-ascii?Q?JnitZBSUEwEHvEPGBvdIinbqTB449ykhwKiawX+0Jqi95VGcTNUEswQfj5pM?=
 =?us-ascii?Q?xdBon3jLXEY2m6X8ypNZtobXEde4EwOcWz55kOX9bMpvlSFOJQBhYDioTjxC?=
 =?us-ascii?Q?wezILn3PPw7Wy0UGysh/TpyIxANSZs2wx9fT8DWy/pjyJa+X+Sx8KkQQ9kOL?=
 =?us-ascii?Q?0zbhm/w5H7R1s/1ggnzo2+Zr0qMIgg93d3+QiD4oZUS/lfHy8123ZZHFOTVM?=
 =?us-ascii?Q?oOM5dutOCGLLIUdaJcr+UF/9boz0PubwPLaAWTj4olqx2LW8O/ZHbrWGYSfy?=
 =?us-ascii?Q?bVHPMPUodUr5HYJOj6sY+aBOub5tIofdJ1UEg1XpPdmLvsvvgPAwvVvmYNqg?=
 =?us-ascii?Q?993sN5dWlShWcftMyrLKWjLMAPxqSTMNYuQ6iYwoP5eUB6FnnAypIq54tKi4?=
 =?us-ascii?Q?V/UJbJ4Lru4xQFhh45Pi5eWOdPMNS7513EtRrKLsSgadgX7JEmzsHPEzpnOi?=
 =?us-ascii?Q?9vP9TwSkIHq035g0fGKaMh5VeLDa7nb8iYMSZr0FQh3WVjQgFjcnnSzMEw7L?=
 =?us-ascii?Q?p+XaeVZ8rptDls3ojqhMbQDOyhpsm0s3rU+cU4aKzNDoMl9UIWEVsdSjNnTb?=
 =?us-ascii?Q?L4FRkcjFDBHfUIngITh3HHsD?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5105.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8296eb65-0062-4a8b-3a92-08d92c4aff75
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jun 2021 20:04:47.3018 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PW/H3sPaf+Edd6/Ql7OoTk0Cb8yi41mliQ6BaYZ9gpBvzQJHrZWeNS55LhBCPSdIiUn7WZseKbfypH0dg8pr15bCTutSsSWvaOIbwEW8E5A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5105
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v2 2/8] ice: process 1588 PTP
 capabilities during initialization
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Tony Nguyen
> Sent: Wednesday, June 9, 2021 9:40 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH v2 2/8] ice: process 1588 PTP capabilities
> during initialization
> 
> From: Jacob Keller <jacob.e.keller@intel.com>
> 
> The device firmware reports PTP clock capabilities to each PF during
> initialization. This includes various information for both the overall device and
> the individual function, including
> 
> For functions:
> * whether this function has timesync enabled
> * whether this function owns one of the 2 possible clock timers, and
>   which one
> * which timer the function is associated with
> * the clock frequency, if the device supports multiple clock frequencies
> * The GPIO pin association for the timer owned by this PF, if any
> 
> For the device:
> * Which PF owns timer 0, if any
> * Which PF owns timer 1, if any
> * whether timer 0 is enabled
> * whether timer 1 is enabled
> 
> Extract the bits from the capabilities information reported by firmware and
> store them in the device and function capability structures.o
> 
> This information will be used in a future change to have the function driver
> enable PTP hardware clock support.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  1 +
>  drivers/net/ethernet/intel/ice/ice_common.c   | 99
> +++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_type.h     | 51 ++++++++++
>  3 files changed, 151 insertions(+)

Tested-by: Tony Brelinski <tonyx.brelinski@intel.com> (A Contingent Worker at Intel)


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
