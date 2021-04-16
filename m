Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D44BF361FC7
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 Apr 2021 14:29:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 45B8440296;
	Fri, 16 Apr 2021 12:29:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pq8MqzOiVrek; Fri, 16 Apr 2021 12:29:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1ED0E40294;
	Fri, 16 Apr 2021 12:29:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 920B21BF2B0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Apr 2021 12:28:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8E15F847AB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Apr 2021 12:28:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id C1gSX6__9S2u for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 Apr 2021 12:28:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E809583C67
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Apr 2021 12:28:53 +0000 (UTC)
IronPort-SDR: u8hM+2+Rlpuj9TozrnJ1AZ2glWcNLaaTIGmVfVm0lOJlaXaBdV037eXOASISA2Bj6LuN9BI+xV
 QViFsY5bUl5Q==
X-IronPort-AV: E=McAfee;i="6200,9189,9955"; a="256347038"
X-IronPort-AV: E=Sophos;i="5.82,226,1613462400"; d="scan'208";a="256347038"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2021 05:28:52 -0700
IronPort-SDR: 39P96c6kPAehdqMiH+w+05svRfAq4hcRiRmyGuGwfwDZJ1FKl6Jt5YjyrDlkftjo0yIMYt8gi+
 cKd6OzFL47og==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,226,1613462400"; d="scan'208";a="522698822"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by fmsmga001.fm.intel.com with ESMTP; 16 Apr 2021 05:28:52 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 16 Apr 2021 05:28:52 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 16 Apr 2021 05:28:51 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Fri, 16 Apr 2021 05:28:51 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.45) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Fri, 16 Apr 2021 05:28:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hUgm84jwkMtPuMRl4rDkeStBdCq1knN+D6DPWEF+e6RSRrk+gVKAh/pMYe7Q0ZlVYejoMegqTVSRBlnJueh3NxrPHOHUqHa5rjiQ5S3uoz7vsoytsDejIWQIybNVMsq0wn+g66nhuSPAJVKw2zHCGNRA7FMyQqIuKlKbyx/RBYvYPa6C/ahF9Z4nWC6UGEVfwDIzxC4R0B67DUYqwerfHoSjRH9FzCwOSVWz7lqHAjT4tVmAwwNTjB8MdCv/ITivZL6IYWU/EA7xKKfLZU2RF9Y+Sv9l3njBtzYfJxH6YPIVoL/BRU+cn3rLaJX7wXGpTNgKrVk6bpI7HSdZiWMbsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ayPI4pueySbrOowwI95JWGbMrHYnmTlyUKpe59ooMdk=;
 b=FN2+e+OpwpWgVgkSVWCddhraoyPQ2eXT1P7EzA65FTfO8dQO1XQP3/hKW0hBYfzgn4y2fMfdsrYEOdAB5F5YuFbYPQw2uhhVW9TS+805bG2VrzbTJXhTkgC9iJFVwCjacBJHfIitrdxjjkBi13WRukadTSjBgl2pXewc8mu/gttM+hrFm0CL93O5g+JxD6YaFEoe7qbXVOF+BBPRK3IqMFkl0u3RfotDFgkRS2HBjhcyviNTc5G9398S2m6N9pk9tIGPpI6MRlizgD5Ah04X30b6fr9AJJP6veZn4QGD7D4ks9+3Z+r3l3Ui4n1lPBTszmkT4CuPJ1+z3wlif1tmXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ayPI4pueySbrOowwI95JWGbMrHYnmTlyUKpe59ooMdk=;
 b=id+qXrOyLwNUQ0H+hZVhDkar0bvD/TVmJoQn8QSOm4YmY87rJ8ViuwqHW2Nre3EnBEX+IpFzrJnfD3bldVlGlqT3edGxKH1ES8hG5JFojCMJy82/jkRYYmPFEZNDNOldQfxYKAaL/XVOvXLgz8AxSqnr0ADXNr+Bv0mHI2/RB2s=
Received: from CY4PR11MB1576.namprd11.prod.outlook.com (2603:10b6:910:d::15)
 by CY4PR11MB1782.namprd11.prod.outlook.com (2603:10b6:903:11a::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4042.19; Fri, 16 Apr
 2021 12:28:50 +0000
Received: from CY4PR11MB1576.namprd11.prod.outlook.com
 ([fe80::6cb6:a971:f256:c08]) by CY4PR11MB1576.namprd11.prod.outlook.com
 ([fe80::6cb6:a971:f256:c08%7]) with mapi id 15.20.4020.023; Fri, 16 Apr 2021
 12:28:50 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S55 14/14] iavf: add support for UDP
 Segmentation Offload
Thread-Index: AQHXD5ETwY8o864jdEOc00LsZV0hbaq3WN4Q
Date: Fri, 16 Apr 2021 12:28:50 +0000
Message-ID: <CY4PR11MB1576B4FA199EE53118416AB4AB4C9@CY4PR11MB1576.namprd11.prod.outlook.com>
References: <20210302181213.51718-1-anthony.l.nguyen@intel.com>
 <20210302181213.51718-14-anthony.l.nguyen@intel.com>
In-Reply-To: <20210302181213.51718-14-anthony.l.nguyen@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [188.147.97.10]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3799cc59-7b5d-49f5-2b57-08d900d330ed
x-ms-traffictypediagnostic: CY4PR11MB1782:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CY4PR11MB178290D7FF3E3394AB9500A7AB4C9@CY4PR11MB1782.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4125;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: GGFXzfVVLZ9iN8NnNI1yrvcOyZnqi+sIY9PvAPg1bLaKTNhCECZLJyEDai4B1/tlkwQqX4/6SX69a4LBfJp0xG/B9iw+2x0UCEwsHL3z3myVqZBfeW/X0vrfP7d+2uDyT7lgtSxFg3/k5g+rfYlG2rl/R5D4sYSLIzMyNtkngjo1Jp/OEudDqinER37CEHLj9VsgD+/+lgnjP2vm+KTu2PBCAYRbZU0O9e82CvZ03hvv8Qzb9NbqN5aJqFsODSKSGLlDQB/D8f7N3Fi4YmgLFDlPdThojo2Ue4DpuJeelgvvshWjriVm8JiNzDhj/iu5390jYFU9utvnlNj86mks/zLaMkdEzjZyQGUQaL+8QZCnbRW8FFfmK6KXLDOf7TZMht2nBIHgG7oF5kY5B5NI6ejuj1j/aB9dttv0syiQluxyz1Aab81+ySc5YhlNMdd4Nc60ex0E2dFpbT8mxnn6lYa59fsEnzVUC62aIYNWkDeLnmNrS6N3obXfUqEnBbnnc50LFd36PoFO1i39rOK9fhm4fIpPriTxwScRWBD8OxRI7ruBm2NjEBZOYKZrOAH45fv6UTngXS6guUeDeW92Odsi5N4rF9qxMNweVMY/ktc=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR11MB1576.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(376002)(366004)(39860400002)(136003)(346002)(38100700002)(76116006)(9686003)(6506007)(5660300002)(55016002)(186003)(52536014)(64756008)(122000001)(8936002)(110136005)(86362001)(53546011)(316002)(66556008)(66476007)(2906002)(66946007)(33656002)(8676002)(66446008)(7696005)(26005)(71200400001)(83380400001)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?GptKElT4co22WOF1qWnn5StT7jxaKcWJ1uRAwB+TprcpPhS7lFPg6+2ywMNQ?=
 =?us-ascii?Q?Sg7nxajosNT/d471aLOtGK8SjQs5CH79mXbosmHF6+/obwBLQgWFp9s4E1wY?=
 =?us-ascii?Q?d+8UU//eQVBrV6MOsF1jtZoFluu+lpQ5Dufmnn/xw3lP3lZHVn3I3ANqGDTO?=
 =?us-ascii?Q?3vHWLHRMtg6w7qqKnvXqQ0jD7+Fm/fTJHfixeW+MStTotHz9J0tvcxPYTyrY?=
 =?us-ascii?Q?lRXFVFWWeVuBfd9vB6XDV1J/+sJ/7WlnomYLivG2xHeMFSF9hDNA2YXbR1Cw?=
 =?us-ascii?Q?LXWyKSxbMjiWi2fSloPY6b01LubF3iV3hVU5xYsjRs6j3hRo0ZY5OIAlvtbr?=
 =?us-ascii?Q?iUd35U+ynUueBAzlK7axyFUzqYDFKhoIkgvbe12983UEwfB/0sHqOEfU7as/?=
 =?us-ascii?Q?WzlceJKRYWimLNujlA1QiNU1HwvoMWUpdmO++hNBxg7+82qRj9ZOI3VFGIpQ?=
 =?us-ascii?Q?vH364ebxj2nhLggUxGyOzINLI62PI2pva2StEpBnOZxhc92czZiafkRpZPvy?=
 =?us-ascii?Q?nGgQhKoP1RNp12aWbX7JHsf5/uEQISOp9ymQx2d3BSq4ltw9JLaj47zJWenN?=
 =?us-ascii?Q?QeawOitbrqI84sqW0W+PcRom/3fnWCFusgi6yezu3oNjqcpKWtoWV3SdP8sZ?=
 =?us-ascii?Q?AQwTg5p+wu0oEJF1Vzcjf6ZP+rU0KAt1BdgnrwwHwQ69AYWnnnAKBwxe1F+3?=
 =?us-ascii?Q?Z/xJ1kCNWZnFyyyNWwgr2seEpiN8jq6n7oPYmfXXWYZvmVLoCohRNolLZ4Mu?=
 =?us-ascii?Q?43JIuZoF+q80Re/D0XrjBI0JoPI3PF+pk46aTV6+4oqYi7kiEJahf6qQIXuX?=
 =?us-ascii?Q?9R9mWO2PnUHnucJWawSzusOw3qvKuT/Wyq5bY4cPnP6rODlAqAN2QHvtF/+i?=
 =?us-ascii?Q?gFH2YO1V56WPaKKAQyKN90IW/EdsCPbuGcaf7W01h/7GuBh6ROoO8LRbXVnP?=
 =?us-ascii?Q?mO3sO8PyVUxfPDfNsCsFzLrTwIWPqhVs5CRkSl58aweUiJXlz4M2XvvB4j9A?=
 =?us-ascii?Q?Vmuw91B8OQ2av/VIFiPS5v3sKAkj1mYbU0MIOVsEtXl9rj0wHh85U2ufPuUv?=
 =?us-ascii?Q?qQSWDwpSfuwxGVZYOXRbOiBbUZNIJxUwvg0Lt9vWZ4/TdRwVeY7RaNbxTqLZ?=
 =?us-ascii?Q?wi8a1xS5LRmYDWIynOJn9N+teDP7F7mzTH85C7/hEeLrKgOp4lOwWe9FEKM2?=
 =?us-ascii?Q?Y/NDUuMCm0A37ojcueAs8dRbohrS0kK31hIf2uE9QFOGbrYT+udOnJb68RSa?=
 =?us-ascii?Q?7JB5wbI21Bbkf85k8bb0Dlmjg1VcVv8WxhhinxdjFv7+krANEiynV3A6fJqv?=
 =?us-ascii?Q?eHNA8u4fZnNcG4fE5bp4NpGN?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR11MB1576.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3799cc59-7b5d-49f5-2b57-08d900d330ed
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Apr 2021 12:28:50.7495 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AuuuuGTGyTxeFxWVom61dfrZXeCTbOc4PuolGC0oC8jRdAyG8FRl1v5YS9W7gN3m80HS/11pbSdGZzKUqoMfHGJSfxlee3U/KXmRsx4NnZk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR11MB1782
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S55 14/14] iavf: add support for UDP
 Segmentation Offload
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
> Sent: wtorek, 2 marca 2021 19:12
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S55 14/14] iavf: add support for UDP
> Segmentation Offload
> 
> From: Brett Creeley <brett.creeley@intel.com>
> 
> Add code to support UDP segmentation offload (USO) for hardware that
> supports it.
> 
> Suggested-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf_main.c     |  2 ++
>  drivers/net/ethernet/intel/iavf/iavf_txrx.c     | 15 +++++++++++----
>  drivers/net/ethernet/intel/iavf/iavf_virtchnl.c |  1 +
>  3 files changed, 14 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c
> b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index 84430a304f3e..5a7ebbf0fb42 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> @@ -3560,6 +3560,8 @@ int iavf_process_config(struct iavf_adapter
> *adapter)
>  	/* Enable cloud filter if ADQ is supported */
>  	if (vfres->vf_cap_flags & VIRTCHNL_VF_OFFLOAD_ADQ)
>  		hw_features |= NETIF_F_HW_TC;
> +	if (vfres->vf_cap_flags & VIRTCHNL_VF_OFFLOAD_USO)
> +		hw_features |= NETIF_F_GSO_UDP_L4;
> 
>  	netdev->hw_features |= hw_features;
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.c
> b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
> index ffaf2742a2e0..23a51ebe13c5 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_txrx.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
> @@ -1905,13 +1905,20 @@ static int iavf_tso(struct iavf_tx_buffer *first, u8
> *hdr_len,
> 
>  	/* determine offset of inner transport header */
>  	l4_offset = l4.hdr - skb->data;
> -
>  	/* remove payload length from inner checksum */
>  	paylen = skb->len - l4_offset;
> -	csum_replace_by_diff(&l4.tcp->check, (__force
> __wsum)htonl(paylen));
> 
> -	/* compute length of segmentation header */
> -	*hdr_len = (l4.tcp->doff * 4) + l4_offset;
> +	if (skb_shinfo(skb)->gso_type & SKB_GSO_UDP_L4) {
> +		csum_replace_by_diff(&l4.udp->check,
> +				     (__force __wsum)htonl(paylen));
> +		/* compute length of UDP segmentation header */
> +		*hdr_len = (u8)sizeof(l4.udp) + l4_offset;
> +	} else {
> +		csum_replace_by_diff(&l4.tcp->check,
> +				     (__force __wsum)htonl(paylen));
> +		/* compute length of TCP segmentation header */
> +		*hdr_len = (u8)((l4.tcp->doff * 4) + l4_offset);
> +	}
> 
>  	/* pull values out of skb_shinfo */
>  	gso_size = skb_shinfo(skb)->gso_size;
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> index b41dff44f65b..3d7643ea8d46 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> @@ -140,6 +140,7 @@ int iavf_send_vf_config_msg(struct iavf_adapter
> *adapter)
>  	       VIRTCHNL_VF_OFFLOAD_ENCAP_CSUM |
>  	       VIRTCHNL_VF_OFFLOAD_REQ_QUEUES |
>  	       VIRTCHNL_VF_OFFLOAD_ADQ |
> +	       VIRTCHNL_VF_OFFLOAD_USO |
>  	       VIRTCHNL_VF_OFFLOAD_FDIR_PF |
>  	       VIRTCHNL_VF_CAP_ADV_LINK_SPEED;
> 
> --
> 2.20.1
> 
Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
