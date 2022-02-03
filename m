Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A24404A7E1E
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Feb 2022 03:53:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CA102400A9;
	Thu,  3 Feb 2022 02:53:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VN_6aDUb6lFE; Thu,  3 Feb 2022 02:53:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B39F1400E9;
	Thu,  3 Feb 2022 02:53:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 094EF1BF995
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Feb 2022 02:53:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DF7BC400E9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Feb 2022 02:53:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PxR0IwKo4HWl for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Feb 2022 02:53:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4F0B9400A9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Feb 2022 02:53:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643856784; x=1675392784;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=AX7g9EkZhLNPvMZDWF290GLtKz3jhitqA0cOMhVKleI=;
 b=ELAOINQl6KmOhZiZ76iviIQBk2yuY/yclpHpBEyVWJZnzn6tN831crqG
 cXsIWsKQNMlrFeOs2h4vP3iKMGzBYGR69oJxhXqvXCQqqp/p4TFrhIK5a
 BBoRl3r2M31BZxhVOQS1+9SA3blN95ImyMmXHlpxBNApM7CRMKYgJv0G4
 AWTu12+tvR0eeOUS2vyI33jN/1ulyRdfMgT1qHPf1GiQoYikB/IVHax4J
 az53X7VQkxU5olIJMAkOtmwYSq5JS2g3TICdRzghTBjtWoQF0h/uK+uRL
 k4pxGjE2/O2Yt4NA4OVP8bJqF15iPWJohwz2cjfDe/myaTrcd9hqy+nqm w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10246"; a="245661798"
X-IronPort-AV: E=Sophos;i="5.88,338,1635231600"; d="scan'208";a="245661798"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2022 18:53:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,338,1635231600"; d="scan'208";a="627292566"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by fmsmga002.fm.intel.com with ESMTP; 02 Feb 2022 18:53:03 -0800
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 2 Feb 2022 18:53:03 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Wed, 2 Feb 2022 18:53:03 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.44) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Wed, 2 Feb 2022 18:53:02 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ERuozXkRM1v+1ITdhTJmG2M4+/ANjN/8eNM4j0MiWjorVDsK2TaQ0P4PYUqoPLl3nSNqGfBysO7XEjKkbqjxdEnoms5uLY5k60Lv832aF0FuB2E3QRZsHeNwCvh9aCFXlkxgBXK22bnuT8z/FJEDR8TgOuuBet2tOUyMFlpBlNiqzWkIbZEfaEw1aYvkdxEkKbVjP1zMxIEi3tXtmcxsvK9vDt6M6zVHUql22mtthcnEdqUAUEz5g6gL+0ubsM2KLXk14vHHiH2OD9IAKjysXIzRfBURL3uKJxSmtEF13bvOqJLNPvK0IptI5k7XELCPsEYSgZCKWk2n+8sagPufeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HPCBwCtDTNe/MslnhuOb9Ya8CvcR1caXD2YgYmQV224=;
 b=WnULCsBbp261KDfNiDs62VimqILWAMLBBElntvIFTWl5aa/5g5KyvT/BuaFUXSDn2XYvvQuhzsVCequsdBIxeaaZcXcNmTvGyFD1JBj/NN57HHLYpm7qg5BLiZ0X2KNgxdQw2lPliTg7MH1vl3Yy7dc/SMs+7DARIAtm7riiW3TYDuXaMSJz9/nZirI4OGNiAMmcED8kPk0/hJQ1DSU9+8CeqaPMz7NR6z0Q2WTVJeOcQsWb3IgASpOocFXkJqMI6KcgjRYe1PvEbi/i8jkUWMHwGuG1Hq2jA2BWPcNNn6e+Yi2TpQummZ0f/simRyA9ofI90M/OKGq38OBQlogwkA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from CO1PR11MB5186.namprd11.prod.outlook.com (2603:10b6:303:95::14)
 by MW3PR11MB4746.namprd11.prod.outlook.com (2603:10b6:303:5f::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4930.19; Thu, 3 Feb
 2022 02:53:00 +0000
Received: from CO1PR11MB5186.namprd11.prod.outlook.com
 ([fe80::3d01:b3b2:d2f0:5be1]) by CO1PR11MB5186.namprd11.prod.outlook.com
 ([fe80::3d01:b3b2:d2f0:5be1%5]) with mapi id 15.20.4951.012; Thu, 3 Feb 2022
 02:53:00 +0000
From: "Brady, Alan" <alan.brady@intel.com>
To: "Lobakin, Alexandr" <alexandr.lobakin@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH net-next 17/19] iecm: implement cloud
 filters
Thread-Index: AQHYE97VihA70AAhF0ScopCfKgI+2Kx41WqAgAhSwQA=
Date: Thu, 3 Feb 2022 02:53:00 +0000
Message-ID: <CO1PR11MB51862C40E682771A35C48C088F289@CO1PR11MB5186.namprd11.prod.outlook.com>
References: <20220128001009.721392-1-alan.brady@intel.com>
 <20220128001009.721392-18-alan.brady@intel.com>
 <20220128193809.30521-1-alexandr.lobakin@intel.com>
In-Reply-To: <20220128193809.30521-1-alexandr.lobakin@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.200.16
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f23d6169-ff64-4667-896a-08d9e6c04a7e
x-ms-traffictypediagnostic: MW3PR11MB4746:EE_
x-microsoft-antispam-prvs: <MW3PR11MB47462F01BE63B0773F9AD8AE8F289@MW3PR11MB4746.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: I86vw5HCt9pYFLjsn1+vvxPM4f1CipclljkDWJNIUfDNqLFmhBWEbrLXpN3XaJQlL4XL6YGQpVokJQtpA5QmWr4aEJYpZEAKk1GbU+xpwynRTJoGQYAjCZFWNeEq4VGsMuaFYGReBEwQNPNO576EA2YL7aZ+xSzTYEyTqMwy1f47m6Nfp/wwoKQwzXRdXIknT2h9l0NqShFHl1AVt7zfaZx6hQFnBKBvstnkCMd8aYSbldEFZFqUIQROf8sK6fJJdgP8LTWGQ4ejmmp/KfwcVnxW/XpJxVQjH6DKqroY+JGvhJxwjJEXVIvAJxJ1dYaKvpHkVCBIEjE2qjwItPqi7fR26VbvQ6AYXrfl9oOiXkwX2YEOPADKlvwJpfFfu/v1nTEzhqNJx3TDybjXysB6LajXbyHve01UxtIBQOGYCAQe0y5ExQtc01MsYUx8H2ZEVhyJIeWwmMxI72Dr812LzjfUBZ+cHsoQV1bMMGFNnTrcTcn30AE9GHLn8jqjx152eDDP+fqk3vvTdPgZuef84UdUULuoTinpvnWkAbo77FucDjnzPQ6EHfpdr+T/2D/aCeQrCfKZHW7BIbhODNO2zLtEmCLjFqyL0PzqeiwEStzu8Rn1sWTAgWNfW+jL95iT4oorpxbi4/WoZsEJCO/jTJn05/tQ7PzZU5G/gEEuSTyeMzBa0UuhdF7Vz9zQmVUjEweAAZHhMLZL4ARJ+1eYLg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5186.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(26005)(186003)(6862004)(8936002)(55016003)(86362001)(30864003)(54906003)(5660300002)(316002)(6636002)(38100700002)(107886003)(2906002)(52536014)(83380400001)(76116006)(66946007)(53546011)(6506007)(66476007)(33656002)(122000001)(82960400001)(38070700005)(64756008)(66446008)(71200400001)(66556008)(4326008)(8676002)(508600001)(7696005)(9686003)(579004)(559001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?gL8VdqIfUQnNhunuc0J9j01sh8uUge2URxDfrqY6EdCQB+yiiHi98PR5lyxm?=
 =?us-ascii?Q?ueBTRIKSHfVqXYHdK0l/3gpxacrkX3MC+WHJAjp/lfRfa/N+hesZE693fl8t?=
 =?us-ascii?Q?2gbGAhThFiYpf7lLjw3seBK4f4lJ2qHmPrZ0JKzpil94Sbo/DCttm3Y+3Efd?=
 =?us-ascii?Q?7Le9Keg/mTt0AdpjMw7j7LiklhZPAPesakAViTXByBVQjdcMzYBWsLs5Lgqs?=
 =?us-ascii?Q?qb6EdcmZnnTECi7KbZRNQMqb7ekrb6wC5uB9+/poeOlEsg2xqwFPgvMJlCD1?=
 =?us-ascii?Q?yOBw6f5bKWbkNRuExfgJZ6bpz1XhdnfSwNUXz1O8I2dj9tvf8A/BuDB6CREp?=
 =?us-ascii?Q?Is+hSazBqBsb62j6FwgVOZ7ovExJGNtGoLKWuK0zjk9BQmByO+kqhGcJaWw+?=
 =?us-ascii?Q?GTrN/iMVzjHAYd8gBeJFr1lw25smS1UCJapCV3l3pdbSuIh/FitveQoqpgMk?=
 =?us-ascii?Q?5IOTWv2To5Icebo9X7XiiQ9MLJUJTz9sOXC/gLMdfaIfnr9nV/MQ9GLzHdHN?=
 =?us-ascii?Q?eujHqAnrheP7SIGXolCiy3IZ/J3MsCk0XywqJCArDppFgXWykjiPhLo+6XoU?=
 =?us-ascii?Q?vLmrrpGXB/ntlVa7fqnXF4Wg/P6nNUAL/DDTAYiceggjNZ2g6VPMJWwo9FcW?=
 =?us-ascii?Q?aIX6WvwZ51931JPT1ae2dJJho3phdusu/4G0Q9joHYRktlr5Nm17+Ook9p3c?=
 =?us-ascii?Q?HekAOn68hSvEt3xM15zL6Go7wJwLZRWkccGTUxzIBbxmpc5ls0KMAvTxzmJK?=
 =?us-ascii?Q?pBeMEV3Sl5etg2EEJzqYWaF4tae9gFq7ThNKz/L46eanlmC/djESAsRk7+eA?=
 =?us-ascii?Q?lBzyoew7dmXZO3za6CiNvutjX22P530pf/CpXZT47uniGRUAsE89UGR2OdJn?=
 =?us-ascii?Q?DBHFzD1TzZ14YaxX3CgZqaieYxIeITYl+k1ZUiSYqVBMYsr0rTSAKpNVNIk8?=
 =?us-ascii?Q?kDToVBKaMWpKB+ixdJSvu/5xZro4JRK+ehnkINdITE8cK4+gVypjv/PYP0tc?=
 =?us-ascii?Q?3CWog/mDiZqrafnFdP+PgdkqbqcXUOyFDL0eCcHzW/snKkyAuenUEO/Wbxow?=
 =?us-ascii?Q?XsL2Cu5c3Xtgr+FNaNEr9YI9YkSpRVslzF10L2WHwBzk2X5LhBg4sfU98mb5?=
 =?us-ascii?Q?NKqWBkBiOnMp2QN9pfFCsAlSMVqGtsY+qgBIho5ME6e746hHzVNn9CUjA9ws?=
 =?us-ascii?Q?/6xl2N690SBRzGM1Al1aFWBs4zmeXmnRkljp7KPSvsbL7D40iMwk+gU/LKGL?=
 =?us-ascii?Q?6Ki/3MtZldnpB4iLNBxiDCKuy1BSyNXqMJjXL+k/Tfr0UoXa5yFknXn5BwYo?=
 =?us-ascii?Q?ZvUxsvoRzZK9DLtZxDJ2C0KGWX8h6u/Xq47Hz6hIL6ivwSZPtiqkBsWl62Gv?=
 =?us-ascii?Q?bPaR5hUWrsxcbYaiXj6ZekiLWTgVSWGRCYZhotBn7kbnGAa3vp7jidx3uqYN?=
 =?us-ascii?Q?NtnjApY9hjwrIiQfyT9vJbWAEqGn/jS2JLaF7VV4VZD90Q2wbMp8rc6oNkQL?=
 =?us-ascii?Q?OwC+fii0Hed7hBTFK8XwOnDvhGDbT12RiHXozydtZVvXd3wbAA8YNX2Z7wlk?=
 =?us-ascii?Q?Lb70ACOuG2NBTMXcY2ht9PxBCwSDUXJIzksUU3HSIk+n3ZbJkOa/DtE2xtt4?=
 =?us-ascii?Q?33Rdq5aZ1mVU3MoAhoLJ5k0=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5186.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f23d6169-ff64-4667-896a-08d9e6c04a7e
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Feb 2022 02:53:00.6926 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cmAOqvBx1r+JIVa+4JKibNEmn/gf3ohPsw2TJJA2EiEKyF3F6zsxmA2owr/oikq96d/sGqsyNhZizF9euix1+g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4746
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next 17/19] iecm: implement cloud
 filters
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
Cc: "Burra, Phani R" <phani.r.burra@intel.com>, "Chittim,
 Madhu" <madhu.chittim@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, "Linga,
 Pavan Kumar" <pavan.kumar.linga@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Lobakin, Alexandr <alexandr.lobakin@intel.com>
> Sent: Friday, January 28, 2022 11:38 AM
> To: Brady, Alan <alan.brady@intel.com>
> Cc: Lobakin, Alexandr <alexandr.lobakin@intel.com>; intel-wired-
> lan@lists.osuosl.org; Burra, Phani R <phani.r.burra@intel.com>; Chittim,
> Madhu <madhu.chittim@intel.com>; Linga, Pavan Kumar
> <pavan.kumar.linga@intel.com>
> Subject: Re: [Intel-wired-lan] [PATCH net-next 17/19] iecm: implement
> cloud filters
> 
> From: Alan Brady <alan.brady@intel.com>
> Date: Thu, 27 Jan 2022 16:10:07 -0800
> 
> > This gives iecm the ability to deal with cloud filters and other
> > traffic classes.
> >
> > Signed-off-by: Phani Burra <phani.r.burra@intel.com>
> > Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
> > Signed-off-by: Madhu Chittim <madhu.chittim@intel.com>
> > Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> > Signed-off-by: Alan Brady <alan.brady@intel.com>
> > ---
> >  drivers/net/ethernet/intel/iecm/iecm_lib.c    | 900
> +++++++++++++++++-
> >  .../net/ethernet/intel/iecm/iecm_virtchnl.c   |  68 ++
> >  drivers/net/ethernet/intel/include/iecm.h     |  25 +
> >  3 files changed, 992 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/net/ethernet/intel/iecm/iecm_lib.c
> > b/drivers/net/ethernet/intel/iecm/iecm_lib.c
> > index 35c0cbc42ebe..d11413cb438c 100644
> > --- a/drivers/net/ethernet/intel/iecm/iecm_lib.c
> > +++ b/drivers/net/ethernet/intel/iecm/iecm_lib.c
> > @@ -43,9 +43,16 @@ static int iecm_get_vport_index(struct
> iecm_adapter *adapter,
> >   */
> >  bool iecm_is_feature_ena(struct iecm_vport *vport, netdev_features_t
> > feature)  {
> > +	struct iecm_channel_config *ch_config;
> >  	bool ena;
> >
> >  	switch (feature) {
> > +	case NETIF_F_HW_TC:
> > +		ch_config = &vport->adapter->config_data.ch_config;
> > +		ena = (vport->netdev->features & feature) &&
> > +			(ch_config->num_tc > IECM_START_CHNL_TC) &&
> > +			(ch_config->tc_running);
> > +		break;
> >  	default:
> >  		ena = vport->netdev->features & feature;
> >  		break;
> > @@ -53,6 +60,23 @@ bool iecm_is_feature_ena(struct iecm_vport
> *vport, netdev_features_t feature)
> >  	return ena;
> >  }
> >
> > +/**
> > + * iecm_is_adq_v2_ena - Determine whether ADQ V2 is enabled
> > + * @vport: virtual port struct
> > + *
> > + * This function returns true based on negotiated capability ADQ_V2
> > + * if set and ADQ enabled
> > + */
> > +static bool iecm_is_adq_v2_ena(struct iecm_vport *vport) {
> > +	/* iecm_is_feature_ena tells if the netdev flag is set and adq is
> > +	 * enabled
> > +	 */
> > +	return (iecm_is_feature_ena(vport, NETIF_F_HW_TC) &&
> > +		iecm_is_cap_ena(vport->adapter, IECM_OTHER_CAPS,
> > +				VIRTCHNL2_CAP_ADQ));
> 
> The outermost braces are redundant.
> 

Will fix.

> > +}
> > +
> >  /**
> >   * iecm_is_vlan_cap_ena - Check if VLAN capability is enabled
> >   * @adapter: pointer to adapter
> > @@ -946,6 +970,28 @@ static int iecm_get_free_slot(void *array, int
> size, int curr)
> >  	return next;
> >  }
> >
> > +/**
> > + * iecm_remove_cloud_filters - Remove all cloud filters
> > + * @vport: vport structure
> > + */
> > +static void iecm_remove_cloud_filters(struct iecm_vport *vport) {
> > +	struct iecm_adapter *adapter = vport->adapter;
> > +	struct iecm_cloud_filter_config *cf_config;
> > +
> > +	cf_config = &adapter->config_data.cf_config;
> > +	if (!list_empty(&cf_config->cloud_filter_list)) {
> > +		struct iecm_cloud_filter *cf;
> > +
> > +		spin_lock_bh(&adapter->cloud_filter_list_lock);
> > +		list_for_each_entry(cf, &cf_config->cloud_filter_list, list) {
> > +			cf->remove = true;
> > +		}
> 
> One-liner, braces are redundant.
> 
> > +		spin_unlock_bh(&adapter->cloud_filter_list_lock);
> > +		iecm_send_add_del_cloud_filter_msg(vport, false);
> > +	}
> 
> 	if (list_empty())
> 		return;
> 
> -1 level.
> 
> > +}
> > +
> >  /**
> >   * iecm_remove_vlan_filters - Remove all vlan filters
> >   * @vport: vport structure
> > @@ -1044,8 +1090,14 @@ static void iecm_vport_stop(struct
> iecm_vport *vport)
> >  	if (test_and_clear_bit(__IECM_DEL_QUEUES,
> >  			       vport->adapter->flags))
> >  		iecm_send_delete_queues_msg(vport);
> > -	if (!test_bit(__IECM_REL_RES_IN_PROG, adapter->flags))
> > +	/* In function reset/rmmod path we call unregister_netdev which
> > +	 * internally calls delete cloud filters. We remove cloud filters only
> > +	 * when the interface goes down
> > +	 */
> > +	if (!test_bit(__IECM_REL_RES_IN_PROG, adapter->flags)) {
> > +		iecm_remove_cloud_filters(vport);
> >  		iecm_remove_vlan_filters(vport);
> > +	}
> >
> >  	iecm_remove_fdir_filters(vport);
> >
> > @@ -1258,6 +1310,28 @@ static void iecm_restore_vlans(struct
> iecm_vport *vport)
> >  		iecm_set_all_vlans(vport);
> >  }
> >
> > +/**
> > + * iecm_restore_cloud_filters - Restore cloud filters
> > + * @vport: vport structure
> > + */
> > +static void iecm_restore_cloud_filters(struct iecm_vport *vport) {
> > +	struct iecm_adapter *adapter = vport->adapter;
> > +	struct iecm_cloud_filter_config *cf_config;
> > +
> > +	cf_config = &adapter->config_data.cf_config;
> > +	if (!list_empty(&cf_config->cloud_filter_list)) {
> > +		struct iecm_cloud_filter *cf;
> > +
> > +		spin_lock_bh(&adapter->cloud_filter_list_lock);
> > +		list_for_each_entry(cf, &cf_config->cloud_filter_list, list) {
> > +			cf->add = true;
> > +		}
> 
> Same here for braces.
> 

Will fix.

> > +		spin_unlock_bh(&adapter->cloud_filter_list_lock);
> > +		iecm_send_add_del_cloud_filter_msg(vport, true);
> > +	}
> 
> Same here for reducing indent level.
> 
> > +}
> > +
> >  /**
> >   * iecm_restore_fdir_filters - Restore all Flow Director filters
> >   * @vport: vport structure
> > @@ -1302,6 +1376,10 @@ static void iecm_restore_features(struct
> iecm_vport *vport)
> >  			dev_info(&adapter->pdev->dev, "Failed to restore
> promiscuous settings\n");
> >  	}
> >
> > +	/* Restore cloud filters if ADQ is enabled */
> > +	if (iecm_is_feature_ena(vport, NETIF_F_HW_TC))
> > +		iecm_restore_cloud_filters(vport);
> > +
> >  	if (iecm_is_cap_ena(adapter, IECM_OTHER_CAPS,
> VIRTCHNL2_CAP_FDIR))
> >  		iecm_restore_fdir_filters(vport);
> >  }
> > @@ -2088,6 +2166,8 @@ int iecm_probe(struct pci_dev *pdev,
> >  	spin_lock_init(&adapter->vlan_list_lock);
> >  	spin_lock_init(&adapter->adv_rss_list_lock);
> >  	spin_lock_init(&adapter->fdir_fltr_list_lock);
> > +	INIT_LIST_HEAD(&adapter->config_data.cf_config.cloud_filter_list);
> > +	INIT_LIST_HEAD(&adapter->config_data.cf_config.block_cb_list);
> >  	INIT_LIST_HEAD(&adapter->config_data.mac_filter_list);
> >  	INIT_LIST_HEAD(&adapter->config_data.vlan_filter_list);
> >  	INIT_LIST_HEAD(&adapter->config_data.adv_rss_list);
> > @@ -2389,6 +2469,810 @@ static int iecm_offload_txtime(struct
> iecm_vport *vport,
> >  	return -EOPNOTSUPP;
> >  }
> >
> > +/**
> > + * iecm_is_vlan_tc_filter_allowed - allowed to add tc-filter using
> > +VLAN
> > + * @vport: vport structure
> > + * @vlan: VLAN to verify
> > + *
> > + * Using specified "vlan" ID, there must be active VLAN filter in
> > +VF's
> > + * MAC-VLAN filter list.
> > + */
> > +static bool
> > +iecm_is_vlan_tc_filter_allowed(struct iecm_vport *vport,
> > +			       struct iecm_vlan *vlan)
> > +{
> > +	struct iecm_vlan_filter *f;
> > +	bool allowed;
> > +
> > +	spin_lock_bh(&vport->adapter->vlan_list_lock);
> > +	f = iecm_find_vlan(vport, vlan);
> > +	allowed = (f && !f->add && !f->remove);
> 
> Redundant braces here.
> 

Will fix.

> > +	spin_unlock_bh(&vport->adapter->vlan_list_lock);
> > +	return allowed;
> > +}
> > +
> > +/**
> > + * iecm_is_mac_tc_filter_allowed - allowed to add tc-filter using MAC
> > +addr
> > + * @vport: vport structure
> > + * @macaddr: MAC address
> > + *
> > + * Using specified MAC address, there must be active MAC filter in
> > + * MAC filter list.
> > + */
> > +static bool
> > +iecm_is_mac_tc_filter_allowed(struct iecm_vport *vport, const u8
> > +*macaddr) {
> > +	struct iecm_adapter *adapter = vport->adapter;
> > +	struct iecm_mac_filter *f;
> > +	bool allowed;
> > +
> > +	spin_lock_bh(&adapter->mac_filter_list_lock);
> > +	f = iecm_find_mac_filter(vport, macaddr);
> > +	allowed = (f && !f->add && !f->remove);
> 
> Same here.
> 
> > +	spin_unlock_bh(&adapter->mac_filter_list_lock);
> > +	return allowed;
> > +}
> > +
> > +/**
> > + * iecm_parse_keyid - Parse keyid
> > + * @rule: Flow rule structure
> > + * @field_flags: Cloud filter flags
> > + */
> > +static void  iecm_parse_keyid(struct flow_rule *rule, u8
> > +*field_flags) {
> > +	struct flow_match_enc_keyid match;
> > +
> > +	flow_rule_match_enc_keyid(rule, &match);
> > +
> > +	if (match.mask->keyid != 0)
> > +		*field_flags |= IECM_CLOUD_FIELD_TEN_ID; }
> > +
> > +/**
> > + * iecm_parse_flow_type - Parse flow type based on L2 and L3
> > +protocols
> > + * @vport: vport structure
> > + * @rule: rule from user
> > + * @cf: Structure for the virtchnl filter
> > + * @filter: Structure for the cloud filter
> > + *
> > + * Return 0 on success, negative on failure  */ static int
> > +iecm_parse_flow_type(struct iecm_vport *vport,
> > +		     struct flow_rule *rule, struct virtchnl_filter *cf,
> > +		     struct iecm_cloud_filter *filter) {
> > +	struct iecm_adapter *adapter = vport->adapter;
> > +	enum virtchnl_flow_type flow_type;
> > +	struct flow_match_basic match;
> > +	u16 n_proto_mask = 0;
> > +	u16 n_proto_key = 0;
> > +	u16 n_proto = 0;
> > +	u8 ip_proto = 0;
> > +
> > +	flow_rule_match_basic(rule, &match);
> > +
> > +	n_proto_key = ntohs(match.key->n_proto);
> > +	n_proto_mask = ntohs(match.mask->n_proto);
> > +
> > +	if (n_proto_key == ETH_P_ALL) {
> > +		n_proto_key = 0;
> > +		n_proto_mask = 0;
> > +	}
> 
> 	n_proto_key = ntohs();
> 	if (n_proto_key != ETH_P_ALL)
> 		n_proto_mask = ntohs();
> 

Will fix

> > +	n_proto = n_proto_key & n_proto_mask;
> > +	if (n_proto != ETH_P_IP && n_proto != ETH_P_IPV6)
> > +		return -EINVAL;
> > +
> > +	if (iecm_is_cap_ena(adapter, IECM_OTHER_CAPS,
> VIRTCHNL2_CAP_ADQ)) {
> > +		if (match.key->ip_proto != IPPROTO_TCP &&
> > +		    match.key->ip_proto != IPPROTO_UDP) {
> > +			dev_err(&adapter->pdev->dev,
> > +				"Only TCP or UDP transport is
> supported\n");
> > +			return -EINVAL;
> > +		}
> > +	} else if (match.key->ip_proto != IPPROTO_TCP) {
> > +		dev_err(&adapter->pdev->dev,
> > +			"Only TCP transport is supported\n");
> > +		return -EINVAL;
> > +	}
> > +	ip_proto = match.key->ip_proto;
> > +
> > +	/* determine VIRTCHNL flow_type based on L3 and L4 protocol */
> > +	if (n_proto == ETH_P_IP)
> > +		flow_type = (ip_proto == IPPROTO_TCP) ?
> > +			     VIRTCHNL_TCP_V4_FLOW :
> > +			     VIRTCHNL_UDP_V4_FLOW;
> > +	else
> > +		flow_type = (ip_proto == IPPROTO_TCP) ?
> > +			     VIRTCHNL_TCP_V6_FLOW :
> > +			     VIRTCHNL_UDP_V6_FLOW;
> > +	cf->flow_type = flow_type;
> > +	filter->f.flow_type = flow_type;
> > +
> > +	return 0;
> > +}
> > +
> > +/**
> > + * iecm_parse_ether_header - Parse ethernet header fields
> > + * @vport: vport structure
> > + * @field_flags: Cloud filter flags
> > + * @d_spec: Virtchnl structure for L4 specs
> > + * @m_spec: Virtchnl structure for L4 specs
> > + * @rule: Flow rule structure
> > + *
> > + * Return 0 on success, negative on failure  */ static int
> > +iecm_parse_ether_header(struct iecm_vport *vport, u8 *field_flags,
> > +			struct virtchnl_l4_spec *d_spec,
> > +			struct virtchnl_l4_spec *m_spec,
> > +			struct flow_rule *rule)
> > +{
> > +	struct iecm_adapter *adapter = vport->adapter;
> > +	struct flow_match_eth_addrs match;
> > +	bool adv_adq_ena;
> > +
> > +	adv_adq_ena = iecm_is_cap_ena(adapter, IECM_OTHER_CAPS,
> > +				      VIRTCHNL2_CAP_ADQ);
> > +
> > +	flow_rule_match_eth_addrs(rule, &match);
> > +
> > +	/* use is_broadcast and is_zero to check for all 0xf or 0 */
> > +	if (!is_zero_ether_addr(match.mask->dst)) {
> > +		if (adv_adq_ena || is_broadcast_ether_addr(match.mask-
> >dst)) {
> > +			*field_flags |= IECM_CLOUD_FIELD_OMAC;
> > +		} else {
> > +			dev_err(&adapter->pdev->dev, "Bad ether dest
> mask %pM\n",
> > +				match.mask->dst);
> > +			return -EINVAL;
> > +		}
> > +	}
> > +
> > +	if (!is_zero_ether_addr(match.mask->src)) {
> > +		if (adv_adq_ena || is_broadcast_ether_addr(match.mask-
> >src)) {
> > +			*field_flags |= IECM_CLOUD_FIELD_IMAC;
> > +		} else {
> > +			dev_err(&adapter->pdev->dev, "Bad ether src mask
> %pM\n",
> > +				match.mask->src);
> > +			return -EINVAL;
> > +		}
> > +	}
> > +
> > +	if (!is_zero_ether_addr(match.key->dst)) {
> > +		if (!iecm_is_mac_tc_filter_allowed(adapter->vports[0],
> > +						   match.key->dst)) {
> > +			dev_err(&adapter->pdev->dev,
> > +				"Dest MAC %pM doesn't belong to this
> device\n",
> > +				match.key->dst);
> > +			return -EINVAL;
> > +		}
> > +
> > +		if (is_valid_ether_addr(match.key->dst) ||
> > +		    is_multicast_ether_addr(match.key->dst)) {
> > +			/* set the mask if a valid dst_mac address */
> > +			if (adv_adq_ena)
> > +				ether_addr_copy(m_spec->dst_mac,
> > +						match.mask->dst);
> > +			else
> > +				eth_broadcast_addr(m_spec->dst_mac);
> > +			ether_addr_copy(d_spec->dst_mac,
> > +					match.key->dst);
> > +		}
> > +	}
> > +
> > +	if (!is_zero_ether_addr(match.key->src))
> > +		if (is_valid_ether_addr(match.key->src) ||
> > +		    is_multicast_ether_addr(match.key->src)) {
> > +			/* set the mask if a valid src_mac address */
> > +			if (adv_adq_ena) {
> > +				ether_addr_copy(m_spec->src_mac,
> > +						match.mask->src);
> > +			} else {
> > +				eth_broadcast_addr(m_spec->src_mac);
> > +			}
> > +			ether_addr_copy(d_spec->src_mac,
> > +					match.key->src);
> > +		}
> 
> All previous ifs had braces, and it way okay since we have multiple nested if-
> elses, but here we don't have them.
> Please either add them here or remove all the way above to keep the code
> style consistent.
> 

Yes this needs braces will fix.

> > +	return 0;
> > +}
> > +
> > +/**
> > + * iecm_parse_vlan_header - Parse vlan header fields
> > + * @vport: vport structure
> > + * @field_flags: Cloud filter flags
> > + * @d_spec: Virtchnl structure for L4 specs
> > + * @m_spec: Virtchnl structure for L4 specs
> > + * @rule: Flow rule structure
> > + *
> > + * Return 0 on success, negative on failure  */ static int
> > +iecm_parse_vlan_header(struct iecm_vport *vport, u8 *field_flags,
> > +		       struct virtchnl_l4_spec *d_spec,
> > +		       struct virtchnl_l4_spec *m_spec,
> > +		       struct flow_rule *rule)
> > +{
> > +	struct iecm_adapter *adapter = vport->adapter;
> > +	struct flow_match_vlan match;
> > +
> > +	flow_rule_match_vlan(rule, &match);
> > +	if (match.mask->vlan_id) {
> > +		u16 vid = match.key->vlan_id & VLAN_VID_MASK;
> > +		struct iecm_vlan vlan;
> > +
> > +		vlan = IECM_VLAN(vid, ETH_P_8021Q);
> > +
> > +		if (match.mask->vlan_id != VLAN_VID_MASK) {
> > +			dev_err(&adapter->pdev->dev, "Bad vlan mask
> %u\n",
> > +				match.mask->vlan_id);
> > +			return -EINVAL;
> > +		}
> > +		if (!iecm_is_vlan_tc_filter_allowed(vport, &vlan)) {
> > +			dev_err(&adapter->pdev->dev,
> > +				"VLAN %u doesn't belong to this VF\n",
> > +				vid);
> > +			return -EINVAL;
> > +		}
> > +		*field_flags |= IECM_CLOUD_FIELD_IVLAN;
> > +		m_spec->vlan_id = cpu_to_be16(match.mask->vlan_id);
> > +		d_spec->vlan_id = cpu_to_be16(match.key->vlan_id);
> > +	}
> 
> 	if (!vlan_id)
> 		return 0;
> 
> -1 level.
> 

Will fix.

> > +	return 0;
> > +}
> > +
> > +/**
> > + * iecm_parse_ipv4_header - Parse ipv4 header fields
> > + * @vport: vport structure
> > + * @field_flags: Cloud filter flags
> > + * @d_spec: Virtchnl structure for L4 specs
> > + * @m_spec: Virtchnl structure for L4 specs
> > + * @rule: Flow rule structure
> > + *
> > + * Return 0 on success, negative on failure  */ static int
> > +iecm_parse_ipv4_header(struct iecm_vport *vport, u8 *field_flags,
> > +		       struct virtchnl_l4_spec *d_spec,
> > +		       struct virtchnl_l4_spec *m_spec,
> > +		       struct flow_rule *rule)
> > +{
> > +	struct iecm_adapter *adapter = vport->adapter;
> > +	struct flow_match_ipv4_addrs match;
> > +	bool adv_adq_ena;
> > +
> > +	adv_adq_ena = iecm_is_cap_ena(adapter, IECM_OTHER_CAPS,
> > +				      VIRTCHNL2_CAP_ADQ);
> > +
> > +	flow_rule_match_ipv4_addrs(rule, &match);
> > +
> > +	if (*field_flags & IECM_CLOUD_FIELD_TEN_ID) {
> > +		dev_info(&adapter->pdev->dev,
> > +			 "Tenant id not allowed for ip filter\n");
> > +		return -EINVAL;
> > +	}
> > +
> > +	if (match.mask->dst) {
> > +		if (adv_adq_ena || match.mask->dst ==
> cpu_to_be32(0xffffffff)) {
> > +			*field_flags |= IECM_CLOUD_FIELD_IIP;
> > +		} else {
> > +			dev_err(&adapter->pdev->dev, "Bad ip dst mask
> 0x%08x\n",
> > +				be32_to_cpu(match.mask->dst));
> > +			return -EINVAL;
> > +		}
> > +	}
> > +
> > +	if (match.mask->src) {
> > +		if (adv_adq_ena || match.mask->src ==
> cpu_to_be32(0xffffffff)) {
> > +			*field_flags |= IECM_CLOUD_FIELD_IIP;
> > +		} else {
> > +			dev_err(&adapter->pdev->dev, "Bad ip src mask
> 0x%08x\n",
> > +				be32_to_cpu(match.mask->dst));
> > +			return -EINVAL;
> > +		}
> > +	}
> > +
> > +	if (match.key->dst) {
> > +		if (adv_adq_ena)
> > +			m_spec->dst_ip[0] = match.mask->dst;
> > +		else
> > +			m_spec->dst_ip[0] = cpu_to_be32(0xffffffff);
> > +		d_spec->dst_ip[0] = match.key->dst;
> > +	}
> > +
> > +	if (match.key->src) {
> > +		if (adv_adq_ena)
> > +			m_spec->src_ip[0] = match.mask->src;
> > +		else
> > +			m_spec->src_ip[0] = cpu_to_be32(0xffffffff);
> > +		d_spec->src_ip[0] = match.key->src;
> > +	}
> > +	return 0;
> > +}
> > +
> > +/**
> > + * iecm_parse_ipv6_header - Parse ipv6 header fields
> > + * @vport: vport structure
> > + * @field_flags: Cloud filter flags
> > + * @d_spec: Virtchnl structure for L4 specs
> > + * @m_spec: Virtchnl structure for L4 specs
> > + * @rule: Flow rule structure
> > + *
> > + * Return 0 on success, negative on failure  */ static int
> > +iecm_parse_ipv6_header(struct iecm_vport *vport, u8 *field_flags,
> > +		       struct virtchnl_l4_spec *d_spec,
> > +		       struct virtchnl_l4_spec *m_spec,
> > +		       struct flow_rule *rule)
> > +{
> > +	struct iecm_adapter *adapter = vport->adapter;
> > +	struct flow_match_ipv6_addrs match;
> > +	int i;
> > +
> > +	flow_rule_match_ipv6_addrs(rule, &match);
> > +
> > +	/* validate mask, make sure it is not IPV6_ADDR_ANY */
> > +	if (ipv6_addr_any(&match.mask->dst)) {
> > +		dev_err(&adapter->pdev->dev, "Bad ipv6 dst mask
> 0x%02x\n",
> > +			IPV6_ADDR_ANY);
> > +		return -EINVAL;
> > +	}
> > +
> > +	/* src and dest IPv6 address should not be LOOPBACK
> > +	 * (0:0:0:0:0:0:0:1) which can be represented as ::1
> > +	 */
> > +	if (ipv6_addr_loopback(&match.key->dst) ||
> > +	    ipv6_addr_loopback(&match.key->src)) {
> > +		dev_err(&adapter->pdev->dev,
> > +			"ipv6 addr should not be loopback\n");
> > +		return -EINVAL;
> > +	}
> > +
> > +	if (!ipv6_addr_any(&match.mask->dst) ||
> > +	    !ipv6_addr_any(&match.mask->src))
> > +		*field_flags |= IECM_CLOUD_FIELD_IIP;
> > +
> > +	/* copy dest IPv6 mask and address */
> > +	if (iecm_is_cap_ena(adapter, IECM_OTHER_CAPS,
> VIRTCHNL2_CAP_ADQ)) {
> > +		memcpy(&m_spec->dst_ip, &match.mask->dst.s6_addr32,
> > +		       sizeof(m_spec->dst_ip));
> > +	} else {
> > +		for (i = 0; i < 4; i++)
> > +			m_spec->dst_ip[i] = cpu_to_be32(0xffffffff);
> > +	}
> 
> One-liners, no braces needed for both `if` and `else`.
> 

Will not fix

> > +	memcpy(&d_spec->dst_ip, &match.key->dst.s6_addr32,
> > +	       sizeof(d_spec->dst_ip));
> > +
> > +	/* copy source IPv6 mask and address */
> > +	if (iecm_is_cap_ena(adapter, IECM_OTHER_CAPS,
> VIRTCHNL2_CAP_ADQ)) {
> > +		memcpy(&m_spec->src_ip, &match.mask->src.s6_addr32,
> > +		       sizeof(m_spec->src_ip));
> > +	} else {
> > +		for (i = 0; i < 4; i++)
> > +			m_spec->src_ip[i] = cpu_to_be32(0xffffffff);
> > +	}
> 
> Same here.
> 

Will not fix.

> > +	memcpy(&d_spec->src_ip, &match.key->src.s6_addr32,
> > +	       sizeof(d_spec->src_ip));
> > +
> > +	return 0;
> > +}
> > +
> > +/**
> > + * iecm_parse_l4_header - Parse l4 header fields
> > + * @vport: vport structure
> > + * @d_spec: Virtchnl structure for L4 specs
> > + * @m_spec: Virtchnl structure for L4 specs
> > + * @rule: Flow rule structure
> > + *
> > + * Return 0 on success, negative on failure  */ static int
> > +iecm_parse_l4_header(struct iecm_vport *vport,
> > +		     struct virtchnl_l4_spec *d_spec,
> > +		     struct virtchnl_l4_spec *m_spec,
> > +		     struct flow_rule *rule)
> > +{
> > +	struct iecm_adapter *adapter = vport->adapter;
> > +	struct flow_match_ports match;
> > +
> > +	flow_rule_match_ports(rule, &match);
> > +
> > +	if (match.key->dst) {
> > +		if (iecm_is_cap_ena(adapter, IECM_OTHER_CAPS,
> > +				    VIRTCHNL2_CAP_ADQ) ||
> > +		    match.mask->dst == cpu_to_be16(0xffff)) {
> > +			m_spec->dst_port = match.mask->dst;
> > +			d_spec->dst_port = match.key->dst;
> > +		} else {
> > +			dev_err(&adapter->pdev->dev, "Bad dst port mask
> %u\n",
> > +				be16_to_cpu(match.mask->dst));
> > +			return -EINVAL;
> > +		}
> > +	}
> > +
> > +	if (match.key->src) {
> > +		if (iecm_is_cap_ena(adapter, IECM_OTHER_CAPS,
> > +				    VIRTCHNL2_CAP_ADQ) ||
> > +		    match.mask->src == cpu_to_be16(0xffff)) {
> > +			m_spec->src_port = match.mask->src;
> > +			d_spec->src_port = match.key->src;
> > +		} else {
> > +			dev_err(&adapter->pdev->dev, "Bad src port mask
> %u\n",
> > +				be16_to_cpu(match.mask->src));
> > +			return -EINVAL;
> > +		}
> > +	}
> > +	return 0;
> > +}
> > +
> > +/**
> > + * iecm_parse_cls_flower - Parse tc flower filters provided by kernel
> > + * @vport: vport structure
> > + * @f: pointer to struct flow_cls_offload
> > + * @filter: pointer to cloud filter structure  */ static int
> > +iecm_parse_cls_flower(struct iecm_vport *vport,
> > +				 struct flow_cls_offload *f,
> > +				 struct iecm_cloud_filter *filter) {
> > +	struct flow_rule *rule = flow_cls_offload_flow_rule(f);
> > +	struct iecm_adapter *adapter = vport->adapter;
> > +	struct virtchnl_l4_spec *d_spec, *m_spec;
> > +	struct virtchnl_filter *cf = &filter->f;
> > +	struct flow_dissector *dissector;
> > +	u8 field_flags = 0;
> > +	u16 addr_type = 0;
> > +	int err;
> > +
> > +	dissector = rule->match.dissector;
> > +	if (dissector->used_keys &
> > +	    ~(BIT(FLOW_DISSECTOR_KEY_CONTROL) |
> > +	      BIT(FLOW_DISSECTOR_KEY_BASIC) |
> > +	      BIT(FLOW_DISSECTOR_KEY_ETH_ADDRS) |
> > +	      BIT(FLOW_DISSECTOR_KEY_VLAN) |
> > +	      BIT(FLOW_DISSECTOR_KEY_IPV4_ADDRS) |
> > +	      BIT(FLOW_DISSECTOR_KEY_IPV6_ADDRS) |
> > +	      BIT(FLOW_DISSECTOR_KEY_ENC_KEYID) |
> > +	      BIT(FLOW_DISSECTOR_KEY_PORTS))) {
> > +		dev_err(&adapter->pdev->dev, "Unsupported key used:
> 0x%x\n",
> > +			dissector->used_keys);
> > +		return -EOPNOTSUPP;
> > +	}
> > +	if (flow_rule_match_key(rule, FLOW_DISSECTOR_KEY_ENC_KEYID))
> > +		iecm_parse_keyid(rule, &field_flags);
> > +
> > +	/* even though following code refers as "tcp_sec", it is not
> > +	 * just for TCP but a generic struct representing
> > +	 * L2, L3 + L4 fields if specified
> > +	 */
> > +	m_spec = &cf->mask.tcp_spec;
> > +	d_spec = &cf->data.tcp_spec;
> > +
> > +	/* determine flow type, TCP/UDP_V4[6]_FLOW based on
> > +	 * L2 proto (aka ETH proto) and L3 proto (aka IP_PROTO)
> > +	 */
> > +	if (flow_rule_match_key(rule, FLOW_DISSECTOR_KEY_BASIC)) {
> > +		err = iecm_parse_flow_type(vport, rule, cf, filter);
> > +		if (err)
> > +			return err;
> > +	}
> > +
> > +	/* process Ethernet header fields */
> > +	if (flow_rule_match_key(rule, FLOW_DISSECTOR_KEY_ETH_ADDRS))
> {
> > +		err = iecm_parse_ether_header(vport, &field_flags,
> > +					      d_spec, m_spec, rule);
> > +		if (err)
> > +			return err;
> > +	}
> > +
> > +	/* process VLAN header for single VLAN (type could be S/C-tag) */
> > +	if (flow_rule_match_key(rule, FLOW_DISSECTOR_KEY_VLAN)) {
> > +		err = iecm_parse_vlan_header(vport, &field_flags,
> > +					     d_spec, m_spec, rule);
> > +		if (err)
> > +			return err;
> > +	}
> > +
> > +	if (flow_rule_match_key(rule, FLOW_DISSECTOR_KEY_CONTROL)) {
> > +		struct flow_match_control match;
> > +
> > +		flow_rule_match_control(rule, &match);
> > +		addr_type = match.key->addr_type;
> > +	}
> > +
> > +	/* process IPv4 header */
> > +	if (addr_type == FLOW_DISSECTOR_KEY_IPV4_ADDRS) {
> > +		err = iecm_parse_ipv4_header(vport, &field_flags,
> > +					     d_spec, m_spec, rule);
> > +		if (err)
> > +			return err;
> > +	}
> > +
> > +	/* process IPv6 header */
> > +	if (addr_type == FLOW_DISSECTOR_KEY_IPV6_ADDRS) {
> > +		err = iecm_parse_ipv6_header(vport, &field_flags,
> > +					     d_spec, m_spec, rule);
> > +		if (err)
> > +			return err;
> > +	}
> > +
> > +	/* process L4 header, supported L4 protocols are TCP and UDP */
> > +	if (flow_rule_match_key(rule, FLOW_DISSECTOR_KEY_PORTS)) {
> > +		err = iecm_parse_l4_header(vport, d_spec, m_spec, rule);
> > +		if (err)
> > +			return err;
> > +	}
> > +	cf->field_flags = field_flags;
> > +
> > +	return 0;
> > +}
> > +
> > +/**
> > + * iecm_handle_tclass - Forward to a traffic class on the device
> > + * @vport: vport structure
> > + * @tc: traffic class index on the device
> > + * @filter: pointer to cloud filter structure
> > + *
> > + * Return 0 on success, negative on failure  */ static int
> > +iecm_handle_tclass(struct iecm_vport *vport, int tc,
> > +			      struct iecm_cloud_filter *filter) {
> > +	struct iecm_adapter *adapter = vport->adapter;
> > +
> > +	if (tc == 0)
> > +		return 0;
> > +	if ((!iecm_is_adq_v2_ena(vport)) &&
> > +	    !filter->f.data.tcp_spec.dst_port) {
> > +		dev_err(&adapter->pdev->dev,
> > +			"Specify destination port to redirect to traffic class
> other than TC0\n");
> > +		return -EINVAL;
> > +	}
> > +	/* redirect to a traffic class on the same device */
> > +	filter->f.action = VIRTCHNL_ACTION_TC_REDIRECT;
> > +	filter->f.action_meta = tc;
> > +	return 0;
> > +}
> > +
> > +/* iecm_find_cf - Find the cloud filter in the list
> > + * @vport: vport structure
> > + * @cookie: filter specific cookie
> > + *
> > + * Returns pointer to the filter object or NULL. Must be called while
> > +holding
> > + * cloud_filter_list_lock.
> > + */
> > +static struct iecm_cloud_filter *iecm_find_cf(struct iecm_vport *vport,
> > +					      unsigned long *cookie)
> > +{
> > +	struct iecm_adapter *adapter = vport->adapter;
> > +	struct iecm_cloud_filter *filter = NULL;
> > +
> > +	if (!cookie)
> > +		return NULL;
> > +
> > +	list_for_each_entry(filter,
> > +			    &adapter->config_data.cf_config.cloud_filter_list,
> > +			    list) {
> > +		if (!memcmp(cookie, &filter->cookie, sizeof(filter->cookie)))
> > +			return filter;
> > +	}
> 
> Redundant braces round single statement.
> 

Will not fix.

> > +	return NULL;
> > +}
> > +
> > +/**
> > + * iecm_configure_clsflower - Add tc flower filters
> > + * @vport: vport structure
> > + * @cls_flower: Pointer to struct flow_cls_offload
> > + *
> > + * Return 0 on success, negative on failure  */ static int
> > +iecm_configure_clsflower(struct iecm_vport *vport,
> > +				    struct flow_cls_offload *cls_flower) {
> > +	struct iecm_adapter *adapter = vport->adapter;
> > +	struct iecm_user_config_data *config_data;
> > +	struct iecm_cloud_filter *filter = NULL;
> > +	int err;
> > +	int tc;
> > +
> > +	config_data = &adapter->config_data;
> > +	tc = tc_classid_to_hwtc(vport->netdev, cls_flower->classid);
> > +	if (tc < 0) {
> > +		dev_err(&adapter->pdev->dev, "Invalid traffic class\n");
> > +		return -EINVAL;
> > +	}
> > +
> > +#define IECM_MAX_CLOUD_ADQ_FILTERS	128
> > +
> > +	if (config_data->cf_config.num_cloud_filters >=
> > +
> 	IECM_MAX_CLOUD_ADQ_FILTERS) {
> > +		dev_err(&adapter->pdev->dev,
> > +			"Unable to add filter (action is forward to TC),
> reached max allowed filters (%u)\n",
> > +			IECM_MAX_CLOUD_ADQ_FILTERS);
> > +		return -ENOSPC;
> > +	}
> > +
> > +	/* bail out here if filter already exists */
> > +	spin_lock_bh(&adapter->cloud_filter_list_lock);
> > +	filter = iecm_find_cf(vport, &cls_flower->cookie);
> > +	if (filter) {
> > +		filter->remove = false;
> > +		dev_err(&adapter->pdev->dev, "Failed to add TC Flower
> filter, it already exists\n");
> > +		spin_unlock_bh(&adapter->cloud_filter_list_lock);
> > +		return -EEXIST;
> > +	}
> > +	spin_unlock_bh(&adapter->cloud_filter_list_lock);
> > +
> > +	filter = kzalloc(sizeof(*filter), GFP_KERNEL);
> > +	if (!filter)
> > +		return -ENOMEM;
> > +
> > +	filter->cookie = cls_flower->cookie;
> > +
> > +	/* set the mask to all zeroes to begin with */
> > +	memset(&filter->f.mask.tcp_spec, 0, sizeof(struct
> > +virtchnl_l4_spec));
> > +
> > +	/* start out with flow type and eth type IPv4 to begin with */
> > +	filter->f.flow_type = VIRTCHNL_TCP_V4_FLOW;
> > +	err = iecm_parse_cls_flower(vport, cls_flower, filter);
> > +	if (err)
> > +		goto error;
> > +
> > +	err = iecm_handle_tclass(vport, tc, filter);
> > +	if (err)
> > +		goto error;
> > +
> > +	/* add filter to the list */
> > +	spin_lock_bh(&adapter->cloud_filter_list_lock);
> > +	list_add_tail(&filter->list, &config_data->cf_config.cloud_filter_list);
> > +	filter->add = true;
> > +	spin_unlock_bh(&adapter->cloud_filter_list_lock);
> > +	err = iecm_send_add_del_cloud_filter_msg(vport, true);
> > +	spin_lock_bh(&adapter->cloud_filter_list_lock);
> > +	/* We have to find it again in case another thread has already
> > +	 * deleted and kfreed it.
> > +	 */
> > +	filter = iecm_find_cf(vport, &cls_flower->cookie);
> > +	if (filter && err) {
> > +		list_del(&filter->list);
> > +		spin_unlock_bh(&adapter->cloud_filter_list_lock);
> > +		goto error;
> > +	}
> > +	spin_unlock_bh(&adapter->cloud_filter_list_lock);
> > +
> > +	config_data->cf_config.num_cloud_filters++;
> > +error:
> > +	if (err)
> > +		kfree(filter);
> > +	return err;
> > +}
> > +
> > +/**
> > + * iecm_delete_clsflower - Remove tc flower filters
> > + * @vport: vport structure
> > + * @cls_flower: Pointer to struct flow_cls_offload
> > + *
> > + * Return 0 on success, negative on failure  */ static int
> > +iecm_delete_clsflower(struct iecm_vport *vport,
> > +				 struct flow_cls_offload *cls_flower) {
> > +	struct iecm_adapter *adapter = vport->adapter;
> > +	struct iecm_cloud_filter *filter = NULL;
> > +	int err = 0;
> > +
> > +	spin_lock_bh(&adapter->cloud_filter_list_lock);
> > +	filter = iecm_find_cf(vport, &cls_flower->cookie);
> > +	if (filter) {
> > +		filter->remove = true;
> > +		adapter->config_data.cf_config.num_cloud_filters--;
> > +	} else if (adapter->config_data.cf_config.num_cloud_filters) {
> > +		/* "num_cloud_filters" can become zero if egress qdisc is
> > +		 * detached as per design, driver deletes related filters
> > +		 * when qdisc is detached to avoid stale filters, hence
> > +		 * num_cloud_filters can become zero. But since netdev
> > +		 * layer doesn't know that filters are deleted by driver
> > +		 * implictly when egress qdisc is deleted, it sees filters
> > +		 * being present and "in_hw". User can request delete
> > +		 * of specific filter of detach ingress qdisc - in either of
> > +		 * those operation, filter(s) won't be found in driver cache,
> > +		 * hence instead of returning, let this function return
> SUCCESS
> > +		 * Returning of err as -EINVAL is only applicable when
> > +		 * unable to find filter and num_cloud_filters is non-zero
> > +		 */
> > +		err = -EINVAL;
> > +	}
> > +	spin_unlock_bh(&adapter->cloud_filter_list_lock);
> > +
> > +	if (filter) {
> > +		err = iecm_send_add_del_cloud_filter_msg(vport, false);
> > +		spin_lock_bh(&adapter->cloud_filter_list_lock);
> > +		/* It can happen that asynchronously the filter was already
> > +		 * deleted from the list. Make sure it's still there and
> marked
> > +		 * for remove under spinlock before actually trying to delete
> > +		 * from list.
> > +		 */
> > +		filter = iecm_find_cf(vport, &cls_flower->cookie);
> > +		if (filter) {
> > +			list_del(&filter->list);
> > +			kfree(filter);
> > +		}
> > +		spin_unlock_bh(&adapter->cloud_filter_list_lock);
> > +	}
> 
> 	if (!filter)
> 		return err;
> 
> 	err = ...
> 
> -1 level.
> 

Will fix.

> > +	return err;
> > +}
> > +
> > +/**
> > + * iecm_setup_tc_cls_flower - flower classifier offloads
> > + * @vport: vport structure
> > + * @cls_flower: pointer to struct flow_cls_offload
> > + *
> > + * Return 0 on success, negative on failure  */ static int
> > +iecm_setup_tc_cls_flower(struct iecm_vport *vport,
> > +				    struct flow_cls_offload *cls_flower) {
> > +	if (cls_flower->common.chain_index)
> > +		return -EOPNOTSUPP;
> > +
> > +	switch (cls_flower->command) {
> > +	case FLOW_CLS_REPLACE:
> > +		return iecm_configure_clsflower(vport, cls_flower);
> > +	case FLOW_CLS_DESTROY:
> > +		return iecm_delete_clsflower(vport, cls_flower);
> > +	case FLOW_CLS_STATS:
> > +		return -EOPNOTSUPP;
> > +	default:
> > +		return -EINVAL;
> > +	}
> > +}
> > +
> > +/**
> > + * iecm_setup_tc_block_cb - block callback for tc
> > + * @type: type of offload
> > + * @type_data: offload data
> > + * @cb_priv: Private adapter structure
> > + *
> > + * This function is the block callback for traffic classes
> > + * Return 0 on success, negative on failure  **/ static int
> > +iecm_setup_tc_block_cb(enum tc_setup_type type, void *type_data,
> > +				  void *cb_priv)
> > +{
> > +	switch (type) {
> > +	case TC_SETUP_CLSFLOWER:
> > +		return iecm_setup_tc_cls_flower((struct iecm_vport
> *)cb_priv,
> > +						(struct flow_cls_offload *)
> > +						 type_data);
> 
> Just dereference them in separate variables and they will fit into one line.
> There shouldn't be any spaces or line breaks after a cast.
> 

Will take a look.

> > +	default:
> > +		return -EOPNOTSUPP;
> > +	}
> > +}
> > +
> > +/**
> > + * iecm_del_all_cloud_filters - delete all cloud filters on the
> > +traffic classes
> > + * @vport: vport structure
> > + *
> > + * This function will loop through the list of cloud filters and deletes
> them.
> > + **/
> > +static void iecm_del_all_cloud_filters(struct iecm_vport *vport) {
> > +	struct iecm_adapter *adapter = vport->adapter;
> > +	struct iecm_cloud_filter_config *cf_config;
> > +	struct iecm_cloud_filter *cf, *cftmp;
> > +
> > +	cf_config = &adapter->config_data.cf_config;
> > +	spin_lock_bh(&adapter->cloud_filter_list_lock);
> > +	list_for_each_entry_safe(cf, cftmp,
> > +				 &cf_config->cloud_filter_list,
> > +				 list) {
> > +		list_del(&cf->list);
> > +		kfree(cf);
> > +		cf_config->num_cloud_filters--;
> > +	}
> > +	spin_unlock_bh(&adapter->cloud_filter_list_lock);
> > +}
> > +
> >  /**
> >   * iecm_validate_tx_bandwidth - validate the max Tx bandwidth
> >   * @vport: vport structure
> > @@ -2596,6 +3480,7 @@ static int __iecm_setup_tc(struct iecm_vport
> *vport, void *type_data)
> >  			netif_tx_stop_all_queues(netdev);
> >  			netif_tx_disable(netdev);
> >  			ret = iecm_send_disable_channels_msg(vport);
> > +			iecm_del_all_cloud_filters(vport);
> >  			netif_tx_start_all_queues(netdev);
> >  			if (!test_bit(__IECM_REL_RES_IN_PROG, adapter-
> >flags) &&
> >  			    !ret) {
> > @@ -2709,8 +3594,10 @@ static int iecm_setup_tc(struct net_device
> > *netdev, enum tc_setup_type type,  {
> >  	struct iecm_vport *vport = iecm_netdev_to_vport(netdev);
> >  	struct iecm_adapter *adapter = vport->adapter;
> > +	struct iecm_cloud_filter_config *cf_config;
> >  	int err = 0;
> >
> > +	cf_config = &adapter->config_data.cf_config;
> >  	switch (type) {
> >  	case TC_SETUP_QDISC_ETF:
> >  		if (iecm_is_queue_model_split(vport->txq_model))
> > @@ -2720,6 +3607,17 @@ static int iecm_setup_tc(struct net_device
> *netdev, enum tc_setup_type type,
> >  					     type_data);
> >  		break;
> >  	case TC_SETUP_BLOCK:
> > +		if (iecm_is_cap_ena(adapter, IECM_BASE_CAPS,
> > +				    VIRTCHNL2_CAP_ADQ) ||
> > +		    iecm_is_cap_ena(adapter, IECM_OTHER_CAPS,
> > +				    VIRTCHNL2_CAP_ADQ)) {
> > +			err =
> > +			flow_block_cb_setup_simple((struct
> flow_block_offload *)
> > +						    type_data,
> > +						   &cf_config->block_cb_list,
> > +						   iecm_setup_tc_block_cb,
> > +						   vport, vport, true);
> > +		}
> 
> Invert the condition, and there'll be no line wraps (esp. if you assign casted
> @type_data into a separate var).
> 

Will fix

> >  		break;
> >  	case TC_SETUP_QDISC_MQPRIO:
> >  		if (iecm_is_cap_ena(adapter, IECM_BASE_CAPS, diff --git
> > a/drivers/net/ethernet/intel/iecm/iecm_virtchnl.c
> > b/drivers/net/ethernet/intel/iecm/iecm_virtchnl.c
> > index 5601846b4674..94af45c36866 100644
> > --- a/drivers/net/ethernet/intel/iecm/iecm_virtchnl.c
> > +++ b/drivers/net/ethernet/intel/iecm/iecm_virtchnl.c
> > @@ -2731,6 +2731,74 @@ static int iecm_send_insert_vlan_msg(struct
> iecm_vport *vport, bool ena)
> >  	return err;
> >  }
> >
> > +/**
> > + * iecm_send_add_del_cloud_filter_msg: Send add/del cloud filter
> > +message
> > + * @vport: vport structure
> > + * @add: True to add, false to delete cloud filter
> > + *
> > + * Request the CP/PF to add/del cloud filters as specified by the
> > +user via
> > + * tc tool
> > + *
> > + * Return 0 on success, negative on failure  **/ int
> > +iecm_send_add_del_cloud_filter_msg(struct iecm_vport *vport, bool
> > +add) {
> > +	struct iecm_adapter *adapter = vport->adapter;
> > +	struct iecm_cloud_filter_config *cf_config;
> > +	struct iecm_cloud_filter *cf;
> > +	struct virtchnl_filter f;
> > +	int len = 0, err = 0;
> > +
> > +	cf_config = &adapter->config_data.cf_config;
> > +
> > +	while (true) {
> > +		bool process_fltr = false;
> > +
> > +		spin_lock_bh(&adapter->cloud_filter_list_lock);
> > +		list_for_each_entry(cf, &cf_config->cloud_filter_list, list) {
> > +			if (add && cf->add) {
> > +				process_fltr = true;
> > +				cf->add = false;
> > +				f = cf->f;
> > +				break;
> > +			} else if (!add && cf->remove) {
> > +				process_fltr = true;
> > +				cf->remove = false;
> > +				f = cf->f;
> > +				break;
> > +			}
> > +		}
> 
> Redundant braces.

Will not fix.

> 
> > +		spin_unlock_bh(&adapter->cloud_filter_list_lock);
> > +
> > +		/* Don't send mailbox message when there are no filters to
> add/del */
> > +		if (!process_fltr)
> > +			goto error;
> > +
> > +		if (add) {
> > +			err = iecm_send_mb_msg(adapter,
> VIRTCHNL_OP_ADD_CLOUD_FILTER,
> > +					       len, (u8 *)&f);
> > +			if (err)
> > +				goto error;
> > +
> > +			err = iecm_wait_for_event(adapter,
> IECM_VC_ADD_CLOUD_FILTER,
> > +
> IECM_VC_ADD_CLOUD_FILTER_ERR);
> > +		} else {
> > +			err = iecm_send_mb_msg(adapter,
> VIRTCHNL_OP_DEL_CLOUD_FILTER,
> > +					       len, (u8 *)&f);
> > +			if (err)
> > +				goto error;
> > +
> > +			err =
> > +			iecm_min_wait_for_event(adapter,
> IECM_VC_DEL_CLOUD_FILTER,
> > +
> 	IECM_VC_DEL_CLOUD_FILTER_ERR);
> 
> Too long lines here.
> 
> > +		}
> > +		if (err)
> > +			break;
> > +	}
> > +error:
> > +	return err;
> > +}
> > +
> >  /**
> >   * iecm_send_add_fdir_filter_msg: Send add Flow Director filter message
> >   * @vport: vport structure
> > diff --git a/drivers/net/ethernet/intel/include/iecm.h
> > b/drivers/net/ethernet/intel/include/iecm.h
> > index b0785684cc63..0aab41cf982c 100644
> > --- a/drivers/net/ethernet/intel/include/iecm.h
> > +++ b/drivers/net/ethernet/intel/include/iecm.h
> > @@ -403,6 +403,28 @@ enum iecm_user_flags {
> >  	__IECM_USER_FLAGS_NBITS,
> >  };
> >
> > +#define IECM_CLOUD_FIELD_OMAC		BIT(0)
> > +#define IECM_CLOUD_FIELD_IMAC		BIT(1)
> > +#define IECM_CLOUD_FIELD_IVLAN		BIT(2)
> > +#define IECM_CLOUD_FIELD_TEN_ID		BIT(3)
> > +#define IECM_CLOUD_FIELD_IIP		BIT(4)
> > +
> > +#define IECM_START_CHNL_TC		1
> > +
> > +struct iecm_cloud_filter {
> > +	struct list_head list;
> > +	struct virtchnl_filter f;
> > +	unsigned long cookie;
> > +	bool remove;		/* filter needs to be deleted */
> > +	bool add;		/* filter needs to be added */
> > +};
> > +
> > +struct iecm_cloud_filter_config {
> > +	struct list_head block_cb_list;		/* need to pass this to stack
> */
> > +	struct list_head cloud_filter_list;
> > +	u16 num_cloud_filters;
> > +};
> > +
> >  struct iecm_channel_config {
> >  	struct virtchnl_channel_info
> ch_info[VIRTCHNL_MAX_ADQ_V2_CHANNELS];
> >  	bool tc_running;
> > @@ -536,6 +558,7 @@ struct iecm_ptype_state {
> >  	bool outer_frag;
> >  	u8 tunnel_state;
> >  };
> > +
> 
> Please move this newline into the patch where iecm_ptype_state was
> introduced, it doesn't belong here.
> 

Will fix

> >  /* User defined configuration values */  struct iecm_user_config_data
> > {
> >  	u32 num_req_tx_qs; /* user requested TX queues through ethtool
> */ @@
> > -550,6 +573,7 @@ struct iecm_user_config_data {
> >  	struct list_head vlan_filter_list;
> >  	struct list_head adv_rss_list;
> >  	struct iecm_fdir_fltr_config fdir_config;
> > +	struct iecm_cloud_filter_config cf_config;
> >  	struct iecm_channel_config ch_config;  };
> >
> > @@ -853,6 +877,7 @@ void iecm_set_ethtool_ops(struct net_device
> > *netdev);  void iecm_vport_set_hsplit(struct iecm_vport *vport, bool
> > ena);  void iecm_add_del_ether_addrs(struct iecm_vport *vport, bool
> > add, bool async);  int iecm_set_promiscuous(struct iecm_adapter
> > *adapter);
> > +int iecm_send_add_del_cloud_filter_msg(struct iecm_vport *vport,
> bool
> > +add);
> >  int iecm_send_add_fdir_filter_msg(struct iecm_vport *vport);  int
> > iecm_send_del_fdir_filter_msg(struct iecm_vport *vport);  int
> > iecm_get_fdir_fltr_entry(struct iecm_vport *vport,
> > --
> > 2.33.0
> 
> Thanks,
> Al
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
