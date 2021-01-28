Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F793307401
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 Jan 2021 11:47:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 17BE8864E6;
	Thu, 28 Jan 2021 10:47:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4JCq0FZF3nnb; Thu, 28 Jan 2021 10:47:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8F122864F4;
	Thu, 28 Jan 2021 10:47:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C29D71BF3B9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Jan 2021 10:47:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B49FA203DA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Jan 2021 10:47:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WTxOHanzZAS0 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 Jan 2021 10:47:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by silver.osuosl.org (Postfix) with ESMTPS id 25C03203CD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Jan 2021 10:47:29 +0000 (UTC)
IronPort-SDR: j8M7FdDB36qov+GPk8mjuRpzbDCLQ4GaA8Y1Xro3BlpLHBWzJ3ndgt3WXCdmR6uxQx+nTUU/yW
 rK9efGiwc2XQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9877"; a="159986358"
X-IronPort-AV: E=Sophos;i="5.79,382,1602572400"; d="scan'208";a="159986358"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2021 02:47:28 -0800
IronPort-SDR: gAoJBH7Hl94liGt47kUKprS4CL6H7RlIlpsxN81QCRv+7AZDSAIGrtUCA9P6hjE58/rHTVMpgV
 OVYeVnLJO6mQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,382,1602572400"; d="scan'208";a="430473536"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga001.jf.intel.com with ESMTP; 28 Jan 2021 02:47:28 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Thu, 28 Jan 2021 02:47:27 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Thu, 28 Jan 2021 02:47:27 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.106)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Thu, 28 Jan 2021 02:47:27 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YwUXhcMg6t7XCJRha7vgQUFI6zMkC3y2g6m3SWpy4VoSvwfKFEr38mj5aoocnp95pQdFUzbiDPNRd/gtGNOTveOjABREtcNYW7xDscnVGAGNIFF3rODdANOZDqaRrlIa4Ee8Zkf6wTRkTTTYRd3vIb58ENY0sBRD2K/797JtWiB+Dh6h8cmj1IuiZwQWmROKSDGy9NxHc/ZUtfL83SpLkUXjgrwcYrSX9W6KTESEWqTIg0TXGrJTQq6H9v3EHfyfwxLzcnf+aq7IPZznA95VhDjeg+Wvf27UqAK0F4g3b3trbhoP7Qczi2pARqO4wlmtreBPXeZFSeum4g2I1M9m3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EoZOZC/HsogaKkfSE5cHLniRERXIh1vVNnozubvhCBM=;
 b=Ys/RFqZogftj133Hthx0sUeGnJk54vKQjWL/TfwYk9c2Zt+hj+e6FwM/zmvx67T9gyOqALPr+UNwwIfDW2WvnOgKwRnkN6XXrXjfIN6IIoPOhAFFX/7tTAgE2H3hxauEAGcR8scUVijZGnGPxZPR+W4l39wkEBEMvLhT+FAk68/UhZ6ivR4wBf2zezodMdXZWC/YWdnHBM1sxXq2/jYrn8lWSTDYReBYbYkZxn8yOmquWSxyzKpwl6bLgonZJlIIOFh+STow1evLu8OMIcCFhaf5v98/CXGNPR/bm5KTx4viOwQs4VTHFwQJgi2IAJfCmkcDJhnGa3/zH25+9m9iOA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EoZOZC/HsogaKkfSE5cHLniRERXIh1vVNnozubvhCBM=;
 b=eqlTnmPYwXCDpZrr4KEPZUmTR75hmWAf6sxgoB5CxoC+sK3bL+2/1uVMwZu9/LR90EKE6FzNGb/RL4vrtjDtlZcvb2OLTnwW+EeNbCL76jctTmz/Ujk3s3NnpQ8KcZWMjYXgvCyXgSOKznr+gBgDThI7jWdGzaEacpWbhZLy98g=
Received: from CY4PR11MB1576.namprd11.prod.outlook.com (2603:10b6:910:d::15)
 by CY4PR1101MB2261.namprd11.prod.outlook.com (2603:10b6:910:1f::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3784.16; Thu, 28 Jan
 2021 10:47:26 +0000
Received: from CY4PR11MB1576.namprd11.prod.outlook.com
 ([fe80::e832:8392:8dea:28d7]) by CY4PR11MB1576.namprd11.prod.outlook.com
 ([fe80::e832:8392:8dea:28d7%7]) with mapi id 15.20.3784.019; Thu, 28 Jan 2021
 10:47:26 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v5 1/2] i40e: Revert "i40e: don't
 report link up for a VF who hasn't enabled queues"
Thread-Index: AQHW8R7jokdiCFUZRk66kASHl31nlao845Ew
Date: Thu, 28 Jan 2021 10:47:26 +0000
Message-ID: <CY4PR11MB15769360346088EE2F8C1D61ABBA9@CY4PR11MB1576.namprd11.prod.outlook.com>
References: <20210123002223.361450-1-arkadiusz.kubalewski@intel.com>
In-Reply-To: <20210123002223.361450-1-arkadiusz.kubalewski@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [188.147.123.151]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5021ac7b-2e1e-4cda-7953-08d8c37a19fc
x-ms-traffictypediagnostic: CY4PR1101MB2261:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CY4PR1101MB226139F9EC6208C1140EA093ABBA9@CY4PR1101MB2261.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 9yNt+spZndzfICHMmugHSav53sMNRMPR0LjLXqrzqrELMgWv1hpfSOMbvJ1nzrrITLpeNZKbKGqljLAzspOOu/Z0kksm3ltVoLpucaaiVZDHcsByeDZGfIgwMoRo3WFm+qi4TsBHnQx+bAagG2Xn6c+qpPzlwq0pTpa6TFnTOGcxINA3LfUDOxNT3QiR8UAzAJNSHdt7cGM66rpzSS/C83o6fwosFKpykQJNkgg/BhVWHcQW9Xk7t4VVz2qEhy6ulLekX4HUyvQdak2PhztjMdCBfEB6XZ1zyWrmbKPl507sbZIxtSwd01TImONwImygLm2LQmhZsG9cBSaBBF1/VCyTmrRy/bvfOxH/usscA0F9Zu8Khf6gWLtE7hqmickzRwS8+CO3Q4ngrkJtfgE+4pxOYK494NIxbAqCStXqz1Cqw/TjZHn6MaOXoxBG44RQsaj/OK1gPvYi667R67W77kphJq8RiSBxaRGfkn+HbdaDMpLF5Htu7llX0zvHrDim/gpwlqA2Br8/8efJYSYRFQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR11MB1576.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(346002)(39860400002)(366004)(376002)(136003)(86362001)(4326008)(5660300002)(9686003)(71200400001)(66946007)(52536014)(66476007)(76116006)(107886003)(8936002)(6506007)(53546011)(64756008)(66446008)(26005)(55016002)(186003)(316002)(8676002)(110136005)(7696005)(33656002)(66556008)(83380400001)(478600001)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?phJbHwEu96V5Jz0G5KcJPeMySkCpky5QNosQwDTnyIbFzdK/dyqlTNDL27Bk?=
 =?us-ascii?Q?DAsFxR1a22x+LNU3acHoVPRaxxFlF2rjf5PrHoGl2wT+YIm+Oz95MWvQpIvv?=
 =?us-ascii?Q?a4I5JB+BYSJEGRRAvaRrK9G4qZLC1QVuWmPXIMxRgVq+WjNgbATei6T5Nwol?=
 =?us-ascii?Q?nWYbh/fLp9Ot+jZnslF7OhJ7j6lS6lzU9MCU/XAZWWXKzopqW3NHfqnqoq7a?=
 =?us-ascii?Q?dN9DfeZuH+aBM+nhlAc7yUHoskfHLHngd6JaSCU7ZVIIMFjrlBicGixDFYpE?=
 =?us-ascii?Q?Hu3HrVzTQkjtelKk550NaADGgpSsVg6QptMLU/DPHsh3qce1NOusmaMDZyRF?=
 =?us-ascii?Q?zN0/xIqEjW+ARW3/x8VDauQQlOkVWhTvNAmD3G2hV9SOO21da6RXNFl7SdYk?=
 =?us-ascii?Q?WDaHcfT9i8spHHsAhXapvA1hY6ufzgqrcixKevgimlbSfqpicPKu4z7o/dSx?=
 =?us-ascii?Q?nJ+zvn3sWrW6WUE+ZB+ylZk/E1qUM4fm4SLol9GedeNSA3sAnsBE+PuM3OI6?=
 =?us-ascii?Q?tbaZwufixMH3ieHaPzqRwlnDkjORwH+P0RW087CCNT3uqVJWkgwVtUxS12lA?=
 =?us-ascii?Q?eQBIoxcJEm+EG4q6+i2qdTfynlC4nP3erKSZlG0Z+fedFmuSMLA1W6unvRhZ?=
 =?us-ascii?Q?Y8GMQ+ETWRlXdYqAupjXFYGOdK5Itnofiac77ZNG1zKKZrUHrrrG6lXcJms6?=
 =?us-ascii?Q?fBNXzIKYjFvr5FKNQW7zGGX/Op+HBXZSvzJEKOVar+bNicoTwnxlgqistiZl?=
 =?us-ascii?Q?5jV7+9GNvhkJdSZASZWLTvwVTI0t8NgFPZAG0eJY6NBXD98GuAXuPBBeCjoP?=
 =?us-ascii?Q?aWKM8vVkCdLCUSwlbwd3NYgAzjZeEVOB3O+ZtHqypxh8CPGzXKlSA+oFIYD2?=
 =?us-ascii?Q?AlYzWIrhp77kGZ1M8k6TSUqKM1ofheLlp/uaUiLMKtueQAhZO+qnehUcMyDd?=
 =?us-ascii?Q?1TxeUG4G4xx683Ff3Ica8XFz+vs6sUhR5AzfaU+3smwHPJrv/5KrKmef7zNv?=
 =?us-ascii?Q?vKOBcihq4OsK+lQFyF6VH/m9poAi6Bvuu70eYLJML+q231EheTkIAz1KAJ9K?=
 =?us-ascii?Q?XHwWOgTu?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR11MB1576.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5021ac7b-2e1e-4cda-7953-08d8c37a19fc
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jan 2021 10:47:26.0948 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AHfVJ194NnfH8k0ECCKahS8ff5AVxYDsiBA72NwMliPCFFpdGlHSwx0el++a/mOfWEH/4QxemflVS2C7/DnKo0NmmnDAX0bgk+LTWpWbqLI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR1101MB2261
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v5 1/2] i40e: Revert "i40e: don't
 report link up for a VF who hasn't enabled queues"
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
Cc: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Arkadiusz Kubalewski
> Sent: sobota, 23 stycznia 2021 01:22
> To: intel-wired-lan@lists.osuosl.org
> Cc: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v5 1/2] i40e: Revert "i40e: don't report
> link up for a VF who hasn't enabled queues"
> 
> From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> 
> This reverts commit 2ad1274fa35ace5c6360762ba48d33b63da2396c
> 
> VF queues were not brought up when PF was brought up after being
> downed if the VF driver disabled VFs queues during PF down.
> This could happen in some older or external VF driver implementations.
> The problem was that PF driver used vf->queues_enabled as a condition to
> decide what link-state it would send out which caused the issue.
> 
> Remove the check for vf->queues_enabled in the VF link notify.
> Now VF will always be notified of the current link status.
> Also remove the queues_enabled member from i40e_vf structure as it is not
> used anymore. Otherwise VNF implementation was broken and caused a link
> flap.
> 
> Fixes: 2ad1274fa35a ("i40e: don't report link up for a VF who hasn't enabled")
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> ---
> v2: improve commit message
> v3: net tree target
> v4: split into 2 patches
> v5: improve explanation of revert commit
> ---
>  drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c | 13 +------------
> drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h |  1 -
>  2 files changed, 1 insertion(+), 13 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> index 7efc61a..1b6ec9b 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> @@ -55,12 +55,7 @@ static void i40e_vc_notify_vf_link_state(struct i40e_vf
> *vf)
> 
>  	pfe.event = VIRTCHNL_EVENT_LINK_CHANGE;
>  	pfe.severity = PF_EVENT_SEVERITY_INFO;
> -
> -	/* Always report link is down if the VF queues aren't enabled */
> -	if (!vf->queues_enabled) {
> -		pfe.event_data.link_event.link_status = false;
> -		pfe.event_data.link_event.link_speed = 0;
> -	} else if (vf->link_forced) {
> +	if (vf->link_forced) {
>  		pfe.event_data.link_event.link_status = vf->link_up;
>  		pfe.event_data.link_event.link_speed =
>  			(vf->link_up ? i40e_virtchnl_link_speed(ls-
> >link_speed) : 0); @@ -70,7 +65,6 @@ static void
> i40e_vc_notify_vf_link_state(struct i40e_vf *vf)
>  		pfe.event_data.link_event.link_speed =
>  			i40e_virtchnl_link_speed(ls->link_speed);
>  	}
> -
>  	i40e_aq_send_msg_to_vf(hw, abs_vf_id, VIRTCHNL_OP_EVENT,
>  			       0, (u8 *)&pfe, sizeof(pfe), NULL);  } @@ -2443,8
> +2437,6 @@ static int i40e_vc_enable_queues_msg(struct i40e_vf *vf, u8
> *msg)
>  		}
>  	}
> 
> -	vf->queues_enabled = true;
> -
>  error_param:
>  	/* send the response to the VF */
>  	return i40e_vc_send_resp_to_vf(vf,
> VIRTCHNL_OP_ENABLE_QUEUES, @@ -2466,9 +2458,6 @@ static int
> i40e_vc_disable_queues_msg(struct i40e_vf *vf, u8 *msg)
>  	struct i40e_pf *pf = vf->pf;
>  	i40e_status aq_ret = 0;
> 
> -	/* Immediately mark queues as disabled */
> -	vf->queues_enabled = false;
> -
>  	if (!test_bit(I40E_VF_STATE_ACTIVE, &vf->vf_states)) {
>  		aq_ret = I40E_ERR_PARAM;
>  		goto error_param;
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
> b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
> index 5491215..091e32c 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
> +++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
> @@ -98,7 +98,6 @@ struct i40e_vf {
>  	unsigned int tx_rate;	/* Tx bandwidth limit in Mbps */
>  	bool link_forced;
>  	bool link_up;		/* only valid if VF link is forced */
> -	bool queues_enabled;	/* true if the VF queues are enabled */
>  	bool spoofchk;
>  	u16 num_vlan;
> 
> --

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
---------------------------------------------------------------------
Intel Technology Poland sp. z o.o.
ul. Sowackiego 173 | 80-298 Gdask | Sd Rejonowy Gdask Pnoc | VII Wydzia Gospodarczy Krajowego Rejestru Sdowego - KRS 101882 | NIP 957-07-52-316 | Kapita zakadowy 200.000 PLN.
Ta wiadomo wraz z zacznikami jest przeznaczona dla okrelonego adresata i moe zawiera informacje poufne. W razie przypadkowego otrzymania tej wiadomoci, prosimy o powiadomienie nadawcy oraz trwae jej usunicie; jakiekolwiek przegldanie lub rozpowszechnianie jest zabronione.
This e-mail and any attachments may contain confidential material for the sole use of the intended recipient(s). If you are not the intended recipient, please contact the sender and delete all copies; any review or distribution by others is strictly prohibited.
 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
