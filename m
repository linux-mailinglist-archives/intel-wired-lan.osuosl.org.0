Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 642BE432778
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Oct 2021 21:20:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CE21160654;
	Mon, 18 Oct 2021 19:20:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8d4SUAcknBZQ; Mon, 18 Oct 2021 19:20:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5972260817;
	Mon, 18 Oct 2021 19:20:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 19E0C1BF2C8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Oct 2021 18:53:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0740B82AF8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Oct 2021 18:53:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Wt7Rxl5NCSpq for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Oct 2021 18:53:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 72C1582A2E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Oct 2021 18:53:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10141"; a="228612843"
X-IronPort-AV: E=Sophos;i="5.85,382,1624345200"; d="scan'208";a="228612843"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2021 11:53:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,382,1624345200"; d="scan'208";a="526383172"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by orsmga001.jf.intel.com with ESMTP; 18 Oct 2021 11:53:25 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 18 Oct 2021 11:53:24 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Mon, 18 Oct 2021 11:53:24 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.109)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Mon, 18 Oct 2021 11:53:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ClPAlW/P8Hincs37R8HWPm9eui5eRj/SpHGXAwfYkxE/FPmyDp78Sdymr2w530RB5NTbYyRBkWppVxLk4palSkDLEXjuwwqDREMJ5ZvUxhgr0APzTGyLtZp5XVU1meFb/67QkuZC4pRm8URD94GuKFBNpZpcXzh0Aw4QHI91EBFN8Rz5i+8D2ndO8EgOutjWH3+L8Xue/fwfWgZ1LNe6MvMK+SMJf/anDOJF+83hBl3N9EAICLlg7Qw3Ng9VQgFYxK4JWf/JqrHFP5CnAjOLfv/JSnzDjGcvl0kgzWmIISmqN0G+O5DbzTYVDAlcIW4RE0uYncpnUWH16pmi4lifAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jo4c4Zq0SqSJXeIWg/MhDyCQZ2pM3d4ILhABLpz0c/Q=;
 b=f+4t0E8FXHBn1kgcUr+I2cCe1Af5RIEZQ52okzf84CzPwZ2zFJOg09M9l6x6D3j78Bjv17po2zdN1i5+vuDwIHbbZCDS6Ea2wYUyMre4ZvEF4/85DeMmr2WKBl4sGk66URuCyctkwPZhQyZFW/YMRQFQ9Jya4Um8S7VQPHcMrC8GVn3x76kSabkWCrl6/6Gh2dgX0hHlYc4oLx1/DQPR5DgM7D9l09ohfsC6G9DL45SLCZl1G+jwgRauj6BzwRcSI9gYV7yoxToOmhYaLys7kK5WHFtUnbv/W1V9W/aSqrs7tcIwrO37KbnTPBzyTD6psuQC6lzat2hSpCcB0kXjMQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jo4c4Zq0SqSJXeIWg/MhDyCQZ2pM3d4ILhABLpz0c/Q=;
 b=escCiQpFXlqStBW0FxKKUg7EKvzLixhyhC936UL7lqglJiR8OyEKVuNHi0gyECNWV6CPop72vkekam5B7ylL5+xg8PpDzeUFwe5fHCFlBBtxRtJV6c1Tntfc2zoKSuN9Fb8gsghrkLIy6R7Ssj/PG4WDld0M0Ep+S3QRHE0ITHw=
Received: from DM8PR11MB5621.namprd11.prod.outlook.com (2603:10b6:8:38::14) by
 DM8PR11MB5575.namprd11.prod.outlook.com (2603:10b6:8:38::17) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4608.17; Mon, 18 Oct 2021 18:53:19 +0000
Received: from DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::555a:1e2a:ce25:53ac]) by DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::555a:1e2a:ce25:53ac%7]) with mapi id 15.20.4608.018; Mon, 18 Oct 2021
 18:53:19 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v6 3/3] iavf: Fix init and
 watchdog state machines
Thread-Index: AQHXlNb+GsPZJTRw10eCcVoAX28YOavZeQxA
Date: Mon, 18 Oct 2021 18:53:19 +0000
Message-ID: <DM8PR11MB562101E6850CE8F989011EF2ABBC9@DM8PR11MB5621.namprd11.prod.outlook.com>
References: <20210819084758.2657-1-mateusz.palczewski@intel.com>
In-Reply-To: <20210819084758.2657-1-mateusz.palczewski@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4a435a9c-b78e-4359-4811-08d992688d67
x-ms-traffictypediagnostic: DM8PR11MB5575:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM8PR11MB55755A59201A8662912A306FABBC9@DM8PR11MB5575.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5w8BDl60ZG1MoFZT0rQzW6Vbg6Oe9pnG8rJVuZ75lJRAkLzVlBk6dG2LfuY+tKcAFwu2Oo8ZucjeSDWBq86zSkORnJrDskRKVJW/Vj7/E727f4vtuiR/dFWK+4b5+Mf3wSu1jqARAr7T2CONnrXbAMGRjmQBd9EmDsQ/sbYet7gpS3pjSFWtwgHbrtS/eD+nrM8ekbUq05tvp4OIxF8iSqVK4HEyHqyl3hoyiE1pMEFOgUPauWu/9T5pv+3Nkd3F0u74+fj4utSTnYArCob/HTREonC6rnDv8mbGE/HfRh7wawXJkwSJICBA3vjoekmMwKhPMtYciWyjpwWmG+fqE1jzPKHmXkqGsv97/NDR7oIIsjSiRuXFlrohlEl/qBFjOL/SDVb4Ud97Dwl9+1CCiNVbiM7M4SRVUjJMNKuLaKpIjDxdO6qkUwcT0M03VLAwRdrnrvsNEV+2KQBrJKNCmrraytt7Ij3fmh5DCaT3C8FyeMVSXN6UcMVrQ2mS1V/8nXZoHBrcu4WVu5UjvKdUR5rZMT1DdJmgUkOedtznwpyWRntPlpwbWvFyDlNMMWAq/1TR1TjcIOqREQ7mV3b4dN0C1KNpyWGoEfmwJGXmY14m1+DJ7pKtlknB9uK1gR4UT65PIjh/mLJTQ9IfllRaUg6+ADFbV9T720DUQccObJcuZjHFr0IS82fME+NulaQyVerNi25vnM1QxZFcyt+1HA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5621.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(2906002)(52536014)(8936002)(316002)(38070700005)(26005)(186003)(38100700002)(76116006)(64756008)(55016002)(508600001)(54906003)(122000001)(8676002)(7696005)(4326008)(107886003)(110136005)(53546011)(6506007)(66946007)(83380400001)(30864003)(86362001)(5660300002)(66446008)(9686003)(66556008)(66476007)(71200400001)(33656002)(82960400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?/ULDgNa9bUTRjXflOvSFYRwMGTRPm9v5jiEtR6liiQLNLmiNhGCV5I829n4x?=
 =?us-ascii?Q?gnt+o09MsCq4ZdBq9AWOTfIKrI3+SASS14AVn0oOt46hs+ZFVjawfUqikZH+?=
 =?us-ascii?Q?S7NEokJrKgc57RzKn+rrOfOxG/EBKWj6/RcqRqG/eYnzZrbXP2UlMhUVpTkn?=
 =?us-ascii?Q?UYwnrKgpFq295hW4yldL7A6dEoHRSAdjZU306rXBT/7T6eqPmNYVAMJrFptO?=
 =?us-ascii?Q?NX3od3OHrcgYw/aa51VJS6yhDn74MILZSZ9LA81NP9Gs4l69DYeLAIL74K6H?=
 =?us-ascii?Q?SKtaqMUChhnx0Tvd/kAyZIuOugwAVhPBP3gYNlmpowXmkm0WbLskwvN16Vcm?=
 =?us-ascii?Q?271764SuKvq1jEm2xb5VzQ0lTvptBqGFKOZV3cn/Rda+aGCcPO+LdYLtjfln?=
 =?us-ascii?Q?B31IlmdPScn9Hr3U8cAzOhXr/lOioXivAzUWA7OQanpQcCJV8IHZzKbFFImP?=
 =?us-ascii?Q?FXzQkUvgRbv0Km/k47DGRpq8JA4f7eFxMTsLhb4d7dcOSDbJvLYmZz6rbvXh?=
 =?us-ascii?Q?qxCCzyvxIvRVDy7y7Y2i0gpvih2rGIqNTN5T66b1N4BDOOF3BAUmCCZMcfSg?=
 =?us-ascii?Q?PSRs2M+fSqtnsQZr6zEsuAWQ7rSI3cl4FcqnBmW43sp+PpCXg61yfmmhVD5f?=
 =?us-ascii?Q?Wv44QyNY3L+SsklmkPubdVCS1XDcDPQyo5Rx8YqVXN1IYrvjh/nBoTksvjCD?=
 =?us-ascii?Q?GKBwsn35sfKnLLvpM4w4WkR7vlWruEibK62hBNn220ABwoJniAgDai8+/95I?=
 =?us-ascii?Q?O/8ov143wlcq83Ni2ZOPkrBKg+9yB58wzWIwBef9mYuKM6+MUsuHB0hPm7qs?=
 =?us-ascii?Q?X88RFLhtC7dK/O9+Zq3petIjrHdIEWeUqBGzabBepTXV4PO6v3Fw/MgrkVeU?=
 =?us-ascii?Q?c5biNMr1M8JHBOTXUHcFKKPhajl/C1uGbdOukWD1TOdIK2DtHv47L2FUvBiF?=
 =?us-ascii?Q?lrkghtIfaic4oVktNe0BavNvbCnu2kYuHiWy/WsvrqCCN0owTvBswjd6GZvf?=
 =?us-ascii?Q?8sW9n/y09fzjwuMmyQBv1V7o/Ig1OOCnNqPGNGaRqP4tRIDcvr4F9sUhEKaP?=
 =?us-ascii?Q?E3QfnFCn4jBB5Jb7PuooAz6823WBWKgZGvUqwtldana+Y4RTDmzVh5jjawKZ?=
 =?us-ascii?Q?UWuQCnHSzvdnhTEQiuCWuyfqcbT4LgU+M3cklxWL0fECLP81d/FCycWtoDPB?=
 =?us-ascii?Q?EVRho36+zQTl+BPGS1t/iH7L4LSqzEbI7gsA3UOh5cH82OJfRiJ7+t8WWJJo?=
 =?us-ascii?Q?Ub2jI4C3WBBHutVBoLIXvOPq86AVoYrBRHhBB6KdZpM82xu2YhCos8vZLTCk?=
 =?us-ascii?Q?drTyC1Earw/FhOrmaBikJrDg?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5621.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4a435a9c-b78e-4359-4811-08d992688d67
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Oct 2021 18:53:19.5688 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kMOZnjxr2x665uHmSwGaK5pPyy0f/xqEh9giREzYLxkol4pw7d8H1D+y6BKuCtKtWQMpQwxX5xLMdTsAGspv0edUupZmGQl+uB2ljbvO4KU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR11MB5575
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v6 3/3] iavf: Fix init and
 watchdog state machines
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
Cc: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>, "Pawlak,
 Jakub" <jakub.pawlak@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Mateusz Palczewski
> Sent: czwartek, 19 sierpnia 2021 10:48
> To: intel-wired-lan@lists.osuosl.org
> Cc: Palczewski, Mateusz <mateusz.palczewski@intel.com>; Pawlak, Jakub
> <jakub.pawlak@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v6 3/3] iavf: Fix init and watchdog
> state machines
> 
> Use single state machine for driver initialization and for service initialized
> driver. The init state machine implemented in
> init_task() is merged into the watchdog_task(). The init_task() function is
> removed.
> 
> Testing-Hints: Change is only for VF driver state machine,
>                should be checked load/unload/reset and
>                set/get driver parameters.
> 
> Fixes: bac8486116b0 ("iavf: Refactor the watchdog state machine")
> Signed-off-by: Jakub Pawlak <jakub.pawlak@intel.com>
> Signed-off-by: Jan Sokolowski <jan.sokolowski@intel.com>
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> ---
> v6: Fixed that patch so that it applies on next-queue tree
> v5: Fixed the patch so that it applies on net-next tree
> v4: Removed unnecessary line
> v3: Added new file to patch series
> v2: Splitted the patch into 2 to make them smaller
> ---
>  drivers/net/ethernet/intel/iavf/iavf.h      |   1 -
>  drivers/net/ethernet/intel/iavf/iavf_main.c | 136 ++++++++------------
>  2 files changed, 57 insertions(+), 80 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf.h
> b/drivers/net/ethernet/intel/iavf/iavf.h
> index d7f8026..b175f77 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf.h
> +++ b/drivers/net/ethernet/intel/iavf/iavf.h
> @@ -228,7 +228,6 @@ struct iavf_adapter {
>  	struct work_struct reset_task;
>  	struct work_struct adminq_task;
>  	struct delayed_work client_task;
> -	struct delayed_work init_task;
>  	wait_queue_head_t down_waitqueue;
>  	struct iavf_q_vector *q_vectors;
>  	struct list_head vlan_filter_list;
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c
> b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index ce8b002..e3c5c9f 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> @@ -1965,7 +1965,48 @@ static void iavf_watchdog_task(struct work_struct
> *work)
>  	if (adapter->flags & IAVF_FLAG_PF_COMMS_FAILED)
>  		iavf_change_state(adapter, __IAVF_COMM_FAILED);
> 
> +	if (adapter->flags & IAVF_FLAG_RESET_NEEDED &&
> +	    adapter->state != __IAVF_RESETTING) {
> +		iavf_change_state(adapter, __IAVF_RESETTING);
> +		adapter->aq_required = 0;
> +		adapter->current_op = VIRTCHNL_OP_UNKNOWN;
> +	}
> +
>  	switch (adapter->state) {
> +	case __IAVF_STARTUP:
> +		iavf_startup(adapter);
> +		mutex_unlock(&adapter->crit_lock);
> +		queue_delayed_work(iavf_wq, &adapter->watchdog_task,
> +				   msecs_to_jiffies(30));
> +		return;
> +	case __IAVF_INIT_VERSION_CHECK:
> +		iavf_init_version_check(adapter);
> +		mutex_unlock(&adapter->crit_lock);
> +		queue_delayed_work(iavf_wq, &adapter->watchdog_task,
> +				   msecs_to_jiffies(30));
> +		return;
> +	case __IAVF_INIT_GET_RESOURCES:
> +		iavf_init_get_resources(adapter);
> +		mutex_unlock(&adapter->crit_lock);
> +		queue_delayed_work(iavf_wq, &adapter->watchdog_task,
> +				   msecs_to_jiffies(1));
> +		return;
> +	case __IAVF_INIT_FAILED:
> +		if (++adapter->aq_wait_count > IAVF_AQ_MAX_ERR) {
> +			dev_err(&adapter->pdev->dev,
> +				"Failed to communicate with PF; waiting
> before retry\n");
> +			adapter->flags |= IAVF_FLAG_PF_COMMS_FAILED;
> +			iavf_shutdown_adminq(hw);
> +			mutex_unlock(&adapter->crit_lock);
> +			queue_delayed_work(iavf_wq,
> +					   &adapter->watchdog_task, (5 *
> HZ));
> +			return;
> +		}
> +		/* Try again from failed step*/
> +		iavf_change_state(adapter, adapter->last_state);
> +		mutex_unlock(&adapter->crit_lock);
> +		queue_delayed_work(iavf_wq, &adapter->watchdog_task,
> HZ);
> +		return;
>  	case __IAVF_COMM_FAILED:
>  		reg_val = rd32(hw, IAVF_VFGEN_RSTAT) &
>  			  IAVF_VFGEN_RSTAT_VFR_STATE_MASK;
> @@ -1974,16 +2015,12 @@ static void iavf_watchdog_task(struct
> work_struct *work)
>  			/* A chance for redemption! */
>  			dev_err(&adapter->pdev->dev,
>  				"Hardware came out of reset. Attempting
> reinit.\n");
> -			iavf_change_state(adapter, __IAVF_STARTUP);
> -			adapter->flags &= ~IAVF_FLAG_PF_COMMS_FAILED;
> -			queue_delayed_work(iavf_wq, &adapter->init_task,
> 10);
> -			mutex_unlock(&adapter->crit_lock);
> -			/* Don't reschedule the watchdog, since we've
> restarted
> -			 * the init task. When init_task contacts the PF and
> +			/* When init task contacts the PF and
>  			 * gets everything set up again, it'll restart the
>  			 * watchdog for us. Down, boy. Sit. Stay. Woof.
>  			 */
> -			return;
> +			iavf_change_state(adapter, __IAVF_STARTUP);
> +			adapter->flags &= ~IAVF_FLAG_PF_COMMS_FAILED;
>  		}
>  		adapter->aq_required = 0;
>  		adapter->current_op = VIRTCHNL_OP_UNKNOWN; @@ -
> 1991,7 +2028,7 @@ static void iavf_watchdog_task(struct work_struct
> *work)
>  		queue_delayed_work(iavf_wq,
>  				   &adapter->watchdog_task,
>  				   msecs_to_jiffies(10));
> -		goto watchdog_done;
> +		return;
>  	case __IAVF_RESETTING:
>  		mutex_unlock(&adapter->crit_lock);
>  		queue_delayed_work(iavf_wq, &adapter->watchdog_task,
> HZ * 2); @@ -2014,12 +2051,14 @@ static void iavf_watchdog_task(struct
> work_struct *work)
>  			    adapter->state == __IAVF_RUNNING)
>  				iavf_request_stats(adapter);
>  		}
> +		if (adapter->state == __IAVF_RUNNING)
> +			iavf_detect_recover_hung(&adapter->vsi);
>  		break;
>  	case __IAVF_REMOVE:
>  		mutex_unlock(&adapter->crit_lock);
>  		return;
>  	default:
> -		goto restart_watchdog;
> +		return;
>  	}
> 
>  	/* check for hw reset */
> @@ -2031,22 +2070,21 @@ static void iavf_watchdog_task(struct
> work_struct *work)
>  		adapter->current_op = VIRTCHNL_OP_UNKNOWN;
>  		dev_err(&adapter->pdev->dev, "Hardware reset
> detected\n");
>  		queue_work(iavf_wq, &adapter->reset_task);
> -		goto watchdog_done;
> +		mutex_unlock(&adapter->crit_lock);
> +		queue_delayed_work(iavf_wq,
> +				   &adapter->watchdog_task, HZ * 2);
> +		return;
>  	}
> 
>  	schedule_delayed_work(&adapter->client_task,
> msecs_to_jiffies(5));
> -watchdog_done:
> -	if (adapter->state == __IAVF_RUNNING ||
> -	    adapter->state == __IAVF_COMM_FAILED)
> -		iavf_detect_recover_hung(&adapter->vsi);
>  	mutex_unlock(&adapter->crit_lock);
>  restart_watchdog:
> +	queue_work(iavf_wq, &adapter->adminq_task);
>  	if (adapter->aq_required)
>  		queue_delayed_work(iavf_wq, &adapter->watchdog_task,
>  				   msecs_to_jiffies(20));
>  	else
>  		queue_delayed_work(iavf_wq, &adapter->watchdog_task,
> HZ * 2);
> -	queue_work(iavf_wq, &adapter->adminq_task);
>  }
> 
>  static void iavf_disable_vf(struct iavf_adapter *adapter) @@ -2333,6
> +2371,8 @@ static void iavf_reset_task(struct work_struct *work)
>  reset_err:
>  	mutex_unlock(&adapter->client_lock);
>  	mutex_unlock(&adapter->crit_lock);
> +	if (running)
> +		iavf_change_state(adapter, __IAVF_RUNNING);
>  	dev_err(&adapter->pdev->dev, "failed to allocate resources during
> reinit\n");
>  	iavf_close(netdev);
>  }
> @@ -3666,67 +3706,6 @@ int iavf_process_config(struct iavf_adapter
> *adapter)
>  	return 0;
>  }
> 
> -/**
> - * iavf_init_task - worker thread to perform delayed initialization
> - * @work: pointer to work_struct containing our data
> - *
> - * This task completes the work that was begun in probe. Due to the nature
> - * of VF-PF communications, we may need to wait tens of milliseconds to
> get
> - * responses back from the PF. Rather than busy-wait in probe and bog
> down the
> - * whole system, we'll do it in a task so we can sleep.
> - * This task only runs during driver init. Once we've established
> - * communications with the PF driver and set up our netdev, the watchdog
> - * takes over.
> - **/
> -static void iavf_init_task(struct work_struct *work) -{
> -	struct iavf_adapter *adapter = container_of(work,
> -						    struct iavf_adapter,
> -						    init_task.work);
> -	struct iavf_hw *hw = &adapter->hw;
> -
> -	if (iavf_lock_timeout(&adapter->crit_lock, 5000)) {
> -		dev_warn(&adapter->pdev->dev, "failed to acquire crit_lock
> in %s\n", __FUNCTION__);
> -		return;
> -	}
> -	switch (adapter->state) {
> -	case __IAVF_STARTUP:
> -		iavf_startup(adapter);
> -		if (adapter->state == __IAVF_INIT_FAILED)
> -			goto init_failed;
> -		break;
> -	case __IAVF_INIT_VERSION_CHECK:
> -		iavf_init_version_check(adapter);
> -		if (adapter->state == __IAVF_INIT_FAILED)
> -			goto init_failed;
> -		break;
> -	case __IAVF_INIT_GET_RESOURCES:
> -		iavf_init_get_resources(adapter);
> -		if (adapter->state == __IAVF_INIT_FAILED)
> -			goto init_failed;
> -		goto out;
> -	default:
> -		goto init_failed;
> -	}
> -
> -	queue_delayed_work(iavf_wq, &adapter->init_task,
> -			   msecs_to_jiffies(30));
> -	goto out;
> -init_failed:
> -	if (++adapter->aq_wait_count > IAVF_AQ_MAX_ERR) {
> -		dev_err(&adapter->pdev->dev,
> -			"Failed to communicate with PF; waiting before
> retry\n");
> -		adapter->flags |= IAVF_FLAG_PF_COMMS_FAILED;
> -		iavf_shutdown_adminq(hw);
> -		iavf_change_state(adapter, __IAVF_STARTUP);
> -		queue_delayed_work(iavf_wq, &adapter->init_task, HZ * 5);
> -		goto out;
> -	}
> -	queue_delayed_work(iavf_wq, &adapter->init_task, HZ);
> -out:
> -	mutex_unlock(&adapter->crit_lock);
> -}
> -
>  /**
>   * iavf_shutdown - Shutdown the device in preparation for a reboot
>   * @pdev: pci device structure
> @@ -3861,8 +3840,7 @@ static int iavf_probe(struct pci_dev *pdev, const
> struct pci_device_id *ent)
>  	INIT_WORK(&adapter->adminq_task, iavf_adminq_task);
>  	INIT_DELAYED_WORK(&adapter->watchdog_task,
> iavf_watchdog_task);
>  	INIT_DELAYED_WORK(&adapter->client_task, iavf_client_task);
> -	INIT_DELAYED_WORK(&adapter->init_task, iavf_init_task);
> -	queue_delayed_work(iavf_wq, &adapter->init_task,
> +	queue_delayed_work(iavf_wq, &adapter->watchdog_task,
>  			   msecs_to_jiffies(5 * (pdev->devfn & 0x07)));
> 
>  	/* Setup the wait queue for indicating transition to down status */
> @@ -3968,8 +3946,8 @@ static void iavf_remove(struct pci_dev *pdev)
>  	int err;
>  	/* Indicate we are in remove and not to run reset_task */
>  	mutex_lock(&adapter->remove_lock);
> -	cancel_delayed_work_sync(&adapter->init_task);
>  	cancel_work_sync(&adapter->reset_task);
> +	cancel_delayed_work_sync(&adapter->watchdog_task);
>  	cancel_delayed_work_sync(&adapter->client_task);
>  	if (adapter->netdev_registered) {
>  		unregister_netdev(netdev);
> --
> 2.17.1
> 
Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
