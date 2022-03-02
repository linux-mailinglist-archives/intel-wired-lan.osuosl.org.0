Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F04144CAF4C
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Mar 2022 21:04:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 579FD408D1;
	Wed,  2 Mar 2022 20:04:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GD9m3OrnAFqo; Wed,  2 Mar 2022 20:04:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E4B72404BA;
	Wed,  2 Mar 2022 20:04:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 393431BF2F2
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Mar 2022 20:03:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 24A08404E2
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Mar 2022 20:03:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id A6GUpDLv3KMQ for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Mar 2022 20:03:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 592FD404B9
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Mar 2022 20:03:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646251438; x=1677787438;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=gYySC4GObdLCDRz+J0+lMZBGXbJtT31AERFjTRnELIQ=;
 b=YdWiHa7WoD0IEOhD2gWzPuOns9nkk+IN+U98i8a4ofhp48OwNnuuBNsX
 2ZaIA289Bobpna7pY41zQDVkg2mkyEPpy2cbGhzoj2nKw3yIupYuipJuv
 fPaY7cmQ4eVAZL2UrQD1M3dcPPuDCL3pouYLbjSfoWRjXvMS0FESPGf4a
 rHyUPE20WRTk7qnJh33ZuzyBgHWmYdIJO0h3m9Nme88uNM3tVnu6Cx69r
 Bap0ZTEZ8KbzfufaHnw8bGm9FBNPXR7CH7Er1BjdRt9c2A5lrbkU/nXhA
 IPwQtBOa3nD7XwWsvr8ky1L0fRDdiwP5w3JJy1jln1RapNe8tquBOZSj3 g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10274"; a="237005741"
X-IronPort-AV: E=Sophos;i="5.90,150,1643702400"; d="scan'208";a="237005741"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2022 12:03:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,150,1643702400"; d="scan'208";a="551416102"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga008.jf.intel.com with ESMTP; 02 Mar 2022 12:03:57 -0800
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Wed, 2 Mar 2022 12:03:56 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Wed, 2 Mar 2022 12:03:56 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.175)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Wed, 2 Mar 2022 12:03:56 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=arh87afn7QGIWC7XJQ8RlTqKlfjhIMNd/i4QMWBk062kJ8+hR9G7ynMiQqC9gWaf5Njv768wiT31NMhrxpa7ErOZ36czDjXLv2QAgt33GPUYSGaTPfGaDoQSeVHWmFD6bgh9RChAdy5gqDgdswr/doZyW+eO3I7lNf4YurKhTJ4KZY1w06EcP3/kT5w0PIVQ+10hAXvfSXBupxXp/rfezLuqOMT0+o92aJ12zweAywnCOBDblwF71OuQ3oKv87W5m+a0hKneJte/sPjuKdQPQYwRMUJbshnYzxk+0fpipBDirfKcoGJgHOdC1MD5UGE8RvOQSNp7X/HgimrzLMbx+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fPeO8PyWri8mY/JNEP3SCYSlr1yBH5D9EJTJZJenPeI=;
 b=EXlC3cO7tE1c9bPlU8Q6jqO+eMNLBmGuouCn9FrJd5aAdBzgtRvQfN5qt79vi2EfVM4c5m7LpMfgZKn8hPgDg1E5v9UJnwUgoWZzTP2/lQ/nHC4p6TqNyHZS7irTvOHnJdqvD6nbpEqp8jBQYjb0bJ7IxgGiB1mpYxwzL3n1oSnJOx52RcgSDsSPm/TNQEhBQJ0TpsjEWCzweZVpB4SnMEU7k8WTyEz5sEdiv6llrCsIRgfzH0uiptpFnqwPGfWkFuSXFNkukkHSp7MSjUltAWzkI4GZaCTjOdL1iyZJYybV5PEEBNFoS0sHHhRi0qxMvcjSOePhQnfqRGmG5QzCPg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5629.namprd11.prod.outlook.com (2603:10b6:a03:3ab::13)
 by DM6PR11MB4612.namprd11.prod.outlook.com (2603:10b6:5:2a8::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5038.14; Wed, 2 Mar
 2022 20:03:55 +0000
Received: from SJ0PR11MB5629.namprd11.prod.outlook.com
 ([fe80::c194:9f26:88a2:b9c0]) by SJ0PR11MB5629.namprd11.prod.outlook.com
 ([fe80::c194:9f26:88a2:b9c0%8]) with mapi id 15.20.5017.027; Wed, 2 Mar 2022
 20:03:55 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [net-next PATCH 05/25] ice: remmove unused
 definitions from ice_sriov.h
Thread-Index: AQHYKEwxRLOsxoEJhEW22UkzlG75P6yskJ8Q
Date: Wed, 2 Mar 2022 20:03:54 +0000
Message-ID: <SJ0PR11MB5629BAA5664D17AD6A187F50AB039@SJ0PR11MB5629.namprd11.prod.outlook.com>
References: <20220223002712.2771809-1-jacob.e.keller@intel.com>
 <20220223002712.2771809-6-jacob.e.keller@intel.com>
In-Reply-To: <20220223002712.2771809-6-jacob.e.keller@intel.com>
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
x-ms-office365-filtering-correlation-id: a0891742-c96c-41e1-8e24-08d9fc87c7cb
x-ms-traffictypediagnostic: DM6PR11MB4612:EE_
x-microsoft-antispam-prvs: <DM6PR11MB4612118D68587C8E948A30ABAB039@DM6PR11MB4612.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: BdW9dgKmOzfmYd4aPUVDfCaUM1UQCCQCNoUEU8j2WEscDm8EkLlfnrP0uulY2pIu0WT4XiNCuSqyveVnl0e847HouVVsXNHT2uggvJXOG6gXLsKLIhE0PqZUQ4lfXj+CTLdRACQk5J/SC7oU9yud8hfbq6t72f1fr127fLxbUXd4ai0ATZ/joes5bazSjF/TQbmgeZsD2+N+lkDXkwJunk6ZxgGDTJue0McJ72i8Srwq+HQKJZq9ZT1s9vHCrMjmVPNEdtYYtLrEZ6WmEH0rhUtPNgDWIr3/lAu5k9LnexHE/4K6EduiSF4tU+k0Xhxoa/IHbQF5M+8ymbc5f/PcrjOJqNE2zctjy6BD/oRf9wa4ipYSQQpRJJnz3NZiBAJggP8q7D5bY+oIj9o+sNwjM6GnfSHWqFbjiQhGE7QK63JuOuY/tbJETmuFviKa0uieNVUyT/wzRQOPRwTJk6xVB4e3qqx4rH5aEFfYIi4M6gc73IvYGW3WL1dBgwLrBRjAuSF6ou/VJsi/gX+CFhHOe+UYrdhRh4eFTnqwe+MYuZWx02pzAs+xLm1HtcOs+/6UGhnGd4gP4cZUEVcGorDr67x/fLY+hCm03l1CTnoHL9o6kFVhWAL8sEZio/fr7HgHKjycOWT0+iRdHQVPyHBxPFWUfTIBuhl2HfBT2qgDfWwEe/vi0EvFpCi2WnHPDZwR7kyS9dw3BN3STvn8iIB5GA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5629.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(64756008)(66446008)(5660300002)(66476007)(66556008)(76116006)(38100700002)(316002)(66946007)(122000001)(6506007)(8676002)(86362001)(53546011)(7696005)(26005)(186003)(55016003)(8936002)(508600001)(83380400001)(52536014)(110136005)(71200400001)(33656002)(9686003)(82960400001)(38070700005)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ed3SPZs9JZNZJT+rCgMF9KFvIdDTCljsoH4jG1UYn74afpfqUQUl0ecQf8Aj?=
 =?us-ascii?Q?T9Ee3yCVIwmXhzfzQxoa/cZ8mr9akCNPdL/XVbvYQ+tSWGUSngleai7vJ1AV?=
 =?us-ascii?Q?8DDvHgO4Vl+7VA+0CNweGfZ8cqepYPAzn1g7GQHcCxH6o2I+ZQVGCQbDIgY3?=
 =?us-ascii?Q?CIgXIu/OpaPMJzMkRFcCKd2zldaaRDnwzwF1uw7Fb4c0+2NXEODbOpdHWaMV?=
 =?us-ascii?Q?JEtG47FD/ij0u/oIX/UOBD7KqjaPfEGkfzm+9aakIGZrNSl1s9aWK0xXWzoa?=
 =?us-ascii?Q?r//+XZQnRyinEltENOoVMehUistCHadEgQAeE5dPPhzbllHLZXJdsV78ZpZa?=
 =?us-ascii?Q?i1PL7qhgXYEVNyGm8XP9gsKiXMcMmSHfC8QeQeB58FYshhApEj2iOIkf3p+x?=
 =?us-ascii?Q?eHw+a50Wu4QlAcE8Bo8pZXSriX3FISOLJpPaBCYqzScwSp4kxr0RN9xw2BYR?=
 =?us-ascii?Q?Z6oMJDgtPoy/ndyCUP0jtKLPVV2R6rb2B14ZbALSSJ+1MAnct23EE6huYUv6?=
 =?us-ascii?Q?1Hd1LY5THAvsx9yAmIOf6vWgvKoy7cQFQZSXqTHiXnHDiEVzOCTNe5dn061Z?=
 =?us-ascii?Q?MSfzxIhLJ5sgnSMSkmXErfjhQpcQqtPMer0eEOJrh3xfQqpYVJtEuGakg19G?=
 =?us-ascii?Q?GkuCjxIuthX9+5ycRO5S5bCg1zGH5uNTCNXdGGq3yOy96Yq+BWFEI3JaKkWK?=
 =?us-ascii?Q?uRR73zOjwKE/1ZR2eUECTU2jQVp9H3He/59l0fV1DhVGm2cp8nU8pmuEJymA?=
 =?us-ascii?Q?qikevXYIOTFsUp5vQlV9gfF2EUPVivc+sAWSsiwGlZ6oe1olbGuiM+RlXHrp?=
 =?us-ascii?Q?SLFGSYSimKGxeR7ebEnsZw8PH/TVpkp/hmUopGVDPD2cLrvPp+73OjasnG50?=
 =?us-ascii?Q?OM7HwgswvKzzv5XIYEEvU/oAMEQwUZv5pbOoRqGhnoZNL+gCQzFEvJ2q4/JW?=
 =?us-ascii?Q?CAVtPfi6xY6E5UoFc/h93jvTKrMlhotf3dkccn3qqZoaYgUuFlqOS+xeBW5f?=
 =?us-ascii?Q?xLmvUBVveFEXk4GjQMcn2qU5Yj8kh1R6Yc5ddO4l/mgSF2XoPaxev/uM5SNW?=
 =?us-ascii?Q?qt3NyQ/M/J72IXolzLq2fzfpuBkN7ua4j3KfvaR9R5TSUv065dW81Jqan9HL?=
 =?us-ascii?Q?SBbRwJ6539ZCGAjpvUYvSD0sWag4gvh4mjfWkGS7CeVzkpgmyNNQQllcgF8I?=
 =?us-ascii?Q?WCBMrE2mbWImdIQF8PrNaIyVxA38juAWkt4x3zbOF4X8moMe4bxXVjf9xXaM?=
 =?us-ascii?Q?C+sTIUo6qk9yO5XYnseRQ9XlfWsXl8Z+BbK8BtVGTIbcKXoSiI6QZ3R1qLYY?=
 =?us-ascii?Q?UBKGjtQ9IQybtStNmZduj0DLP0Vc9MUZRw4waQVGG91/1YabFHw+7LyGVjLF?=
 =?us-ascii?Q?CaK3kpy9WprW1MARtGEczXFLoqO4/VbOXgaZmj7B7jTxHFTAcbbyHYpNxAq5?=
 =?us-ascii?Q?9Se/luAaRAWXfWZ6CdyeKVU/bcwsnsbxkPn59/mfLxXwtoA7mXukefot92dp?=
 =?us-ascii?Q?1SO+lIQYGbEgwm8TrCxMm0/OReQm8bTJmZgQxoPagb+IEFt8KKZfCN34K0Dh?=
 =?us-ascii?Q?77eOUmPFG+yakesrSEXpwNaN22frTL/q6F5+GRMKkdMf4X6uOqV/SEOtMlnt?=
 =?us-ascii?Q?/hJq9RC0ZwwFyXS1NCU7WXlImmHRg3Pt0dxDaN30lzsi/fGdMvdaHzRyp8Vn?=
 =?us-ascii?Q?HIz8eg=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5629.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a0891742-c96c-41e1-8e24-08d9fc87c7cb
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2022 20:03:54.7593 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uaR9gjzMf9cjqv18vQwKcJuVj8SyS2OYt5LtBgkXRHhdje05T5lhFZIh0Y1Tv5etCVW9PVKhiCrdGa9yyvnBrN+ffV2JLN8NoXCn7JUOEd0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4612
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [net-next PATCH 05/25] ice: remmove unused
 definitions from ice_sriov.h
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
> Sent: Wednesday, February 23, 2022 1:27 AM
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Subject: [Intel-wired-lan] [net-next PATCH 05/25] ice: remmove unused
> definitions from ice_sriov.h
> 
> A few more macros exist in ice_sriov.h which are not used anywhere.
> These can be safely removed. Note that ICE_VIRTCHNL_VF_CAP_L2
> capability is set but never checked anywhere in the driver. Thus it is also safe
> to remove.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_sriov.c | 1 -
> drivers/net/ethernet/intel/ice/ice_sriov.h | 7 +------
>  2 files changed, 1 insertion(+), 7 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c
> b/drivers/net/ethernet/intel/ice/ice_sriov.c
> index 8578317ceb8a..205d7e5003d8 100644
> --- a/drivers/net/ethernet/intel/ice/ice_sriov.c
> +++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
> @@ -2012,7 +2012,6 @@ static int ice_create_vf_entries(struct ice_pf *pf,
> u16 num_vfs)
> 
>  		vf->vf_sw_id = pf->first_sw;
>  		/* assign default capabilities */
> -		set_bit(ICE_VIRTCHNL_VF_CAP_L2, &vf->vf_caps);
>  		vf->spoofchk = true;
>  		vf->num_vf_qs = pf->vfs.num_qps_per;
>  		ice_vc_set_default_allowlist(vf);
> diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.h
> b/drivers/net/ethernet/intel/ice/ice_sriov.h
> index 01b6b08a73d8..525e3f0819e8 100644
> --- a/drivers/net/ethernet/intel/ice/ice_sriov.h
> +++ b/drivers/net/ethernet/intel/ice/ice_sriov.h

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
