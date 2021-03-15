Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A8BF33C9E8
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Mar 2021 00:31:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E976C83979;
	Mon, 15 Mar 2021 23:31:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sI_jbw1_xyou; Mon, 15 Mar 2021 23:31:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9A5C682C61;
	Mon, 15 Mar 2021 23:31:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9EB561BF292
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Mar 2021 23:31:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8BC844EC18
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Mar 2021 23:31:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jrGSIzdTK0Ma for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Mar 2021 23:31:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EE3AA4EC11
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Mar 2021 23:31:42 +0000 (UTC)
IronPort-SDR: N7sXFrrz66XsookacsWlIyr73QaFScyFKyGqxpFMt9vbK6z3gIwT4jIgehUO4SSJCkJ1ZPqvhh
 rgCOKHLSRqcA==
X-IronPort-AV: E=McAfee;i="6000,8403,9924"; a="209085854"
X-IronPort-AV: E=Sophos;i="5.81,251,1610438400"; d="scan'208";a="209085854"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2021 16:31:42 -0700
IronPort-SDR: 2px6KYLPJSZLtUNt0TKyTLlbH9i1LU1F0thsGKPZBpZR/GAj/4XM99vrVScIKOkidEEquQk/o1
 CEJTYYxR2h8A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,251,1610438400"; d="scan'208";a="405345676"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by fmsmga008.fm.intel.com with ESMTP; 15 Mar 2021 16:31:42 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 15 Mar 2021 16:31:41 -0700
Received: from fmsmsx606.amr.corp.intel.com (10.18.126.86) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 15 Mar 2021 16:31:41 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Mon, 15 Mar 2021 16:31:41 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.104)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Mon, 15 Mar 2021 16:31:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZB0g7cfn4CcKB4BnRmMOkGUOrOCKhoCVNlVxK0hMBFxZ1I/s9DVFbyx7TFwVTkuXdpsEPmd4dC8tJ0GgMrUnneegCaxu+PCKU3h6Jks77f4eHpnBGXv8W1+STN1bXZtl6tlydlrCSWbOEmWSaY01cPpsB6QSzeOWSgH5/3vZNPXDSr4j8s2wEfSzuP9nkY01jnDOrlpayMUCZaP2l5bz+8L7SfKKU/GYfsao8gKQ4i4EsB1HGpD8mBX5lE8lSxqQELDtpTvAXGMszrelGjF0sJr6/wlpBpqyneItF62jR4/ZsF6mx5xRu6DEB5A5p6cf8LJkwxOdpjL3fi5VCKcU5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UD8IbGKzjs9hQvIEsTHgnAFwuDCbbGnXsC0+OG/h+Ik=;
 b=NUQbjaV7suIm3vFnTnnSBtr/fnfIK4r/rbxb3tv3uIjWT8iMZG+hdNe3yUhAYNtlsb+g0ziAInmRakVtRGzkLmuCmpFmScUcOmneiqiENJNRNnOpozIn7HonSLBjhv+jw+eNYKNpzHiUykAgPxopse6q6blneaO+Ce0jrbRxChdppOnHzHQDdGTny5wZC6/3NnQAOGRsVg1TZIe1R+DdHv7Up09uJl7hlnFBEQiqsZblL/rqgwi2gmZ4bwAze1ALXHFBla+JoDAtKUb7wp4AiBjMZkTJDU9zVYwGiAP0eHE1zJ5nOHzhlozIVTFFaNq4Qi5bIkICBrGN0zIsQl5sHw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UD8IbGKzjs9hQvIEsTHgnAFwuDCbbGnXsC0+OG/h+Ik=;
 b=dJ4MqkMnPh8SYKNE0Mo1aQLKLqMALXT/fqb9V7LRIDCHcxxVXXVxH/Yu+DQFjWrrNoAePowvfbVjfCfHraU+mH+m4uOp8RVLMp6BxaRnHFKh1cmHqhKTxZ50S7JZk8wJIlZ6QecjpTDkhAWImLSE4XmqHZQReVLxgzk4Ne8LAS8=
Received: from DM5PR1101MB2074.namprd11.prod.outlook.com (2603:10b6:4:50::8)
 by DM5PR11MB1468.namprd11.prod.outlook.com (2603:10b6:4:4::20) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3933.32; Mon, 15 Mar 2021 23:31:39 +0000
Received: from DM5PR1101MB2074.namprd11.prod.outlook.com
 ([fe80::9c3f:8966:4849:9a08]) by DM5PR1101MB2074.namprd11.prod.outlook.com
 ([fe80::9c3f:8966:4849:9a08%12]) with mapi id 15.20.3933.032; Mon, 15 Mar
 2021 23:31:39 +0000
From: "Nunley, Nicholas D" <nicholas.d.nunley@intel.com>
To: Stefan Assmann <sassmann@redhat.com>, "Rybak, Eryk Roch"
 <eryk.roch.rybak@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH net v2] iavf: Fix asynchronous tasks
 during driver remove
Thread-Index: AQHXFyLOAFQgfHWGJEq3fGs4Mk9LDaqASk+AgAVjT8A=
Date: Mon, 15 Mar 2021 23:31:39 +0000
Message-ID: <DM5PR1101MB20742AB907C04D1B6A6C6A4FB36C9@DM5PR1101MB2074.namprd11.prod.outlook.com>
References: <20210312093337.68364-1-eryk.roch.rybak@intel.com>
 <20210312123615.7fcvoayobcslko74@p50.fritz.box>
In-Reply-To: <20210312123615.7fcvoayobcslko74@p50.fritz.box>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [73.67.140.177]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d612b4f9-e935-4587-c36a-08d8e80a7b80
x-ms-traffictypediagnostic: DM5PR11MB1468:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB1468AD90C349A7BF407939D4B36C9@DM5PR11MB1468.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: lXK/izA5lZicSSLhG0P+Qyt+zky4cyIzVup8YzK6wD6j8cKAoC9oh3WxapA0ri0yJhPAsl1TUkXgbONc7yVBUni9/zRsr0mDwf/ghds3/KJGjHKdKgagu4zqrN1sZaZIDuO8v9uQPJa/AkKZmxHLgBHt8AvLmwTrrcHMgU/BUVctjSdNTXH3vygLRX/h32IwNzQ5Y51UepOWVC06vnKGwppkoZD4DrSNysKVK2U908RfbRB3T+t50cDIhQO/c4esT8VTt+FWeY3SXvoED+4jpk3rd/1NjL0aFThoDrxv2UhLXWm3CBq6B02U1zNwnpJT4aLJxDjBzVRlqiGCRjAIWLHwRGe2mquedKBECsuw2rxW6osI/KxbUUfwwDb+EEMJpQ/LCkePBv9VW3ExiCQcyfHDONYQfDvxTp1KjXxk2pb7S/QsqVD0Pe7FIVATEbXCzP+BCSnEAl9r0xl71xWWfXujTLY4PCh9hniH7b4rlvlt5V7uTXtHuM+7NvDXyc9OsYEkpa1IEkxcr5TsDMcZWUXt/onUFBsc/DdbeVPUYElnYc2+UWVJ4ttBezS/WgCWuNwnHG4+ZdYatDt/jeUDabeVqoKH1g1H/mWUBl36lQNIZIp8lV84LD3FcFengLwJ6HUHHzaGT0JfeVs6Fe3Z+w==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR1101MB2074.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(136003)(396003)(376002)(39860400002)(346002)(83380400001)(55016002)(6506007)(71200400001)(26005)(86362001)(52536014)(5660300002)(110136005)(33656002)(107886003)(53546011)(9686003)(316002)(186003)(8936002)(4326008)(54906003)(8676002)(66946007)(64756008)(66446008)(966005)(66476007)(6636002)(478600001)(76116006)(7696005)(2906002)(66556008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?Bj61wZuAHKppiNjIjXNAqH52wkL4TbRuyx4IZx1ZDTSVB60/5R+NZUJueQFD?=
 =?us-ascii?Q?z2MdAruT+ixFkF6Q677WE3mcOGiUOnPkxxKGHApZHeWQeh1YwnbRRtUuMk5v?=
 =?us-ascii?Q?x2YnCzc968XReDH1jZ7eBo8GhWumVckAULdU2TAd+lUsb7vYZxZ8Zo91+DDo?=
 =?us-ascii?Q?jRVj6GbfaLrtRRsshP5ty4qp7booLNqt/90vB2LY+mv6IH7EvnZPb0NIg3ne?=
 =?us-ascii?Q?8/9N5/j3Lpv077oaroIJh8ryz+9YQ1wW6h69/q+96od2OUTO6InFQKDJLnQH?=
 =?us-ascii?Q?RXWvJMThkoCpFZQSlbjwrHyA0AMfaYaMHXYDSk6+c8keqWz/QoI9iw/PvXQY?=
 =?us-ascii?Q?GweEgfPjeiOJ8km/ZcdsajSnSNnB9zZP/hlVNA5s3SOWNMUNU5Z6t4sKPFBv?=
 =?us-ascii?Q?DPPui6Wq6GoH7jkFprPXjfzEArsY5kTQb2e4R9Z6EdYuer6rteL8j1Tmg/vd?=
 =?us-ascii?Q?rV1/wpv8DmNCZ6D3vZhN1jreB5SxxEnVkddObRUcJgva3gxn6dIvLOzol3ZE?=
 =?us-ascii?Q?B6cTxdnJEyTivXrJPFJignlUqT6zb/Z/fYO/LLNDy088oHE2KOYwclYrwGqr?=
 =?us-ascii?Q?sMTbUhwgiZc7NfFdhloA3iaNLwVxbK20JeyvsDZcjrxrqBRnXtMkt2oi9mey?=
 =?us-ascii?Q?DeQ0lFEgekBmGk8UQDRss56yDpOlXkrjOxdH37eDFBfA8aRDscMMuoFGYCiw?=
 =?us-ascii?Q?4JcEIlKR08td4R7UsfgNWExuDcfq8Q1vbCpssG5NG/Hpmz3O293auRQOYqbm?=
 =?us-ascii?Q?ptaSP9iKRoUSeQ1ewtXSZ8pwkccV2zcmlOQvZXnrLolREusYxnL5rZ6n6uiH?=
 =?us-ascii?Q?sIDCh8smcyudUEDS4IsulhQpR8GQxlkR5C+WMveir/rfmF6/ePa+rXOGICNz?=
 =?us-ascii?Q?9AmQGoqn3K1OOxzYF85Ub7v6nHhNhoH1SVMWbmHa7dJwyyA1V+6UxKvP689T?=
 =?us-ascii?Q?8sjKUe8P90C9tHzvy8tC5lqjDTkQCkh9KBMISjmvYXhkK8MPyhUL+HrI0YEe?=
 =?us-ascii?Q?YR4BE5ekeUIXT3Jkf+PXyIul47UpPF/gGyDJVxjREaSox45KcdbJ88KkZaqw?=
 =?us-ascii?Q?H9qN3F4W1y7sXtoTIStxmSUUI/nj9QMscKp2zuFY7KZObiPjhoqKLoor6fPm?=
 =?us-ascii?Q?cjQD+ikQTu1ECN1pWewz3Ak6xEEsyuakxgkOoFotP4c4pcVsDUW0ejyM/t//?=
 =?us-ascii?Q?jzHkLgOw58keYeeXH9uHrkXHN5nuLwJfSgqBUWiEznFAQO9p6W2uGxYym2mF?=
 =?us-ascii?Q?5zcv+AcPw1l9uGNxrQx6zdgMY7lDlW64JyDcPA3aFVswgazgijffNtP6Fm78?=
 =?us-ascii?Q?x5Wwi8GWCDw5rszD/khwzPTG?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM5PR1101MB2074.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d612b4f9-e935-4587-c36a-08d8e80a7b80
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Mar 2021 23:31:39.1548 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1TyPdLNIrOAH+rmNKgOLq8xB3aS9chF18lUz97+z/mpb0iZV/kfSDJACXh11rvwpzT/wvihq6Zz/DEEVxpZjtaqivaqiVW6+4kLile2P00c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1468
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v2] iavf: Fix asynchronous tasks
 during driver remove
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
Cc: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Thanks for pointing this out. This was an accidental oversight, although I think part of my reason for not paying close enough attention is that the client code is never actually used. Since there aren't any plans to use the client code in the future, we discussed this here and the plan is to remove that code from the iavf driver. We'll be submitting a patch for that soon, but in the meantime I think we'll be all right if this patch goes in as-is, since the bug is purely hypothetical and has no real-world impact.

Nick
> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Stefan Assmann
> Sent: Friday, March 12, 2021 4:36 AM
> To: Rybak, Eryk Roch <eryk.roch.rybak@intel.com>
> Cc: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>; intel-wired-
> lan@lists.osuosl.org
> Subject: Re: [Intel-wired-lan] [PATCH net v2] iavf: Fix asynchronous tasks
> during driver remove
> 
> On 2021-03-12 10:33, Eryk Rybak wrote:
> > Although rare, is possible for unexpected driver watchdog or Admin
> > Queue tasks to run during the execution of iavf_remove function.
> > Then, is not possible to obtain the standard __IAVF_IN_CRITICAL_TASK
> > lock and difficult to ensure that the driver state stays consistent
> > during the full removal process.
> 
> If you shutdown the watchdog task before closing the device, how do you
> ensure the client task is properly shutdown?
> 
> Calling iavf_close() sets the IAVF_FLAG_CLIENT_NEEDS_CLOSE flag, which
> would call iavf_notify_client_close(&adapter->vsi, false); in the client task,
> but the client task does no longer get scheduled by the watchdog task
> because it has been shutdown already.
> 
>   Stefan
> 
> > Fully stops all asynchronous tasks in the beginning of iavf_remove,
> > and uses a single-threaded flow to shut down the driver.
> >
> > Fixes: fdd4044ffdc8("iavf: Remove timer for work triggering, use
> > delaying work instead")
> > Signed-off-by: Nick Nunley <nicholas.d.nunley@intel.com>
> > Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> > Signed-off-by: Eryk Rybak <eryk.roch.rybak@intel.com>
> > ---
> >  drivers/net/ethernet/intel/iavf/iavf_main.c | 31
> > +++++++++++++++++----
> >  1 file changed, 25 insertions(+), 6 deletions(-)
> >
> > diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c
> > b/drivers/net/ethernet/intel/iavf/iavf_main.c
> > index dc5b3c06d1e0..e752ecb7ad89 100644
> > --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> > +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> > @@ -1887,6 +1887,12 @@ static void iavf_watchdog_task(struct
> work_struct *work)
> >  	struct iavf_hw *hw = &adapter->hw;
> >  	u32 reg_val;
> >
> > +	/* If the driver is in the process of being removed then don't run or
> > +	 * reschedule the watchdog task.
> > +	 */
> > +	if (test_bit(__IAVF_IN_REMOVE_TASK, &adapter->crit_section))
> > +		return;
> > +
> >  	if (test_and_set_bit(__IAVF_IN_CRITICAL_TASK, &adapter-
> >crit_section))
> >  		goto restart_watchdog;
> >
> > @@ -2267,6 +2273,12 @@ static void iavf_adminq_task(struct work_struct
> *work)
> >  	u32 val, oldval;
> >  	u16 pending;
> >
> > +	/* If the driver is in the process of being removed then return
> > +	 * immediately and don't re-enable the Admin Queue interrupt.
> > +	 */
> > +	if (test_bit(__IAVF_IN_REMOVE_TASK, &adapter->crit_section))
> > +		return;
> > +
> >  	if (adapter->flags & IAVF_FLAG_PF_COMMS_FAILED)
> >  		goto out;
> >
> > @@ -3245,6 +3257,13 @@ static int iavf_close(struct net_device
> > *netdev)
> >
> >  	clear_bit(__IAVF_IN_CRITICAL_TASK, &adapter->crit_section);
> >
> > +	/* If the interface is closing as part of driver removal it doesn't
> > +	 * wait. The VF resources will be reinitialized when the hardware is
> > +	 * reset.
> > +	 */
> > +	if (test_bit(__IAVF_IN_REMOVE_TASK, &adapter->crit_section))
> > +		return 0;
> > +
> >  	/* We explicitly don't free resources here because the hardware is
> >  	 * still active and can DMA into memory. Resources are cleared in
> >  	 * iavf_virtchnl_completion() after we get confirmation from the PF
> > @@ -3850,11 +3869,16 @@ static void iavf_remove(struct pci_dev *pdev)
> >  	struct iavf_cloud_filter *cf, *cftmp;
> >  	struct iavf_hw *hw = &adapter->hw;
> >  	int err;
> > -	/* Indicate we are in remove and not to run reset_task */
> > +	/* Indicate that program driver is remove task and not
> > +	 * to run/schedule any driver tasks
> > +	 */
> >  	set_bit(__IAVF_IN_REMOVE_TASK, &adapter->crit_section);
> >  	cancel_delayed_work_sync(&adapter->init_task);
> >  	cancel_work_sync(&adapter->reset_task);
> >  	cancel_delayed_work_sync(&adapter->client_task);
> > +	cancel_work_sync(&adapter->adminq_task);
> > +	cancel_delayed_work_sync(&adapter->watchdog_task);
> > +	iavf_misc_irq_disable(adapter);
> >  	if (adapter->netdev_registered) {
> >  		unregister_netdev(netdev);
> >  		adapter->netdev_registered = false; @@ -3879,15 +3903,10
> @@ static
> > void iavf_remove(struct pci_dev *pdev)
> >  	}
> >  	iavf_free_all_tx_resources(adapter);
> >  	iavf_free_all_rx_resources(adapter);
> > -	iavf_misc_irq_disable(adapter);
> >  	iavf_free_misc_irq(adapter);
> >  	iavf_reset_interrupt_capability(adapter);
> >  	iavf_free_q_vectors(adapter);
> >
> > -	cancel_delayed_work_sync(&adapter->watchdog_task);
> > -
> > -	cancel_work_sync(&adapter->adminq_task);
> > -
> >  	iavf_free_rss(adapter);
> >
> >  	if (hw->aq.asq.count)
> >
> > base-commit: c1acda9807e2bbe1d2026b44f37d959d6d8266c8
> > --
> > 2.20.1
> >
> > _______________________________________________
> > Intel-wired-lan mailing list
> > Intel-wired-lan@osuosl.org
> > https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
> >
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
