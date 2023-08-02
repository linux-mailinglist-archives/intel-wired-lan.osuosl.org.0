Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id AABB876C7A1
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Aug 2023 09:56:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4273D80CB8;
	Wed,  2 Aug 2023 07:56:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4273D80CB8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690962998;
	bh=WmuFTQB6J7CP/Yp3W9DBEvdXnvSah7aSKb2bw+wTsYU=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=l+pUypNR4XBgPf11vraZuE/yZkWUbqTX05QAQE7zSXc7B2cAttzvb/5lMux9WYHqU
	 NrwmmGvPMcqVWWMpeYWXpwci8XSsqPO8Nkd4QToIQbUHTj3yqM1k1stMtEw9lO7yw1
	 G/9HV4/tkvZe+Y4qubgDQRJPiOy0b1ZBR2k0REm+iHK+oUBncttN6/0wGlPMwekCEp
	 yhhECpHvOuehljFcsJc7qAKNFmZq7/18fzu38zduO0jItH8Y+CwJdiq9cuIJLANvVE
	 DB4G7hro3uI/9EALp4gfQHr+sjwslwSZ34YrBEogXWCXgF+0Mm2LUxgyQ7/LgwJZhg
	 UgvdglhAGrEnA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iypwS9AZj1nL; Wed,  2 Aug 2023 07:56:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6956782010;
	Wed,  2 Aug 2023 07:56:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6956782010
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6AE8D1BF3E8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Aug 2023 07:56:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id F3D0081FF7
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Aug 2023 07:56:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F3D0081FF7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1yFBYc0qEnhj for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Aug 2023 07:56:04 +0000 (UTC)
Received: from mgamail.intel.com (unknown [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D0DB381F72
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Aug 2023 07:56:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D0DB381F72
X-IronPort-AV: E=McAfee;i="6600,9927,10789"; a="359554243"
X-IronPort-AV: E=Sophos;i="6.01,248,1684825200"; d="scan'208";a="359554243"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2023 00:56:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10789"; a="678971159"
X-IronPort-AV: E=Sophos;i="6.01,248,1684825200"; d="scan'208";a="678971159"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga003.jf.intel.com with ESMTP; 02 Aug 2023 00:56:03 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 2 Aug 2023 00:56:02 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 2 Aug 2023 00:56:02 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 2 Aug 2023 00:56:02 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 2 Aug 2023 00:56:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gAgiuyu8Gc5bsFDA0qUvT9fgbC68uq4mnatUPbePyLGpCo8NlGYO5kqp9M6rrpMSkcSaS4cACJC3RhJgjpwJQ8EEa5od5Igxi+m9GDpkdoUMQSkOZctri1IFWpCkZZX7iVpZ7v8kO8WYeco/xOSDD+Ysg57biSIrg94T2mVtVdSh0eO4h+0fhD5nB3CbH5LCkH5sQd3musN3JZm6ctZBZQfkGXmO3RRfNcuUISIdb5YqNkRWk9uXGIiiu9+nEh/jGiR8CPFMIZfZne330YVekRohHcUJ6Vxp/BAHDbDMIL68CUZXid4THzyIuYDIn3VGdLD27RbxepzgXox+E2WvYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iqEHwPsgsr2TtkirVIE5+pmrhoYkNEY69R89iqGt8k0=;
 b=GCGiqOQ0aBkQMXVb2elc6kkTTSPIQrtEy0dt4AXCaE6iTxUr4qV7ZSVPQP2zQrqrAT0txNJTkg5+2LczMvY9pnFjzS0VtaD2HwRvRLpQiBqRuBpRIBEDmujTxlq3qdby9XBHg+fgA6OSi77vUl5X78u5VPyy14k3wIH7w/LCCRfjt595ifrmgby0qq6lmxI6grkxNvA8yD/Zv9cWioWmP/ez79jDbKPh6suHa7Va+xoIZY7pM9jcOSbUP+OfpHYd6og1/PmPW+89TJX5VOHrjLVFEm3UVjMAlPSzjloP7iHrclCheeZLirAAiNdN086rbBwQkwnWdw7n/GwLUUkVAw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3723.namprd11.prod.outlook.com (2603:10b6:5:13f::25)
 by PH0PR11MB5657.namprd11.prod.outlook.com (2603:10b6:510:ee::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.45; Wed, 2 Aug
 2023 07:55:58 +0000
Received: from DM6PR11MB3723.namprd11.prod.outlook.com
 ([fe80::1e9e:bb95:66b2:e3f1]) by DM6PR11MB3723.namprd11.prod.outlook.com
 ([fe80::1e9e:bb95:66b2:e3f1%4]) with mapi id 15.20.6631.045; Wed, 2 Aug 2023
 07:55:58 +0000
From: "Guo, Junfeng" <junfeng.guo@intel.com>
To: ivecera <ivecera@redhat.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2 02/15] ice: init imem table
 for parser
Thread-Index: AQHZl3FOtYAT078BFEOFJA0Eo3RTL6/JA7IAgA3dD7A=
Date: Wed, 2 Aug 2023 07:55:57 +0000
Message-ID: <DM6PR11MB372330301635F94A420222E2E70BA@DM6PR11MB3723.namprd11.prod.outlook.com>
References: <20230605054641.2865142-1-junfeng.guo@intel.com>
 <20230605054641.2865142-3-junfeng.guo@intel.com>
 <6142fcbd-c72e-078a-3194-9a3fab8ed9d2@redhat.com>
In-Reply-To: <6142fcbd-c72e-078a-3194-9a3fab8ed9d2@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB3723:EE_|PH0PR11MB5657:EE_
x-ms-office365-filtering-correlation-id: a43032be-47eb-4e94-5086-08db932de7d2
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5ej6q+2M2MFq/x+5NbnO6QZ421PsNnO/lKaxOI4Jua9er0yHsMIsbfUV6iBcIzJDjB1s5+LBbL/IzPGFIWgrJoVp0RhJ5YC1LTWzUN8XS4wfxKj35MmhWlE1FZFtZFGa/lZ3cJfd2l1NA8/f7Mv6VS7wlzNwiffIbsIj9Y9j8QBc0AK89zTnnmRYLVOGmdkrUr+xqLnS2bc/EKyFQxwK9Jxy7flulL5aCuESTbZBHCiSQhPhcV3VdpzoDURaZEpNO7rfXP5Tysjvjjeej0AFQwtoVCwcR94nwLzSOV+uEPNEcu4WSm9QU3ToseEpqr/LjLBJkgYx8fjEGGsLwCMcIgKt6RnAzSh6KG+x9ZllHnvLD1UrOXyVY1klGVHwGSJbu5aA1jbrtb7E8L+XqhOXFJw0j6qpvy9mTYdssL5nD8XssK76gCac8SOElEuVGHMyeO1pzFc92plFovi8z9X/et5FebXoBGRPZQFSzF5rpzX+SHuVblZXBrGGPxfHEzLFXSD94A4ymHS5aixGA679xZPmu4srqA2dn/3CCruWplE/kZPUxQ1zi5UN7nHrZ3OwBCgta2+TsjmpZXpEqu+qqpilJ8DWm+jE9RjrOq+PvvsojSzpOp+NTYUSM9LNaMZj
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3723.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(376002)(366004)(136003)(396003)(346002)(451199021)(55016003)(186003)(9686003)(316002)(86362001)(478600001)(122000001)(54906003)(110136005)(38100700002)(76116006)(71200400001)(66946007)(66556008)(66476007)(66446008)(33656002)(64756008)(7696005)(4326008)(82960400001)(6506007)(53546011)(41300700001)(26005)(52536014)(8676002)(5660300002)(8936002)(30864003)(2906002)(38070700005)(83380400001)(579004)(559001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?IeJfzJe7Ny37qb0t33+Rg7HJk/R1rApLm879kuk4nqlgYTR9R8d5P+/IAYGY?=
 =?us-ascii?Q?Pr4OmZQmFYEd7n9EoRLpLJMhRgWbeMPUYby8YbVoSm58oF+tcYIqPWeX9iXG?=
 =?us-ascii?Q?Eq0Akf6uUt6vs28DEKwe1VYRe9GOvThgPgSrL92LoZe5XzcteXUKyztUB9Hj?=
 =?us-ascii?Q?+tkQdJoypCYEJgx9RjaWl+L71d0wwiyIedr5E1DvrI6iSy806NKjADVWnLld?=
 =?us-ascii?Q?v0aUH3BlCR6xGx3IS+m+NiXUidV0XkGDFfYTuRTKERr3Cy/oGNhFCf8HzyPt?=
 =?us-ascii?Q?eUaGl6nkaR5XF/o9e6bre/w1OHjjxed+f+yRN3X6WieGoHHSDz3nTJLErHn3?=
 =?us-ascii?Q?kwGZp61bqYRAipEawX0AZkFPBoRkzpB8UETpsndUbnGfoxJCGkHAcXCDwHxu?=
 =?us-ascii?Q?dbsbLyhQmlhrWtkKbxwEEc8LMLEEteVttMWulBte4jXH7FxRxwGjHlQRavth?=
 =?us-ascii?Q?SYt33nNk6V6QH5570V/7JxM0gjkQuVtcFoo0Tmslpil0oKyrOvg71rDOSLNw?=
 =?us-ascii?Q?7T7GCLHQIb2jCZW/JVBoCusxJNuhoOeFg0W7uqzfjfA7KJByc06J14RoUIwn?=
 =?us-ascii?Q?5MrY4WixmEpPdbH2k88TUC5HOIGzmW8Dzv/qOZ71j2642kQqoaFUuzNNm0uO?=
 =?us-ascii?Q?hwkyXc5kp13CT87VLI7roEmc58U9tAIHSbv+wbppaaQDAymdq0YrzCXRm7BX?=
 =?us-ascii?Q?JcVNzfK37UR8NwEWjcMu2dOqBM6zClN3nYT4r7rmBTYoPgkPUI4Wzf+ZISMS?=
 =?us-ascii?Q?OcAmRcpHlMKw3MO2kH2TtTFaAJgp4pSljUhL6CuY1RWUb7Kr76GJl3Vbtm/N?=
 =?us-ascii?Q?bLWLvbYb8DuA0UcBtfxuFew85PCkfKVDrdz4d1Zor7Ky7HzIVn+QP0LgAo4I?=
 =?us-ascii?Q?nD/Uve3O24ZstlDAUlpMK0/s359JvmdNOKMWy578RFmoALj+UNaFJyWw2pnU?=
 =?us-ascii?Q?Fz850Q+fySCjyaoptsfbTEuZW6vR7GUz5cE5zM6ZRpEKFlQeY8tqcanL7fBW?=
 =?us-ascii?Q?xoU5Q27/QVpRmPxxn1xCTM3jmI6P3jJZmCzgQotf8eUpJzW52JLYO84vk2AY?=
 =?us-ascii?Q?makBqDrDruVx/sr19YxUPaii8aR3fvm8kJmdiKnpZuCqivcnsOHXz3K8B+aN?=
 =?us-ascii?Q?2kOOn2H4SQuP+wOF0DIuZotoeegd4B4hX7LXaXIFQRA7gtLf9l2u7Ofmx8kA?=
 =?us-ascii?Q?UZzomGlhQPlZXB68STWmfZZX9kqF6AlWZ60KBNDjxqWJ3O67w1o2HlJELFwB?=
 =?us-ascii?Q?xw6IzEAv+zvLgQj9BXkLSMnAsyxxCZCYaUoVZqiPJU5DysvPCoOR2Vb6+KkP?=
 =?us-ascii?Q?pvj/XE+tf51vqw0BrTpyZzUaywtSxagNPkNWFVNBniCFDI1fj2WXDdgh4dBS?=
 =?us-ascii?Q?ApGyBmXR15isqe24hL5m+EdP4YcdBOEI5ZTYFP16dP/NEwZYJ0AXyBygu4KS?=
 =?us-ascii?Q?XuP/hFhv2/8xdSW+6A/6m9P8NlNt1tHGfpfFE3lSnnWl/DKUgYqXyB4aPxZe?=
 =?us-ascii?Q?3fHjKS51E7Q24ij7elwJmRwP3bmxInSDVBTWv8Em/K30f9f9l1i+grdFV6MY?=
 =?us-ascii?Q?C7/b/gsOSOco5/CKXEgKswPpUJkMbavf8Lnzc2kw?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3723.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a43032be-47eb-4e94-5086-08db932de7d2
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Aug 2023 07:55:57.4680 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: r7Z80I5zHJ/CmvFa3mkW/Ii7ji9Tmf8DUL+AJNNBC2aMHxHVGXsb1IQuK0VfuuXxL2ViGwSkxrR3roY1VD12mA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5657
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690962963; x=1722498963;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ywS99WCFRDaNdCRH6HFz3QYYSm2/2x57W9NRpeT+hWo=;
 b=L+rX/ZXX2kvE/u4hfmkF/r1DI1onc+rj1Wt/GDqH9ayHx3HlG4WrIExS
 DQ+YimkT9GO37qYAgEZkYKpy+7H10qTBvDEsc4PcFF3jgPD4XFcxwETuv
 87uoq2lnNjWzGXc4EQW8Yu6IF1MKcNmbASu3PB1zdt2Eb3bkHKhLWEI55
 L2lPrXW+2djGnziPlgS77mEN3cap7gphx4fb7fSMJqZiNGJ/aMmOD0572
 pCUtwBjCltKGoji7Hiq3Mt0gy2riybqMpyMywhzTuvtHXPEs9x15dOoeZ
 pOuqiZ16a4hVrl+np60f+z+HFL3OEgQvIWxn1Bl6Ds65MuMNSx9WKS1MU
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=L+rX/ZXX
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 02/15] ice: init imem
 table for parser
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
Cc: "Zhang, Qi Z" <qi.z.zhang@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Ivan Vecera <ivecera@redhat.com>
> Sent: Monday, July 24, 2023 18:26
> To: Guo, Junfeng <junfeng.guo@intel.com>; intel-wired-
> lan@lists.osuosl.org
> Cc: Zhang, Qi Z <qi.z.zhang@intel.com>; mschmidt
> <mschmidt@redhat.com>; poros <poros@redhat.com>
> Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 02/15] ice: init imem
> table for parser
> 
> See inline comments...
> 
> On 05. 06. 23 7:46, Junfeng Guo wrote:
> > Parse DDP section ICE_SID_RXPARSER_IMEM into an arrary of
> > struct ice_imem_item.
> >
> > Signed-off-by: Junfeng Guo <junfeng.guo@intel.com>
> > ---
> >   drivers/net/ethernet/intel/ice/ice_imem.c     | 250
> ++++++++++++++++++
> >   drivers/net/ethernet/intel/ice/ice_imem.h     | 108 ++++++++
> >   drivers/net/ethernet/intel/ice/ice_parser.c   | 102 +++++++
> >   drivers/net/ethernet/intel/ice/ice_parser.h   |   3 +
> >   .../net/ethernet/intel/ice/ice_parser_util.h  |  24 ++
> >   drivers/net/ethernet/intel/ice/ice_type.h     |   1 +
> >   6 files changed, 488 insertions(+)
> >   create mode 100644 drivers/net/ethernet/intel/ice/ice_imem.c
> >   create mode 100644 drivers/net/ethernet/intel/ice/ice_imem.h
> >   create mode 100644 drivers/net/ethernet/intel/ice/ice_parser_util.h
> >
> > diff --git a/drivers/net/ethernet/intel/ice/ice_imem.c
> b/drivers/net/ethernet/intel/ice/ice_imem.c
> > new file mode 100644
> > index 000000000000..2bd48f080326
> > --- /dev/null
> > +++ b/drivers/net/ethernet/intel/ice/ice_imem.c
> > @@ -0,0 +1,250 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/* Copyright (C) 2018-2023 Intel Corporation */
> > +
> > +#include "ice_common.h"
> > +#include "ice_parser_util.h"
> > +
> > +#define ICE_IMEM_TABLE_SIZE 192
> > +
> > +static void _imem_bst_bm_dump(struct ice_hw *hw, struct
> ice_bst_main *bm)
> > +{
> > +	dev_info(ice_hw_to_dev(hw), "boost main:\n");
> > +	dev_info(ice_hw_to_dev(hw), "\tal0 = %d\n", bm->al0);
> > +	dev_info(ice_hw_to_dev(hw), "\tal1 = %d\n", bm->al1);
> > +	dev_info(ice_hw_to_dev(hw), "\tal2 = %d\n", bm->al2);
> > +	dev_info(ice_hw_to_dev(hw), "\tpg = %d\n", bm->pg);
> > +}
> > +
> > +static void _imem_bst_kb_dump(struct ice_hw *hw, struct
> ice_bst_keybuilder *kb)
> > +{
> > +	dev_info(ice_hw_to_dev(hw), "boost key builder:\n");
> > +	dev_info(ice_hw_to_dev(hw), "\tpriority = %d\n", kb->priority);
> > +	dev_info(ice_hw_to_dev(hw), "\ttsr_ctrl = %d\n", kb->tsr_ctrl);
> > +}
> > +
> > +static void _imem_np_kb_dump(struct ice_hw *hw, struct
> ice_np_keybuilder *kb)
> > +{
> > +	dev_info(ice_hw_to_dev(hw), "next proto key builder:\n");
> > +	dev_info(ice_hw_to_dev(hw), "\tops = %d\n", kb->ops);
> > +	dev_info(ice_hw_to_dev(hw), "\tstart_or_reg0 = %d\n",
> > +		 kb->start_or_reg0);
> > +	dev_info(ice_hw_to_dev(hw), "\tlen_or_reg1 = %d\n", kb-
> >len_or_reg1);
> > +}
> > +
> > +static void _imem_pg_kb_dump(struct ice_hw *hw, struct
> ice_pg_keybuilder *kb)
> > +{
> > +	dev_info(ice_hw_to_dev(hw), "parse graph key builder:\n");
> > +	dev_info(ice_hw_to_dev(hw), "\tflag0_ena = %d\n", kb-
> >flag0_ena);
> > +	dev_info(ice_hw_to_dev(hw), "\tflag1_ena = %d\n", kb-
> >flag1_ena);
> > +	dev_info(ice_hw_to_dev(hw), "\tflag2_ena = %d\n", kb-
> >flag2_ena);
> > +	dev_info(ice_hw_to_dev(hw), "\tflag3_ena = %d\n", kb-
> >flag3_ena);
> > +	dev_info(ice_hw_to_dev(hw), "\tflag0_idx = %d\n", kb-
> >flag0_idx);
> > +	dev_info(ice_hw_to_dev(hw), "\tflag1_idx = %d\n", kb-
> >flag1_idx);
> > +	dev_info(ice_hw_to_dev(hw), "\tflag2_idx = %d\n", kb-
> >flag2_idx);
> > +	dev_info(ice_hw_to_dev(hw), "\tflag3_idx = %d\n", kb-
> >flag3_idx);
> > +	dev_info(ice_hw_to_dev(hw), "\talu_reg_idx = %d\n", kb-
> >alu_reg_idx);
> > +}
> > +
> > +static void _imem_alu_dump(struct ice_hw *hw, struct ice_alu *alu, int
> index)
> > +{
> > +	dev_info(ice_hw_to_dev(hw), "alu%d:\n", index);
> > +	dev_info(ice_hw_to_dev(hw), "\topc = %d\n", alu->opc);
> > +	dev_info(ice_hw_to_dev(hw), "\tsrc_start = %d\n", alu-
> >src_start);
> > +	dev_info(ice_hw_to_dev(hw), "\tsrc_len = %d\n", alu->src_len);
> > +	dev_info(ice_hw_to_dev(hw), "\tshift_xlate_select = %d\n",
> > +		 alu->shift_xlate_select);
> > +	dev_info(ice_hw_to_dev(hw), "\tshift_xlate_key = %d\n",
> > +		 alu->shift_xlate_key);
> > +	dev_info(ice_hw_to_dev(hw), "\tsrc_reg_id = %d\n", alu-
> >src_reg_id);
> > +	dev_info(ice_hw_to_dev(hw), "\tdst_reg_id = %d\n", alu-
> >dst_reg_id);
> > +	dev_info(ice_hw_to_dev(hw), "\tinc0 = %d\n", alu->inc0);
> > +	dev_info(ice_hw_to_dev(hw), "\tinc1 = %d\n", alu->inc1);
> > +	dev_info(ice_hw_to_dev(hw), "\tproto_offset_opc = %d\n",
> > +		 alu->proto_offset_opc);
> > +	dev_info(ice_hw_to_dev(hw), "\tproto_offset = %d\n",
> > +		 alu->proto_offset);
> > +	dev_info(ice_hw_to_dev(hw), "\tbranch_addr = %d\n", alu-
> >branch_addr);
> > +	dev_info(ice_hw_to_dev(hw), "\timm = %d\n", alu->imm);
> > +	dev_info(ice_hw_to_dev(hw), "\tdst_start = %d\n", alu-
> >dst_start);
> > +	dev_info(ice_hw_to_dev(hw), "\tdst_len = %d\n", alu->dst_len);
> > +	dev_info(ice_hw_to_dev(hw), "\tflags_extr_imm = %d\n",
> > +		 alu->flags_extr_imm);
> > +	dev_info(ice_hw_to_dev(hw), "\tflags_start_imm= %d\n",
> > +		 alu->flags_start_imm);
> > +}
> > +
> > +/**
> > + * ice_imem_dump - dump an imem item info
> > + * @hw: pointer to the hardware structure
> > + * @item: imem item to dump
> > + */
> > +void ice_imem_dump(struct ice_hw *hw, struct ice_imem_item *item)
> > +{
> > +	dev_info(ice_hw_to_dev(hw), "index = %d\n", item->idx);
> > +	_imem_bst_bm_dump(hw, &item->b_m);
> > +	_imem_bst_kb_dump(hw, &item->b_kb);
> > +	dev_info(ice_hw_to_dev(hw), "pg priority = %d\n", item->pg);
> > +	_imem_np_kb_dump(hw, &item->np_kb);
> > +	_imem_pg_kb_dump(hw, &item->pg_kb);
> > +	_imem_alu_dump(hw, &item->alu0, 0);
> > +	_imem_alu_dump(hw, &item->alu1, 1);
> > +	_imem_alu_dump(hw, &item->alu2, 2);
> > +}
> > +
> > +/** The function parses a 4 bits Boost Main with below format:
> > + *  BIT 0: ALU 0 (bm->alu0)
> > + *  BIT 1: ALU 1 (bm->alu1)
> > + *  BIT 2: ALU 2 (bm->alu2)
> > + *  BIT 3: Parge Graph (bm->pg)
> > + */
> > +static void _imem_bm_init(struct ice_bst_main *bm, u8 data)
> > +{
> > +	bm->al0 = (data & 0x1) != 0;
> > +	bm->al1 = (data & 0x2) != 0;
> > +	bm->al2 = (data & 0x4) != 0;
> > +	bm->pg = (data & 0x8) != 0;
> > +}
> 
> Please introduce mask macros with values BIT(0), BIT(1)... and use them
> here instead of magic hardcoded values.

Sure, make sense! 

The detailed info for each BIT has been commented before the function.
It would be better to use BIT() for one bit select.
But there seems no macro for bit range in kernel. Is there standard usage for this purpose?

Will update in the coming version. Thanks!

> 
> > +
> > +/** The function parses a 10 bits Boost Main Build with below format:
> > + *  BIT 0-7:	Priority (bkb->priority)
> > + *  BIT 8:	TSR Control (bkb->tsr_ctrl)
> > + *  BIT 9:	Reserved
> > + */
> > +static void _imem_bkb_init(struct ice_bst_keybuilder *bkb, u16 data)
> > +{
> > +	bkb->priority = (u8)(data & 0xff);
> > +	bkb->tsr_ctrl = (data & 0x100) != 0;
> > +}
> 
> Ditto...

Sure, thanks!

> 
> > +
> > +/** The function parses a 18 bits Next Protocol Key Build with below
> format:
> > + *  BIT 0-1:	Opcode kb->ops
> > + *  BIT 2-9:	Start / Reg 0 (kb->start_or_reg0)
> > + *  BIT 10-17:	Length / Reg 1 (kb->len_or_reg1)
> > + */
> > +static void _imem_npkb_init(struct ice_np_keybuilder *kb, u32 data)
> > +{
> > +	kb->ops = (u8)(data & 0x3);
> > +	kb->start_or_reg0 = (u8)((data >> 2) & 0xff);
> > +	kb->len_or_reg1 = (u8)((data >> 10) & 0xff);
> > +}
> 
> Ditto... the same also for shift values.

Sure, thanks!

> 
> > +
> > +/** The function parses a 35 bits Parse Graph Key Build with below
> format:
> > + *  BIT 0:	Flag 0 Enable (kb->flag0_ena)
> > + *  BIT 1-6:	Flag 0 Index (kb->flag0_idx)
> > + *  BIT 7:	Flag 1 Enable (kb->flag1_ena)
> > + *  BIT 8-13:	Flag 1 Index (kb->flag1_idx)
> > + *  BIT 14:	Flag 2 Enable (kb->flag2_ena)
> > + *  BIT 15-20:	Flag 2 Index (kb->flag2_idx)
> > + *  BIT 21:	Flag 3 Enable (kb->flag3_ena)
> > + *  BIT 22-27:	Flag 3 Index (kb->flag3_idx)
> > + *  BIT 28-34:	ALU Register Index (kb->alu_reg_idx)
> > + */
> > +static void _imem_pgkb_init(struct ice_pg_keybuilder *kb, u64 data)
> > +{
> > +	kb->flag0_ena = (data & 0x1) != 0;
> > +	kb->flag0_idx = (u8)((data >> 1) & 0x3f);
> > +	kb->flag1_ena = ((data >> 7) & 0x1) != 0;
> > +	kb->flag1_idx = (u8)((data >> 8) & 0x3f);
> > +	kb->flag2_ena = ((data >> 14) & 0x1) != 0;
> > +	kb->flag2_idx = (u8)((data >> 15) & 0x3f);
> > +	kb->flag3_ena = ((data >> 21) & 0x1) != 0;
> > +	kb->flag3_idx = (u8)((data >> 22) & 0x3f);
> > +	kb->alu_reg_idx = (u8)((data >> 28) & 0x7f);
> > +}
> 
> ...

Sure, thanks!

> 
> > +
> > +/** The function parses a 96 bits ALU entry with below format:
> > + *  BIT 0-5:	Opcode (alu->opc)
> > + *  BIT 6-13:	Source Start (alu->src_start)
> > + *  BIT 14-18:	Source Length (alu->src_len)
> > + *  BIT 19:	Shift/Xlate Select (alu->shift_xlate_select)
> > + *  BIT 20-23:	Shift/Xlate Key (alu->shift_xlate_key)
> > + *  BIT 24-30:	Source Register ID (alu->src_reg_id)
> > + *  BIT 31-37:	Dest. Register ID (alu->dst_reg_id)
> > + *  BIT 38:	Inc0 (alu->inc0)
> > + *  BIT 39:	Inc1:(alu->inc1)
> > + *  BIT 40:41	Protocol Offset Opcode (alu->proto_offset_opc)
> > + *  BIT 42:49	Protocol Offset (alu->proto_offset)
> > + *  BIT 50:57	Branch Address (alu->branch_addr)
> > + *  BIT 58:73	Immediate (alu->imm)
> > + *  BIT 74	Dedicated Flags Enable (alu->dedicate_flags_ena)
> > + *  BIT 75:80	Dest. Start (alu->dst_start)
> > + *  BIT 81:86	Dest. Length (alu->dst_len)
> > + *  BIT 87	Flags Extract Imm. (alu->flags_extr_imm)
> > + *  BIT 88:95	Flags Start/Immediate (alu->flags_start_imm)
> > + *
> > + *  NOTE: the first 5 bits are skipped as the start bit is not
> > + *  byte aligned.
> > + */
> > +static void _imem_alu_init(struct ice_alu *alu, u8 *data)
> > +{
> > +	u64 d64 = *(u64 *)data >> 5;
> > +
> > +	alu->opc = (enum ice_alu_opcode)(d64 & 0x3f);
> > +	alu->src_start = (u8)((d64 >> 6) & 0xff);
> > +	alu->src_len = (u8)((d64 >> 14) & 0x1f);
> > +	alu->shift_xlate_select = ((d64 >> 19) & 0x1) != 0;
> > +	alu->shift_xlate_key = (u8)((d64 >> 20) & 0xf);
> > +	alu->src_reg_id = (u8)((d64 >> 24) & 0x7f);
> > +	alu->dst_reg_id = (u8)((d64 >> 31) & 0x7f);
> > +	alu->inc0 = ((d64 >> 38) & 0x1) != 0;
> > +	alu->inc1 = ((d64 >> 39) & 0x1) != 0;
> > +	alu->proto_offset_opc = (u8)((d64 >> 40) & 0x3);
> > +	alu->proto_offset = (u8)((d64 >> 42) & 0xff);
> > +	alu->branch_addr = (u8)((d64 >> 50) & 0xff);
> > +
> > +	d64 = *(u64 *)(&data[7]) >> 7;
> 
> What is at offset 7 and why shift 7?? Use corresponding macros please.

This is just calculated numbers to get target bits.
And the first 5 bits are skipped due to not byte aligned.
Thus, 8 * 7 + 7 - 5 = 58, which is just aligned with BIT 58:73 for Immediate (alu->imm).

Sure, it would be better to use macros for this. Thanks!

> 
> > +
> > +	alu->imm = (u16)(d64 & 0xffff);
> > +	alu->dedicate_flags_ena = ((d64 >> 16) & 0x1) != 0;
> > +	alu->dst_start = (u8)((d64 >> 17) & 0x3f);
> > +	alu->dst_len = (u8)((d64 >> 23) & 0x3f);
> > +	alu->flags_extr_imm = ((d64 >> 29) & 0x1) != 0;
> > +	alu->flags_start_imm = (u8)((d64 >> 30) & 0xff);
> > +}
> > +
> > +/** The function parses a 384 bits IMEM entry with below format:
> > + *  BIT 0-3:	Boost Main (ii->b_m)
> > + *  BIT 4-13:	Boost Key Build (ii->b_kb)
> > + *  BIT 14-15:	PG Priority (ii->pg)
> > + *  BIT 16-33:	Next Proto Key Build (ii->np_kb)
> > + *  BIT 34-68:	PG Key Build (ii->pg_kb)
> > + *  BIT 69-164:	ALU0 (ii->alu0)
> > + *  BIT 165-260:ALU1 (ii->alu1)
> > + *  BIT 261-356:ALU2 (ii->alu2)
> > + *  BIT 357-383:Reserved
> > + */
> > +static void _imem_parse_item(struct ice_hw *hw, u16 idx, void *item,
> > +			     void *data, int size)
> > +{
> > +	struct ice_imem_item *ii = item;
> > +	u8 *buf = data;
> > +
> > +	ii->idx = idx;
> > +
> > +	_imem_bm_init(&ii->b_m, buf[0]);
> > +	_imem_bkb_init(&ii->b_kb, *((u16 *)(&buf[0])) >> 4);
> > +
> > +	ii->pg = (u8)((buf[1] & 0xc0) >> 6);
> > +	_imem_npkb_init(&ii->np_kb, *((u32 *)(&buf[2])));
> > +	_imem_pgkb_init(&ii->pg_kb, *((u64 *)(&buf[2])) >> 18);
> > +	_imem_alu_init(&ii->alu0, &buf[8]);
> > +	_imem_alu_init(&ii->alu1, &buf[20]);
> > +	_imem_alu_init(&ii->alu2, &buf[32]);
> > +
> > +	if (hw->debug_mask & ICE_DBG_PARSER)
> > +		ice_imem_dump(hw, ii);
> > +}
> 
> The same also here... bits description in the comments are nice but
> please use macros or enums also in the code.

Sure, thanks!

> 
> > +
> > +/**
> > + * ice_imem_table_get - create an imem table
> > + * @hw: pointer to the hardware structure
> > + */
> > +struct ice_imem_item *ice_imem_table_get(struct ice_hw *hw)
> > +{
> > +	return (struct ice_imem_item *)
> > +		ice_parser_create_table(hw, ICE_SID_RXPARSER_IMEM,
> > +					sizeof(struct ice_imem_item),
> > +					ICE_IMEM_TABLE_SIZE,
> > +					ice_parser_sect_item_get,
> > +					_imem_parse_item);
> > +}
> > diff --git a/drivers/net/ethernet/intel/ice/ice_imem.h
> b/drivers/net/ethernet/intel/ice/ice_imem.h
> > new file mode 100644
> > index 000000000000..b6b923d67112
> > --- /dev/null
> > +++ b/drivers/net/ethernet/intel/ice/ice_imem.h
> > @@ -0,0 +1,108 @@
> > +/* SPDX-License-Identifier: GPL-2.0 */
> > +/* Copyright (C) 2018-2023 Intel Corporation */
> > +
> > +#ifndef _ICE_IMEM_H_
> > +#define _ICE_IMEM_H_
> > +
> > +struct ice_bst_main {
> > +	bool al0;
> > +	bool al1;
> > +	bool al2;
> > +	bool pg;
> > +};
> 
> Please use more descriptive names.

These names are just from the spec of the hardware.
Actually there is no more meaningful description about them.
These functions are only used to get value from certain bits.
Better to keep the names here to aligned with the spec.
And we will try if we can add some doc here. Thanks!

> 
> > +
> > +struct ice_bst_keybuilder {
> > +	u8 priority;
> > +	bool tsr_ctrl;
> > +};
> > +
> > +struct ice_np_keybuilder {
> > +	u8 ops;
> > +	u8 start_or_reg0;
> > +	u8 len_or_reg1;
> > +};
> > +
> > +struct ice_pg_keybuilder {
> > +	bool flag0_ena;
> > +	bool flag1_ena;
> > +	bool flag2_ena;
> > +	bool flag3_ena;
> > +	u8 flag0_idx;
> > +	u8 flag1_idx;
> > +	u8 flag2_idx;
> > +	u8 flag3_idx;
> > +	u8 alu_reg_idx;
> > +};
> 
> What are flag0..3? More descriptive names should be fine... If they are
> multipurpose you can use anonymous union of bools with context
> dependent
> field names inside.

Same here. There is no more meaningful description in the spec.
Better to keep these names, in case anyone want to lookup them in the spec.
But we will try if we can add some doc here. 
Thanks!

> 
> > +
> > +enum ice_alu_opcode {
> > +	ICE_ALU_PARK = 0,
> > +	ICE_ALU_MOV_ADD = 1,
> > +	ICE_ALU_ADD = 2,
> > +	ICE_ALU_MOV_AND = 4,
> > +	ICE_ALU_AND = 5,
> > +	ICE_ALU_AND_IMM = 6,
> > +	ICE_ALU_MOV_OR = 7,
> > +	ICE_ALU_OR = 8,
> > +	ICE_ALU_MOV_XOR = 9,
> > +	ICE_ALU_XOR = 10,
> > +	ICE_ALU_NOP = 11,
> > +	ICE_ALU_BR = 12,
> > +	ICE_ALU_BREQ = 13,
> > +	ICE_ALU_BRNEQ = 14,
> > +	ICE_ALU_BRGT = 15,
> > +	ICE_ALU_BRLT = 16,
> > +	ICE_ALU_BRGEQ = 17,
> > +	ICE_ALU_BRLEG = 18,
> > +	ICE_ALU_SETEQ = 19,
> > +	ICE_ALU_ANDEQ = 20,
> > +	ICE_ALU_OREQ = 21,
> > +	ICE_ALU_SETNEQ = 22,
> > +	ICE_ALU_ANDNEQ = 23,
> > +	ICE_ALU_ORNEQ = 24,
> > +	ICE_ALU_SETGT = 25,
> > +	ICE_ALU_ANDGT = 26,
> > +	ICE_ALU_ORGT = 27,
> > +	ICE_ALU_SETLT = 28,
> > +	ICE_ALU_ANDLT = 29,
> > +	ICE_ALU_ORLT = 30,
> > +	ICE_ALU_MOV_SUB = 31,
> > +	ICE_ALU_SUB = 32,
> > +	ICE_ALU_INVALID = 64,
> > +};
> > +
> > +struct ice_alu {
> > +	enum ice_alu_opcode opc;
> > +	u8 src_start;
> > +	u8 src_len;
> > +	bool shift_xlate_select;
> > +	u8 shift_xlate_key;
> > +	u8 src_reg_id;
> > +	u8 dst_reg_id;
> > +	bool inc0;
> > +	bool inc1;
> > +	u8 proto_offset_opc;
> > +	u8 proto_offset;
> > +	u8 branch_addr;
> > +	u16 imm;
> > +	bool dedicate_flags_ena;
> > +	u8 dst_start;
> > +	u8 dst_len;
> > +	bool flags_extr_imm;
> > +	u8 flags_start_imm;
> > +};
> > +
> > +struct ice_imem_item {
> > +	u16 idx;
> > +	struct ice_bst_main b_m;
> > +	struct ice_bst_keybuilder b_kb;
> > +	u8 pg;
> > +	struct ice_np_keybuilder np_kb;
> > +	struct ice_pg_keybuilder pg_kb;
> > +	struct ice_alu alu0;
> > +	struct ice_alu alu1;
> > +	struct ice_alu alu2;
> > +};
> > +
> > +void ice_imem_dump(struct ice_hw *hw, struct ice_imem_item *item);
> > +struct ice_imem_item *ice_imem_table_get(struct ice_hw *hw);
> > +#endif /* _ICE_IMEM_H_ */
> > diff --git a/drivers/net/ethernet/intel/ice/ice_parser.c
> b/drivers/net/ethernet/intel/ice/ice_parser.c
> > index 692ad26ec551..a35f45964c9e 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_parser.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_parser.c
> > @@ -2,6 +2,96 @@
> >   /* Copyright (C) 2018-2023 Intel Corporation */
> >
> >   #include "ice_common.h"
> > +#include "ice_parser_util.h"
> > +
> > +#define ICE_SEC_DATA_OFFSET				4
> > +#define ICE_SID_RXPARSER_IMEM_ENTRY_SIZE		48
> > +
> > +/**
> > + * ice_parser_sect_item_get - parse a item from a section
> > + * @sect_type: section type
> > + * @section: section object
> > + * @index: index of the item to get
> > + * @offset: dummy as prototype of ice_pkg_enum_entry's last
> parameter
> > + */
> > +void *ice_parser_sect_item_get(u32 sect_type, void *section,
> > +			       u32 index, u32 *offset)
> > +{
> > +	struct ice_pkg_sect_hdr *hdr;
> > +	int data_off = ICE_SEC_DATA_OFFSET;
> > +	int size;
> > +
> > +	if (!section)
> > +		return NULL;
> > +
> > +	switch (sect_type) {
> > +	case ICE_SID_RXPARSER_IMEM:
> > +		size = ICE_SID_RXPARSER_IMEM_ENTRY_SIZE;
> > +		break;
> > +	default:
> > +		return NULL;
> > +	}
> > +
> > +	hdr = section;
> > +	if (index >= le16_to_cpu(hdr->count))
> > +		return NULL;
> > +
> > +	return (void *)((uintptr_t)section +
> > +			(uintptr_t)data_off +
> > +			((uintptr_t)index * (uintptr_t)size));
> > +}
> 
> Use size_t for 'data' and 'data_off' to avoid superfluous type cast to
> uintptr_t. Also you don't need to cast section ptr to uintptr_t and back
> to void *. Just use cast to (u8 *) that can be used in arithmentic and
> can be used as (void *) return value:
> 
> size_t data_off, size;
> ...
> return (u8 *)section + data_off + index * size;

Thanks for the detailed advice!

Will update this in the coming version, thanks a lot!

> 
> > +
> > +/**
> > + * ice_parser_create_table - create a item table from a section
> > + * @hw: pointer to the hardware structure
> > + * @sect_type: section type
> > + * @item_size: item size in byte
> > + * @length: number of items in the table to create
> > + * @item_get: the function will be parsed to ice_pkg_enum_entry
> > + * @parse_item: the function to parse the item
> > + */
> > +void *ice_parser_create_table(struct ice_hw *hw, u32 sect_type,
> > +			      u32 item_size, u32 length,
> > +			      void *(*item_get)(u32 sect_type, void
> *section,
> > +						u32 index, u32 *offset),
> > +			      void (*parse_item)(struct ice_hw *hw, u16 idx,
> > +						 void *item, void *data,
> > +						 int size))
> > +{
> > +	struct ice_seg *seg = hw->seg;
> > +	struct ice_pkg_enum state;
> > +	u16 idx = 0xffff;
> > +	void *table;
> > +	void *data;
> > +
> > +	if (!seg)
> > +		return NULL;
> > +
> > +	table = devm_kzalloc(ice_hw_to_dev(hw), item_size * length,
> > +			     GFP_KERNEL);
> > +	if (!table)
> > +		return NULL;
> > +
> > +	memset(&state, 0, sizeof(state));
> > +	do {
> > +		data = ice_pkg_enum_entry(seg, &state, sect_type, NULL,
> > +					  item_get);
> > +		seg = NULL;
> > +		if (data) {
> > +			struct ice_pkg_sect_hdr *hdr =
> > +				(struct ice_pkg_sect_hdr *)state.sect;
> > +
> > +			idx = le16_to_cpu(hdr->offset) + state.entry_idx;
> > +			parse_item(hw, idx,
> > +				   (void *)((uintptr_t)table +
> > +					    ((uintptr_t)idx *
> > +					     (uintptr_t)item_size)),
> > +				   data, item_size);
> > +		}
> > +	} while (data);
> > +
> > +	return table;
> > +}
> >
> >   /**
> >    * ice_parser_create - create a parser instance
> > @@ -11,6 +101,7 @@
> >   int ice_parser_create(struct ice_hw *hw, struct ice_parser **psr)
> >   {
> >   	struct ice_parser *p;
> > +	int status;
> >
> >   	p = devm_kzalloc(ice_hw_to_dev(hw), sizeof(struct ice_parser),
> >   			 GFP_KERNEL);
> > @@ -20,8 +111,17 @@ int ice_parser_create(struct ice_hw *hw, struct
> ice_parser **psr)
> >   	p->hw = hw;
> >   	p->rt.psr = p;
> >
> > +	p->imem_table = ice_imem_table_get(hw);
> > +	if (!p->imem_table) {
> > +		status = -EINVAL;
> > +		goto err;
> > +	}
> > +
> >   	*psr = p;
> >   	return 0;
> > +err:
> > +	ice_parser_destroy(p);
> > +	return status;
> >   }
> >
> >   /**
> > @@ -30,5 +130,7 @@ int ice_parser_create(struct ice_hw *hw, struct
> ice_parser **psr)
> >    */
> >   void ice_parser_destroy(struct ice_parser *psr)
> >   {
> > +	devm_kfree(ice_hw_to_dev(psr->hw), psr->imem_table);
> > +
> >   	devm_kfree(ice_hw_to_dev(psr->hw), psr);
> >   }
> > diff --git a/drivers/net/ethernet/intel/ice/ice_parser.h
> b/drivers/net/ethernet/intel/ice/ice_parser.h
> > index c6cd74c6e434..b5a3c473666a 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_parser.h
> > +++ b/drivers/net/ethernet/intel/ice/ice_parser.h
> > @@ -6,6 +6,9 @@
> >
> >   struct ice_parser {
> >   	struct ice_hw *hw; /* pointer to the hardware structure */
> > +
> > +	/* load data from section ICE_SID_RX_PARSER_IMEM */
> > +	struct ice_imem_item *imem_table;
> >   };
> >
> >   int ice_parser_create(struct ice_hw *hw, struct ice_parser **psr);
> > diff --git a/drivers/net/ethernet/intel/ice/ice_parser_util.h
> b/drivers/net/ethernet/intel/ice/ice_parser_util.h
> > new file mode 100644
> > index 000000000000..6259d3d97b23
> > --- /dev/null
> > +++ b/drivers/net/ethernet/intel/ice/ice_parser_util.h
> > @@ -0,0 +1,24 @@
> > +/* SPDX-License-Identifier: GPL-2.0 */
> > +/* Copyright (C) 2018-2023 Intel Corporation */
> > +
> > +#ifndef _ICE_PARSER_UTIL_H_
> > +#define _ICE_PARSER_UTIL_H_
> > +
> > +#include "ice_imem.h"
> > +
> > +struct ice_pkg_sect_hdr {
> > +	__le16 count;
> > +	__le16 offset;
> > +};
> > +
> > +void *ice_parser_sect_item_get(u32 sect_type, void *section,
> > +			       u32 index, u32 *offset);
> > +
> > +void *ice_parser_create_table(struct ice_hw *hw, u32 sect_type,
> > +			      u32 item_size, u32 length,
> > +			      void *(*handler)(u32 sect_type, void *section,
> > +					       u32 index, u32 *offset),
> > +			      void (*parse_item)(struct ice_hw *hw, u16 idx,
> > +						 void *item, void *data,
> > +						 int size));
> > +#endif /* _ICE_PARSER_UTIL_H_ */
> > diff --git a/drivers/net/ethernet/intel/ice/ice_type.h
> b/drivers/net/ethernet/intel/ice/ice_type.h
> > index a09556e57803..fa4336dd55f7 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_type.h
> > +++ b/drivers/net/ethernet/intel/ice/ice_type.h
> > @@ -60,6 +60,7 @@ static inline u32 ice_round_to_num(u32 N, u32 R)
> >   				 ICE_DBG_AQ_DESC	| \
> >   				 ICE_DBG_AQ_DESC_BUF	| \
> >   				 ICE_DBG_AQ_CMD)
> > +#define ICE_DBG_PARSER		BIT_ULL(28)
> >
> >   #define ICE_DBG_USER		BIT_ULL(31)
> >

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
