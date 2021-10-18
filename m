Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3169A432779
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Oct 2021 21:20:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DD42882C2E;
	Mon, 18 Oct 2021 19:20:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1o2txulNxvLL; Mon, 18 Oct 2021 19:20:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 758A58105C;
	Mon, 18 Oct 2021 19:20:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CD7461BF319
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Oct 2021 19:05:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C8F3D82909
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Oct 2021 19:05:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id w1YUDJw_xKfJ for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Oct 2021 19:05:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AD4A682AB9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Oct 2021 19:05:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10141"; a="314541802"
X-IronPort-AV: E=Sophos;i="5.85,382,1624345200"; d="scan'208";a="314541802"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2021 12:05:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,382,1624345200"; d="scan'208";a="661503687"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga005.jf.intel.com with ESMTP; 18 Oct 2021 12:05:45 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 18 Oct 2021 12:05:45 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 18 Oct 2021 12:05:44 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Mon, 18 Oct 2021 12:05:44 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.170)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Mon, 18 Oct 2021 12:05:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IyzXjT/LPduReERSzQJBn+11KqwCDZ3TC5SUeccqhRcUPY1hrXozsFAcuos6Veuup5f7PN8kn51gDmvW3wnswOdAaemDRv6SkeAW/MAWSq5ehmH7geaPh8I9dHFjOetXNpf+22bnBRlQo8w+qVAMXoKDfzr0qo6OdKF6wh5gxr+uvCrAswzntJ2LH6vMu0OtzqnHZF+Ce1SBMs3TBqitfwyf4z+WoX/70ljrdUBjjP1sSm4DpqsKMTehPhgn/zuadtpPnPLs3Fk4iOFW/1x5KBeDoqgKGE6XZBic7vs+uSVETVjPphyso0sBoi62g19VjXCClTQxyTtWts/TrgM3DQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jo4c4Zq0SqSJXeIWg/MhDyCQZ2pM3d4ILhABLpz0c/Q=;
 b=Lu3UVLqNWaHndZknlkhYIGkA6rxNocHlS0sJWtkhND1DDI4S4RtdoD7bjeRmp1h6CT02VeU38/Y17iqUPAU1HW8iwdQPiXKauG+p1Zc7IQkorqZ1oXc11/d1e/Xs3e5rOhF2yYFP8Jbsz3uyIed9VBgMgdrSOuqGkYyCf8vv/F3KNIdJ53dhQ8JaU5tDZ0ob6ZJs56/lw1WE8FYRMv1AOUFlxjeCY/hnEko7uiBJod6Hou22r6jCluDLFAmld4FjSzyIB5cgC237CZjUqr61uMGwBtp7d4797rft/Tu/1Ec+F0jxkUdU6CvOv8E/rcROwn/jXdG78OuPcMvA02jpdQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jo4c4Zq0SqSJXeIWg/MhDyCQZ2pM3d4ILhABLpz0c/Q=;
 b=k646YtwIuWT2L96DLuuWGYwN4boRWdm1EDfpC5Mm/rafSRkXDFVByks5jafNUuKfFz2OqnRfHm9zArRjrRoMOoLtZNr/XiMrrEHBysd9Fj2rfdaXHYW9xlo6txHuzh4DGKujjfWNqZS0Xufrcf0naidhTIRdlZ84kgqx1mAPSTU=
Received: from DM8PR11MB5621.namprd11.prod.outlook.com (2603:10b6:8:38::14) by
 DM8PR11MB5656.namprd11.prod.outlook.com (2603:10b6:8:38::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4608.15; Mon, 18 Oct 2021 19:05:43 +0000
Received: from DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::555a:1e2a:ce25:53ac]) by DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::555a:1e2a:ce25:53ac%7]) with mapi id 15.20.4608.018; Mon, 18 Oct 2021
 19:05:43 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v6 3/3] iavf: Fix init and
 watchdog state machines
Thread-Index: AQHXlNb+GsPZJTRw10eCcVoAX28YOavZfH6Q
Date: Mon, 18 Oct 2021 19:05:43 +0000
Message-ID: <DM8PR11MB56210BCAB0C7EF71C287B511ABBC9@DM8PR11MB5621.namprd11.prod.outlook.com>
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
x-ms-office365-filtering-correlation-id: a92a6c17-f7be-48fa-28e2-08d9926a489e
x-ms-traffictypediagnostic: DM8PR11MB5656:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM8PR11MB56561C55E41DF4A63FCF476AABBC9@DM8PR11MB5656.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 7FjWcQS6FnCqtEAD2RBLT0LlZIN9MzdZ0JBDQMclWUr+sYl8MZscyWM7BfaKaZsvSoN1MiqYBxObRQUoQa+msDM0Zc/THVlLjy+k5TPngkDvdq+kI1z90OT1vt4p4j9kMcS3Chi/TpUHZD3a4Njg8mb0qwCMUNL1MUXd9G678JyOHHnloIh/bpHh3hw1sHTMgaY0jKCBeL+41Okm+wZmj9jtb5svCM9Eq/dayMJcYCa/8Lkot1FwsGXM3YjkI1FrnWokJa9OSxIjSNITKZ2T0rC1K4lLVXLNIkv2EE6BtU1MbR+r5a/W8pZnvksmQMF4o477GsLt66kdP7rV1bM0ZtPidjwxvxsKWrJ7hbjR7OvIqoiju/gb6w0Gg3GdaCSkt+4tY332JwR34PtdNDhPJYxG7BFYO1GHh2xMQ5UzqM1VV8L7eI5/OWX2yzhooL42kRBca9wsFrsm8qxqih5u0nqts1vPMgq/QrYNzzjvInNJQVBz09QI1kWk1KTwhEBlZskhnIXH16AjUMElBGK0nWBTcavHhTqSqcMSHp2PRA7SbKnHEn6PTU2X/nSQD2go3JZ00oVpePioFb6FngYhdTnsPbEfv4pBZg4IRwQZ1QrJODC+23lm0yWV2mpO+2XDM9ogBd0iiK1J+Z1m3gxMJI/uxow/7oMPfn0rmTc/f+0Ul83mc8q+xfS7pMm3pPlE725xLDJLGc48SA159dQlkQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5621.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(8936002)(508600001)(86362001)(53546011)(38100700002)(4326008)(71200400001)(5660300002)(66946007)(66556008)(66476007)(83380400001)(64756008)(2906002)(38070700005)(122000001)(55016002)(26005)(76116006)(33656002)(186003)(9686003)(82960400001)(7696005)(66446008)(30864003)(8676002)(54906003)(110136005)(6506007)(316002)(107886003)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?WJcZw00STcCeuDWUqShbd+zkr9l2tG2gBt/ArfPXGXRKXLDe8W2Dh8aRwPgL?=
 =?us-ascii?Q?UFMm4b08Zh/BRVNVsmuzfWeGy05AdhV8TSTcgI2fetT4DInFXHIBo4tFzHiQ?=
 =?us-ascii?Q?JBYhgWWkWlaF6vcyPp2PHLL4cchmg6QcTZOUaGuaMxCzoZ5Jcr2dZEaFpDqa?=
 =?us-ascii?Q?Bu3S1VTx9eO2puSxzQalP5R9lF2ac0plgF+GjFtuDEhNsj0mv60Wfp86hZFc?=
 =?us-ascii?Q?RAoUJ8DIsG2NlUMuKuFX57LROisFnlbROqtAnhVjhRshSR6w3h2rLdgqr4jr?=
 =?us-ascii?Q?yIaKZtbIndLhHQethjnlpGZjPvf+V64pRK7ARl1gZ78TgRAvxIkSOhq/Fr+8?=
 =?us-ascii?Q?RKJBBPUlkCR6dpjERdrSPt8oIomgZ3JBQXwRcOQCBof5rrjY1+4UnO98mir2?=
 =?us-ascii?Q?Nz+WpJnoBPTqXxR/ht20LA8pYYIUj7vtvsVWHVpxbu+t5blOqKayk7Pqxulu?=
 =?us-ascii?Q?oUZbD8Tp/GpOqp+YaJHGk67krgtwTDzRJeE8BBNmu7Fr/Xkf6h5QIQS0CRD4?=
 =?us-ascii?Q?e4KXY+rpY7xe2jwMpl0btJDr5uOIQX3cMcJOTNNTcQxEdCp7aVPxjPE4CYNy?=
 =?us-ascii?Q?g8/qs4qr8LC6LXz/sbbDMjV5z8xbs2T/xKrQGnFNpVRtPsrKvPgB1xNB/YLc?=
 =?us-ascii?Q?VauaVYs32ctNOtE4Fqa1p2ffRuaHpN5rA550XayrJK/vzCDDRk4SWAOxGwqK?=
 =?us-ascii?Q?BF1V+pc499G7U3ricM6NVwb1ygkRnXImg3j/OKh762njWwUINHkMZwdXayqK?=
 =?us-ascii?Q?CU4adm5IdpZGvq/PUxhu+w8IxpEipVejl1t+6vCpulyCCkQ0c3cREMHrwGrR?=
 =?us-ascii?Q?GMNkOAFx8RQ+pE6EuQJNoJBiBdxzDQcetdJpGYjvTJ9oQ7hSO3Glp8oH93vq?=
 =?us-ascii?Q?vKJKX/kL6YoByEOYbtxOPJQyW7qrQRC36dHQbYxbbjFcM4VCWDdbyNJsVjZO?=
 =?us-ascii?Q?BDRsIpEgjYutLm3YXcGioi1tGSXyyYDUn4OsTpDx90p9r+auaQyi6Oq/tfU8?=
 =?us-ascii?Q?QNADhvOguAvZ+ufauE+Aj2xW6o2YAFGrmDQ09Ji9bkNEP6JKOcDERKo4qLLL?=
 =?us-ascii?Q?tYo/AsEMa/Q6DTE33HSjNwGaJtxeyBZAEGhRfJVK/mx4Vk8WcA/eF7sLohEu?=
 =?us-ascii?Q?0k22TprR2LpCoCU705NTLnoiijH2asMGbl9ZKzaxgDnPeHD29z+UU+kNfNb4?=
 =?us-ascii?Q?JH37Sxvy5xlkkv8lVpByvo16jKWObH/aO943WUPzUiwbxioC3fBPQBntuyak?=
 =?us-ascii?Q?TLv6cuK3crl4rRoUtZDadQdk38Q7Ai3SoU539NSeSdg+6/r4NyCiW9GQIiAp?=
 =?us-ascii?Q?ODVdq205LHonj9VYVJHmjaDe?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5621.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a92a6c17-f7be-48fa-28e2-08d9926a489e
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Oct 2021 19:05:43.1163 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: A4pmlaBEz0dUtlSK5Anu3LwP/385N934rmM04tLs7FUJ/WBtQlS8vut2RyescasihPj8E5vhSgYtDVNeuRVDozTnz4aXiYT1a9tUOYCjXfY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR11MB5656
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
