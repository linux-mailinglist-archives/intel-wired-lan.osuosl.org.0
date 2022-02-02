Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 367B64A6E6F
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Feb 2022 11:12:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 95275415D0;
	Wed,  2 Feb 2022 10:12:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mT9l0h0T_KPJ; Wed,  2 Feb 2022 10:12:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8C3CC415BB;
	Wed,  2 Feb 2022 10:12:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 28E221BF588
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Feb 2022 10:12:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 204BB415BB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Feb 2022 10:12:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AXBSVRLpQBFQ for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Feb 2022 10:12:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7A42540924
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Feb 2022 10:12:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643796743; x=1675332743;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=FuBHHyP6VjTABsz5cnWa5Shll2TgPfs3otN1dirKaW8=;
 b=V9fJg/i1jMjRwzztgspIFQ7+XJqmeNgSef7ITik8/+Epncaj3xpv82sS
 WbENkFJ81OBAeXfwTlM/zqqvs3ItKszDbtrCM3A0WE1xdrepBwaaSSZ/d
 cfkq+jvIPwjOS8Bl0/0RUghCFZGfqPMaMIJ4f7WiAzm2VebJSx1I1JX0l
 vnGjYe/C18Odawa0nJlOx18T+9GWqMk6gbDVkzHcIeiCRw3VrMWP9is6Z
 JkSjonAcMhn11T1te1DC2Iv/Y5df3SVR1IhB1Py2rfmZL9MkLUNFaVt+7
 6+vQuADNUrO1gGraVVeAW8k9YInOCxWdwy05MjbNjH4nG6HE06nLBZMzB g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10245"; a="248105547"
X-IronPort-AV: E=Sophos;i="5.88,336,1635231600"; d="scan'208";a="248105547"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2022 02:12:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,336,1635231600"; d="scan'208";a="698788260"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga005.jf.intel.com with ESMTP; 02 Feb 2022 02:12:22 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 2 Feb 2022 02:12:22 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 2 Feb 2022 02:12:22 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Wed, 2 Feb 2022 02:12:22 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Wed, 2 Feb 2022 02:12:21 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JuSniMrsXFenKGjFaKB6FWEzHVfqq02dB2pC/vk0O/lQtVzraEMxE3EtnIt8xXUxMwi5GjOqBjMoB1nu6DkJr68IPc6wGe6dWg0SP6SLD0Thd0GDhfdoY6TLu+31fcnljxPA8/WJ4vK3CDEX+vvyHkjpPM18ll2LCkMjRV98YoBd1jtNqWG3OFIr8ZVQbojhh5qa4q1kfJESf4f7DjbPO1z7oZ6qT7mCrCz9+GA2/KRMTONk2uRmrCUktw3EgaN1rjo4dhUJgGeskvSXnszBFl7eUjqFFxiCX056cST9W08vGH0ELDctuDnKCBITqcvJ1zWxbvBLkStulaqoQAALkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Qvl4D1Ua+nsXjE3Y68sa2M6xOzIVExNviTUUiUizziU=;
 b=lmpwvIRxoixNKKqj2fh62IoiO8fl854DJx4qeAPCCXUsNf/Bls+mtMv54nb1CGE8+57pVfr2APNB/rc03DshQzy1UwBIrMi8QrJwqQvtmVgRbb7n9IwBU8AuGONtnwjWldCIOoMLh0qX6MHVk0XJjkYowaMaVYb/aWvKhO2ujh03khk8z0xg0KXzsW3yFlfRQ7qX1as6a6twZNUqpEdORqm3uOE4VOPBM7oen4iK1RqiPQ5fm3Qp9uec75ael7cMioVr1KNiJneq/gTGFT/y6TWXIjnTvEVhmkwJexMR29DgmMR/e6PpzFiH/v46fgQwJtOwtif23WCnZiYD6XRDEQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from DM8PR11MB5621.namprd11.prod.outlook.com (2603:10b6:8:38::14) by
 DM6PR11MB4644.namprd11.prod.outlook.com (2603:10b6:5:28f::19) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4951.12; Wed, 2 Feb 2022 10:12:19 +0000
Received: from DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::fcc9:90bb:b249:e2e9]) by DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::fcc9:90bb:b249:e2e9%7]) with mapi id 15.20.4930.022; Wed, 2 Feb 2022
 10:12:19 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v2] iavf: Add usage of new
 virtchnl format to set default MAC
Thread-Index: AQHYDR25FAMeKqZebEmQ/Nw7KnNYJ6yAIGEA
Date: Wed, 2 Feb 2022 10:12:19 +0000
Message-ID: <DM8PR11MB5621C9FE4762286666BDCEDEAB279@DM8PR11MB5621.namprd11.prod.outlook.com>
References: <20220119101521.1212-1-mateusz.palczewski@intel.com>
In-Reply-To: <20220119101521.1212-1-mateusz.palczewski@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1982a559-dc00-434d-430b-08d9e6347f3a
x-ms-traffictypediagnostic: DM6PR11MB4644:EE_
x-microsoft-antispam-prvs: <DM6PR11MB4644152E101C8F61A0F28CFDAB279@DM6PR11MB4644.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:549;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: nU15SKBhi963zTh3W4C1qxp4tPbfOu/8USiXHOluDYT9dmSyCt1Yo2j//SkUjIdKKPCleWV34s20fnDjqqz7+1aKuPg+lU9o02j1dPXPPq/Ii2viaiO9P/24oUSelj4XSr+e0OalBJyOGcXbzJ2IGw3ZBU5QHjDVdTBledYhCR30UXZD+Xxy+blF3WvV1qjEJ/ZINdIiuDuGZ5vOUvW+aJg2tMMMANVCRIeb5+5w4G0hhkxWc5qc2O4diDvJDQzk8wMcyVIbAjBe7ZBqvL0W4Kxff9JU0HH9FTf3aa2JXT8ZDyanzo6sROtiFy/t520ogxpFtI09cJyGC7ejPvvFbYzYaTac2aOGKzl05rKqP7FhYaOuu0dzyC6s9/TCRJh+HKIpllnSeRL+UHn9JjK+gGzpmiYQqDRqH+l4DToAFLkQxxl2LCX+9E89G6tpT2bcDM0SAXiztkr0oJp4Ul8+4IWHtZRadWK5hqdDTyse5q/XjELNKgmylA05jBmTA9+vD+yEZJEpVEIbGbNhpQmFqpG9gzU+i9XT7YRR/ZC8S8N8JrbjaKKIb8XMjDsx2F3efMf9wvGnatc9Xg+ZVpPTij0cHH70LclEw7cDno1tvpquLsFOWgq3pG2SD6+vfXEtPnq7t6RaFNInCSh96tkHngGDM3bs0cF7/cx3PmVO8SLeQ/rQxWiaV1SJwHnDH6oRA0Kh5Dby7Z1e7DxCDlKubA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5621.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(8676002)(110136005)(8936002)(66946007)(64756008)(66556008)(76116006)(66476007)(66446008)(54906003)(38070700005)(316002)(86362001)(5660300002)(122000001)(38100700002)(4326008)(52536014)(82960400001)(107886003)(83380400001)(6506007)(9686003)(7696005)(53546011)(55016003)(26005)(186003)(508600001)(33656002)(71200400001)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?JD1br9Tz9wnLWyZO43MIG0cl+2EZ4phWzNW5Svkc4W5czyYRBT5UrtMxmhMg?=
 =?us-ascii?Q?Xysk8ypRdRVRWbrPnVzwa+qvORngNOH3995+Ec7DKuXfLGxQ98CRgEFMBuBn?=
 =?us-ascii?Q?jcWtCe5oMluFyCkIVrhet3xtJ4rO3135f1tlTw41tjwj2z6MTgg61WfpiKbs?=
 =?us-ascii?Q?1/FazZUN/6ZhB7f3wG67mDcLBztjzhKQPp9IlPott3wn/5TE5ruF43Pwa3CM?=
 =?us-ascii?Q?y7b7l6JHydy6NTUSyt/9C8nH2Go+NfXOTZhvQ+1w1XCc+zIh7MIa4F4PUIOt?=
 =?us-ascii?Q?fDAP1EAGisncHUvgBN87pZAm8rU93j520QAIdNuS2em74pyKQsoRf0aye9MR?=
 =?us-ascii?Q?3PRoK9QvhoSX8QHwj7EP60gWicFfQn+CD6geRB1wOI2Qmtl/mxvDT4NAuYco?=
 =?us-ascii?Q?7d72BhxZ1qcO0TmIlb3B0qfnz3P44ab2bFQ3ga4/3etvZYVhu37kUn1tLe7O?=
 =?us-ascii?Q?GELXwmqmGgygCeOiI8SuBCNlr2MCkw0OeHMawPln3hl3WPDQYAfMoZeM9Enc?=
 =?us-ascii?Q?BpF+pkHLw9dk8e0QOgWcZzI6PcqZpPbAxaqhu7tvvpb/2MXvg8jwncbxPQbY?=
 =?us-ascii?Q?cSCxDsCLYzRqbouRZ4/zUrBVROjLocZsPF19eEHnv0O2BiO8UHMwXQAOqmEP?=
 =?us-ascii?Q?Bn/icQxVDvT9c1+QswXgSWSvDiv2adiDkDxAS+qXtiCCukwoTdePoXU64tXo?=
 =?us-ascii?Q?nztFQ7jc0RT9pBwUq/uQBQ53Pr80uTBkYCYD03pPcv1XQhpb8t3AcQ9HGwCT?=
 =?us-ascii?Q?bwZ6z/BVzG1okk7tMQ/zveL/jNYddTdcCsXPYkqIFfgYNBGdN0YbcUhFUvFQ?=
 =?us-ascii?Q?lozeWAvml0KwvzQ60SD+HJDmoMo5EKTp7XWmVfb+cMf+HWELXlE38yn/VuQW?=
 =?us-ascii?Q?KaoqMzvfYxS0SU0bBR26xbaSyjih/O0rlskZtN/njPsH4lnM0LPkAzPqSUH9?=
 =?us-ascii?Q?2UMfP7SBgHpgGhAHl5vXxTUTVakyofXuIgZg3FIrXrbhOh4MOLW2Ef7ednm6?=
 =?us-ascii?Q?eWP+mXnS/PwmSzi/1W8FWiQPE7L1RQE/kOo5xFyJr2KokjBnqdNDHBLCO2Ew?=
 =?us-ascii?Q?EA7yP4qFt/WyJuEn+CLQoqlqbT767+kUjn0I88kKm6D14ToNzeTSbrz+kTj2?=
 =?us-ascii?Q?4Ej3KjMrkoIgsNOsNcCp4QBrUWzZpXxZt91dUxFf5BPpdS/2zlTDMr9L769f?=
 =?us-ascii?Q?7an4DFwKhe1TB4JgrPC3dvU3tIXSDW+LSa/aSecV5zmbAvCVFKvr7N0xbQcM?=
 =?us-ascii?Q?4WjQpmR9U66gGgdl/+kDgfEIQqo50x54A4vjVesG38gywmcChxl4a3CQrAD1?=
 =?us-ascii?Q?14Gta5ttR31KpPlXSbm8aSKvVlIEjjNKxWebT8zVT9OT4RqjEWtGEVLTHzGn?=
 =?us-ascii?Q?x5aQW8+kD01YpQk7oMgcceGtNVKmM5LJgVCRzpjeto3dRBTVM3X8UPzW9ddj?=
 =?us-ascii?Q?Zlp+sCHQFYpE14KBcrJzDj3/bxzKdsHIyd0iDqpEZ7pxn00q8/BTm3DpX/nC?=
 =?us-ascii?Q?W3BATRn5gCOGxfgbKRbn4yIJBaEJjNAM4gvFcugRleNBKDOKkR/edIW8p+A/?=
 =?us-ascii?Q?jDHwr7LDmXMav1gVNsHlIpUr0dUOrYjf8hsXM4AOo0zQl0j9x+ABot1bGd2j?=
 =?us-ascii?Q?W2pfOkxSIvxE1F+6KC1stGPpQ4YD6I2YN017YyYpwVsN66ZDgD4LwVdI+Xox?=
 =?us-ascii?Q?FmZG9Q=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5621.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1982a559-dc00-434d-430b-08d9e6347f3a
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Feb 2022 10:12:19.5442 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QZfB4SVRpi/VTFBaP3K1GhwuvzVJd5M1UhP78mzRB5i00+7/eddJL/fbhhnqDzr46V0B6sEs8ITLmLY9vQKcGfsh+wbWNFAlI6BiihjgFJg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4644
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] iavf: Add usage of new
 virtchnl format to set default MAC
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
Cc: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>,
 Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>, "Jagielski,
 Jedrzej" <jedrzej.jagielski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Mateusz Palczewski
> Sent: Wednesday, January 19, 2022 11:15 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Palczewski, Mateusz <mateusz.palczewski@intel.com>; Jagielski, Jedrzej
> <jedrzej.jagielski@intel.com>; Sylwester Dziedziuch
> <sylwesterx.dziedziuch@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v2] iavf: Add usage of new
> virtchnl format to set default MAC
> 
> Use new type field of VIRTCHNL_OP_ADD_ETH_ADDR and
> VIRTCHNL_OP_DEL_ETH_ADDR requests to indicate that VF wants to change
> its default MAC address.
> 
> Signed-off-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> ---
>  v2: Fixed function description to fit in 80 characters per line limit
> ---
>  drivers/net/ethernet/intel/iavf/iavf_main.c     | 12 +++++++++---
>  drivers/net/ethernet/intel/iavf/iavf_virtchnl.c | 16 ++++++++++++++++
>  2 files changed, 25 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c
> b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index ec4f85a..7fa29a8 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
