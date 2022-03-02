Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BC704CB143
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Mar 2022 22:26:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id F278F408C5;
	Wed,  2 Mar 2022 21:26:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rHoLIugGTkBQ; Wed,  2 Mar 2022 21:26:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9556E400C1;
	Wed,  2 Mar 2022 21:26:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EEE8A1BF3F2
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Mar 2022 21:26:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E851A823C6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Mar 2022 21:26:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BCH8oddhLIZ0 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Mar 2022 21:26:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 16AFC81368
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Mar 2022 21:26:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646256410; x=1677792410;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Ho5lEsjWB7xq8SZItgMIIPGaqqnmQ2TFdFXciNv34X0=;
 b=FErZgYylZTI3COyl85vq5NGnE0a2qvsaHzAyBJJt482tXwU5I3C6k/0d
 YzA2lyVOET6bT3xP0dZCt4pPERzBRan60rZWX6d0AUSSaXHMwm+VTf9EV
 9+VBQev4tb3doG+IoMRUtGP2hPsVztxA65hGncWZOvj1+QxZv5O7tpinW
 Ll7laCx4Lu/rAeAbFR5CAKmPcXfKNjgh/4rs8Xs+HLmKyFCHr1ADMj0eB
 dJ7xLNtJ+fVFnP8S6OLyofwPH+CobWiLie8LQ8GjpeEl4clJ8MkF5LSDh
 NRekqK+UtWwQXM8Am4PpTxFwmXc4MEG1FspIIPRDAw8q8vjvRS0v8tMy3 g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10274"; a="237019349"
X-IronPort-AV: E=Sophos;i="5.90,150,1643702400"; d="scan'208";a="237019349"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2022 13:26:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,150,1643702400"; d="scan'208";a="630548605"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by FMSMGA003.fm.intel.com with ESMTP; 02 Mar 2022 13:26:49 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Wed, 2 Mar 2022 13:26:47 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Wed, 2 Mar 2022 13:26:47 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.171)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Wed, 2 Mar 2022 13:26:46 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=R2shKxauICmHbsRzu1vWxRRFNetdZlURaiL+ypf/lBdZVYD9wlwFk5EcjnM3rd9s519Dv/BOtLtwyuKmLURHP+vgL7VaKXezIaAwyd3I7RUxjFbcdiyX3K8bEtCNOdQn7cdJ2MrBJ0EIeIzKXYdNM17IxMu3pzShFqFc0LztGm+CY+HYNc2beBSzCONyIwuEs+nAjRcwCOhob1d8WHCj7fjeZcduYjKHzZCJOEGQsUsaimULeIx2wzihWv6oRA8Fy9uDZktzxGvWI6WqkZNrpxLzQxBzLpe5IeakEuTlUaRfgRfRfdTxXbIfX1WuNdfXrA1zzGt7+xbV2KPRdihUmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OqE8+r3oiYBxQNu37mT5/nON1jgy/U/IVId3xMv2YGA=;
 b=Guxe9OLtq9IWaVWiwVh8X0YOa9Wup0MCBRTAHCZUbw5IgrQTGWwBJ6aZg8USp+mEqSk3Z2QD96mJbIbMcC0CnZg+ORz/Sl/UFuQjDgQv0pv/7/elVi7f53hpZUWxJT2UvkRE3aYLi02XR9CfZLlteRkK+ElG89MctlYFTB5dmGHizV049/Fi62rK4doRpF3HoDT6DYstaRgWtOs/UypAmYtkZ/lLEnnS4RU5NGxpUi/4Qx8Z7UqFUFdPJpJJRqNGV94vYiKUlf88sQbMhVJmNUpp/EGitNwf4MTCuFtQv1AW1Kr47EUCZTYfcY1Xro1CpWCFmKjxZ5amnASEw13fpg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5629.namprd11.prod.outlook.com (2603:10b6:a03:3ab::13)
 by MWHPR11MB1310.namprd11.prod.outlook.com (2603:10b6:300:28::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5038.14; Wed, 2 Mar
 2022 21:26:45 +0000
Received: from SJ0PR11MB5629.namprd11.prod.outlook.com
 ([fe80::c194:9f26:88a2:b9c0]) by SJ0PR11MB5629.namprd11.prod.outlook.com
 ([fe80::c194:9f26:88a2:b9c0%8]) with mapi id 15.20.5017.027; Wed, 2 Mar 2022
 21:26:45 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [net PATCH 2/2] ice: stop disabling VFs due to
 PF error responses
Thread-Index: AQHYI5ioeh34+zJniECMxnMgv24IR6yssSTA
Date: Wed, 2 Mar 2022 21:26:44 +0000
Message-ID: <SJ0PR11MB562909589BB8EA12F736B4F7AB039@SJ0PR11MB5629.namprd11.prod.outlook.com>
References: <20220217005136.75627-1-jacob.e.keller@intel.com>
 <20220217005136.75627-3-jacob.e.keller@intel.com>
In-Reply-To: <20220217005136.75627-3-jacob.e.keller@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.401.20
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f7b8f4ea-1d78-47de-97de-08d9fc935a00
x-ms-traffictypediagnostic: MWHPR11MB1310:EE_
x-microsoft-antispam-prvs: <MWHPR11MB13103C9569B1369B7CE760C9AB039@MWHPR11MB1310.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: rjCxWirue0sWh5bvUiV+uSCaHiHY4IlpiDr1OeKbY7YuECkdSdVnDM9NLHzPqzIJObxSO7Tnfr3v2cl3c5ecNwl7wD9tj9fvMcOspUCfeUu2sZiZakTxFYH09CKCjPKugOMQ8L5QHqdQ8mAtI1kDejhINKv4WfmSxLQPPSZeQdLfAn05QrKfiMy8KX3GiqwF0KIj0xl+yDJvF6cUkuV7QMx3LZy4vTYlAQcvuYZX1HYbmM1MrELN0i5voAG5/LEk1lwxuLHiXOnCsNf/QaFAd+O8A+hhXzrApVZLBM1If4a11E8dlOcNw00c9fCbfu4W3/2HmMJd6R280V8qZOvScsNChBRUKorC+FrRzaaTtNtknXqAt0HFTDiy44Ngk1oyROtWpm17osru/6bDQ8JNFKhmOKV1T69c8xffzr9rzB+6qChO5FyVBBoDj6nCv2hiV5o3S5EEZAiGmoZXGu8e74x7S7PVRnOOynKzSxB6QO5pCPNdZbFbAhv2nZl6bZk+j8KZLvwKr8+01vMT+WTsAJxzlvMg1W8dD0X00p86BHtWb0y2URfVy8ejREgwbzBesJ4vmjizdCV/EKCf0UPAPIxlVyY1I4Vmf9P4m4E1JUlPPcm8gGWBYxqOBi12O7OFh8DlhvNNFr5Nxly7LEjdnyIcsbDTOxpsM5VTFjV8A97X7XuJbeu2vp/iC5pRrh/eWwpxolWjVLsuhnWQSBEVqg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5629.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(66446008)(122000001)(66476007)(38100700002)(8676002)(33656002)(38070700005)(66556008)(66946007)(64756008)(76116006)(2906002)(7696005)(53546011)(6506007)(82960400001)(9686003)(71200400001)(52536014)(83380400001)(508600001)(8936002)(86362001)(26005)(186003)(5660300002)(110136005)(316002)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?VHRwvKFKgtDHIG5d8jf2YMjGEuM43weFcc8mSiTqK+7YpGVuWZ1oYa65efoW?=
 =?us-ascii?Q?fq1vED55iyFNdIq5TObdqfWgAMilXIAtNJ5aXHlvj/zj0VyHwkk4mkSiXTci?=
 =?us-ascii?Q?1nznsnOlEvI2pXE23ss4DfApIzN3JyQqz9WvFKqmam1pYPO9T3dmN0r559Yo?=
 =?us-ascii?Q?9FG0effQk7YPaQJ5LVDF02t6lS/m276leBxigC5EVA31EWi8K7q+BbSAuOHR?=
 =?us-ascii?Q?0b0f5oC2JVdepfxGSB3zrUzgoGukAjTAA9zRWyWn3JPTgitRfFQy4Sysv9Yf?=
 =?us-ascii?Q?AUfs6cgbLcZ/t0dogclSa/syKxzoNh9qrC6GDeq7wLEOndIZzF1CCp3dsoBI?=
 =?us-ascii?Q?vLRTJNl0khrZBHiR3IXbr239JyhSwhG0TG1QvIDny8mKZPv8PGnflKApGUH2?=
 =?us-ascii?Q?HgcFGj4cXQZQ5BSrMggRENWnMXXBlptZeScHV0RVxuL1fzG4jH4kmgCgD2ox?=
 =?us-ascii?Q?iEP8mdDRznkzvP2wH5tB+o0TvxSjzXUwop52hlU46wVB9iUDQYBVTB8iZI29?=
 =?us-ascii?Q?OmRZHzd0VjJbw8tZcAFhcas5txUSJ8QTD842qMuEV6CluhdwFNvg9Erl9+e2?=
 =?us-ascii?Q?4Z7HcIaSdC+N5o+omaiLbFXDBZkBi9XKHHzWMNeLmcKuNbbp+08etqLtQSeF?=
 =?us-ascii?Q?HPdWIMAmKVV/ynd/yD45P26OKfFGKLJyg9jJjSeb8RI02twrELCS8cGD85C5?=
 =?us-ascii?Q?zGiF5/ZU60RcjtafqNU03hg6O1Sff3L8/J2Kj+1ittwF3qbbwmwwNtSoqv0J?=
 =?us-ascii?Q?u2V6JE3W3VUZz7t+y+h4yzBewVqkblOeIX/9j8dUbaQhqp6cMctbAWyM2Caz?=
 =?us-ascii?Q?PR/RD5fN37rmFmeRajgstgco6y/3YWi70546UvSiVXZMK66U3bGFkfiseRtr?=
 =?us-ascii?Q?ajUs27Qv2NurXkf62pJbgCh6bzzCjFh2rKGcUDa4CMJl8FPnaSE+k3ZnyGsw?=
 =?us-ascii?Q?lfbVeHqtcd2zVI85M8zPuZl9nWsijEkZkfivikNtfGLlJ6N70jRsCUhf9lmE?=
 =?us-ascii?Q?73hbDyC4DgX2CnWDRRVA2KV1VVtS9/zPaol+dLGKIGHFm8HpGfO60nfJUd0c?=
 =?us-ascii?Q?w9psfh294LX/6fZdP+xENlN6aQWkZbmugdQdSnhuAvHatJG1LQQSRuqsQEmv?=
 =?us-ascii?Q?9L983oyH7zDdZ4FOuGZuingbhx2p86EKzy61+HyX0gViUgbB3Ko6Wa4mYeNX?=
 =?us-ascii?Q?zsmcy9VxSq2GLWMYwfcRw7odyBhPp2VTlHGE6nTWi46tWCJk+G1lg9T+9ftH?=
 =?us-ascii?Q?bmlAInFtSCDYTTSv6FCZvEweil0Bo6m6Wm6PTxq/snZWOqdrZiERc5YIFow8?=
 =?us-ascii?Q?mtEonIi9+XjJ6JMvdStAHgMLCGTxSNshjhJfg2nb5ylghRpvOYKx7q7zcYZQ?=
 =?us-ascii?Q?W0Yhs0xVDjAE64hOUS4yddK6MIY03ViMTimbfqOexCUQDvtmLBDyhM7ljakY?=
 =?us-ascii?Q?7+s1179G8sXCoC7fpRT8zh2AuueeAFHOOXwsc7XVInEGkJYMvAC44hhkL9z9?=
 =?us-ascii?Q?eJElcVc3vSeRPNjjidzc69L13xfDN6hZ5yNje87ffWxAZMkHv8kCXOD1n+w1?=
 =?us-ascii?Q?7PQwSJ5tDq6Vu6ksirXSRaBMzef7QNzfZnB06k7pLlRZoeSGuKuxq0rhs3of?=
 =?us-ascii?Q?NSMNrjP+nJQO5SEs1RIVpXrNJ/nNdGYcFfWM6z58+vynoBwyjuuJ+sTU+g5L?=
 =?us-ascii?Q?pFsbIQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5629.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f7b8f4ea-1d78-47de-97de-08d9fc935a00
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2022 21:26:44.9235 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uuMCZgj74kbmXd7pF9o1zTZCmIviD5qzChRC/q5nzi0HmjWV5ULN7fIBvW6KiT3Q1ELzzdR9oBQrdxQiqTQkaOXKS3yRH3jz4WTZVtELGV8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1310
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [net PATCH 2/2] ice: stop disabling VFs due
 to PF error responses
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
> Jacob Keller
> Sent: Thursday, February 17, 2022 1:52 AM
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Subject: [Intel-wired-lan] [net PATCH 2/2] ice: stop disabling VFs due to PF
> error responses
> 
> The ice_vc_send_msg_to_vf function has logic to detect "failure"
> responses being sent to a VF. If a VF is sent more than
> ICE_DFLT_NUM_INVAL_MSGS_ALLOWED then the VF is marked as disabled.
> Almost identical logic also existed in the i40e driver.
> 
> This logic was added to the ice driver in commit 1071a8358a28 ("ice:
> Implement virtchnl commands for AVF support") which itself copied from the
> i40e implementation in commit 5c3c48ac6bf5 ("i40e: implement virtual device
> interface").
> 
> Neither commit provides a proper explanation or justification of the check. In
> fact, later commits to i40e changed the logic to allow bypassing the check in
> some specific instances.
> 
> The "logic" for this seems to be that error responses somehow indicate a
> malicious VF. This is not really true. The PF might be sending an error for any
> number of reasons such as lack of resources, etc.
> 
> Additionally, this causes the PF to log an info message for every failed VF
> response which may confuse users, and can spam the kernel log.
> 
> This behavior is not documented as part of any requirement for our products
> and other operating system drivers such as the FreeBSD implementation of
> our drivers do not include this type of check.
> 
> In fact, the change from dev_err to dev_info in i40e commit 18b7af57d9c1
> ("i40e: Lower some message levels") explains that these messages typically
> don't actually indicate a real issue. It is quite likely that a user who hits this in
> practice will be very confused as the VF will be disabled without an obvious
> way to recover.
> 
> We already have robust malicious driver detection logic using actual
> hardware detection mechanisms that detect and prevent invalid device
> usage. Remove the logic since its not a documented requirement and the
> behavior is not intuitive.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.c   | 18 ------------------
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.h   |  3 ---
>  2 files changed, 21 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
> b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
> index 8a61b23f7cb3..353c2a3755d0 100644
> --- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
> +++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
> @@ -2180,24 +2180,6 @@ ice_vc_send_msg_to_vf(struct ice_vf *vf, u32

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
