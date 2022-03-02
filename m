Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B9384CAF44
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Mar 2022 21:01:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 226F9826DF;
	Wed,  2 Mar 2022 20:01:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id K99_J-BORgyX; Wed,  2 Mar 2022 20:01:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 222A881764;
	Wed,  2 Mar 2022 20:01:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C24891BF2F2
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Mar 2022 20:01:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BC5BF4098C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Mar 2022 20:01:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wMt8ZGI4cmjO for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Mar 2022 20:01:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 12741408F1
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Mar 2022 20:01:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646251287; x=1677787287;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=lT2GIIRVL0rkBOMOg1wpOnuj9yVHTurWc+mSbQMJbn0=;
 b=eT4S3q4dPPCJR/QNCtoJ6O2ViCIeBEqThY2lyonruxaUGYJRmnCFfvAH
 maGcbJRpNL2Qjkt800ldgypV9YftPrK8Xud/5eqz0HH9GQoZHThvGB/46
 JPWk+YCe2rkJ3CZVTQsNwvwA+qHpphvX4cZoXe7DyOf6ijKEJ1P2tbv2F
 oSe/h2iAx9GimVDiBFlCxYG/JVpDZ4YMMem/sfd4YP6cKnN14dcw6ZVod
 80mX+ctO4TjnhmaBDAgEuaSbkyrC++1YWp23pCUbxN73md4e/JnjiQaz5
 iuJFLgGIsFNoGNLMncbz73xChpYwdhUPCWoOI+cw/p4mgnv4d96dQGhBj A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10274"; a="253224609"
X-IronPort-AV: E=Sophos;i="5.90,150,1643702400"; d="scan'208";a="253224609"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2022 12:01:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,150,1643702400"; d="scan'208";a="511134295"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga006.jf.intel.com with ESMTP; 02 Mar 2022 12:01:25 -0800
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Wed, 2 Mar 2022 12:01:24 -0800
Received: from fmsmsx606.amr.corp.intel.com (10.18.126.86) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Wed, 2 Mar 2022 12:01:24 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Wed, 2 Mar 2022 12:01:24 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.174)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.21; Wed, 2 Mar 2022 12:01:24 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NbvOcea5LIj9nUtx3aI01h8kqHov2PKRXcL2+4To0fIYEPGNLXn6txwRhvONvNGNznzkpY22L0yqud6nAeTKwkx8daE442IHZgUiAUwGzw/Ku/hi+AwNfA/yska3ySpB5KLtI6U7orjjY3AeFdoseV4IHKs4Upn+06pOPXc01MPoGqZ01JFizrpCfyFrbzSFOpXLSQ0jPomPRyh0BJfN424Zgqxl7gcjjG1v+oZF3eRyNY0INTyEgWQyO4zJgpXm5KYMrZ0QvVn6o/0YrYMvVjIQg0ZPp49X/T6f+a5h5x6BUq1gjDpM3ObvQM/qIqoGLIw0N1lRNoIPaOiYJTrScg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nSYnJHVKRN+2LM9KCia9jSTRR3hEKQEI/CJY+zLpoK8=;
 b=jTZXSmHkSThil2QbuTTwuAn52Xb8ZcNI8E5M3h3KaQ22Uz2b5gUzdiFL9OWrngmGkXrGIxwJjQg0A8hZbDNPsY7KnsetjvFcY88hmiXxD5VDRu+3krFG0WQIJOaNgOLLXutD5r22RIiBRK27Iesu9KK9Tek1/V3IxXi1mHQtbsz4L3U8r90nCOrvDMN7RJeHQYPp5fj5x/CvAUe1r4gOGb5R99SAM+/EqKokIKR7TLZvpPW+OyyrKw1U2LpqTILo4LSiXzPSfk/ItogpAU+IQoaiS6q5g0h6oxEzbveJzNmy6PbFiXt2JTKgUgy6AxB5pOcDqU4rkqd2VatHiFWd3w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5629.namprd11.prod.outlook.com (2603:10b6:a03:3ab::13)
 by CO1PR11MB5124.namprd11.prod.outlook.com (2603:10b6:303:94::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5038.14; Wed, 2 Mar
 2022 20:01:21 +0000
Received: from SJ0PR11MB5629.namprd11.prod.outlook.com
 ([fe80::c194:9f26:88a2:b9c0]) by SJ0PR11MB5629.namprd11.prod.outlook.com
 ([fe80::c194:9f26:88a2:b9c0%8]) with mapi id 15.20.5017.027; Wed, 2 Mar 2022
 20:01:21 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [net-next PATCH 11/25] ice: use
 ice_is_vf_trusted helper function
Thread-Index: AQHYKExV5yVzQq2qKUChks58VXgIwqysj+QA
Date: Wed, 2 Mar 2022 20:01:21 +0000
Message-ID: <SJ0PR11MB5629C7A8756E8EE25A7858A9AB039@SJ0PR11MB5629.namprd11.prod.outlook.com>
References: <20220223002712.2771809-1-jacob.e.keller@intel.com>
 <20220223002712.2771809-12-jacob.e.keller@intel.com>
In-Reply-To: <20220223002712.2771809-12-jacob.e.keller@intel.com>
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
x-ms-office365-filtering-correlation-id: ff295e9a-e967-4ad2-d4ad-08d9fc876c6c
x-ms-traffictypediagnostic: CO1PR11MB5124:EE_
x-microsoft-antispam-prvs: <CO1PR11MB5124C878D480F41CB32D62AFAB039@CO1PR11MB5124.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: mJNDu7A7OliTmA9U+8wOJyGUCXnZ/kOxecXs7f5wc1pIvlxdjQVyI9Kf4ErL4I0dKf2OxfS9fKD6WkGzdKT45+AWimJtT6L3JwoSxgK2k0NbD9SLx6RO2Fc2+ZTLz2Ju6rfGRpmdDomZ/UaqHwG2nCVhC88Q31mby0Z/5hNqTqd6qLFb8DuNCnElUE8jT5YNmHbQiBFU582VBqWv4+YKKg/yi0odhX+ZNvpMZugGxJabcAf9/DTSghUVp6ZMgXyp/y02f/NwK1X/rQdZESTfJSqwyljxQerqyc6MI1+xIt4O5nXyciohQMckqHRtGyaOVy433zHM7AGnzjhnSjSiEZ7p9vWjSc6C1ZFB55wqtRf/BuAs4ah0l8pn4pjIokBbI1UGFcOR+z6nIo/oTPUIvhg1s8WtcORcwKTTNUYiUM136KlGvsZPakQORdz6WfR5OZX5ksrVSaJYjcmCLtFecZvl2ZFSLZcVa6poLQX0ebluRbGhua0Fegcjk6EXVO2O+D2WmQXHkqdo0wMpF5a39Jra8UiHrEHoNMNWx4wLjntFO5kNlhj5MP9rQtO3yv/qeeOH5yjPfJwsuGpjK3arW017z5o4Nj/F6cI2YgE4UAHePQ23BxhF0mvmh7/6roz6AMdisuUBB4D5hGZwfvRWm3sAy9gen+f056eWo+6aN2LuIjDINfId6l98MDyh7RSpT1L/EsTwSzUrlDD5LHCNDA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5629.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(33656002)(52536014)(38100700002)(508600001)(71200400001)(86362001)(55016003)(110136005)(83380400001)(8936002)(9686003)(316002)(186003)(38070700005)(26005)(66476007)(64756008)(66446008)(82960400001)(53546011)(7696005)(6506007)(66556008)(122000001)(8676002)(76116006)(2906002)(5660300002)(66946007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?WcPTgq3zXo6KV3MTY3ufe2CnXZzzRbSm2dt2V3nE9QyjwNCsx9uEO64lvuer?=
 =?us-ascii?Q?HI54hncwEAxF475aYMG149czwXbkA7afawT3W1n/481K5rcfW3PttEsiiMl6?=
 =?us-ascii?Q?VCGQ2cAxXt18BXzjR5YsxIdJPb8P5HdMON1CYrFL1indpKBVPiRTsrJtogsu?=
 =?us-ascii?Q?CEIMqaaQzWxJBz3xlXsSClbyH6B0e7q9rCeNEl3XKXT8/uKW8IB7p3qq67ll?=
 =?us-ascii?Q?bnUx4K6McJPCrvrCFfKrDr8yjfN3cjOSsFiCCvQhDOXzrV1KgVT9U6ouv1FT?=
 =?us-ascii?Q?VUaOYoOoApeeMCuzNo+HTQE1fBRSdkq3M7/DDxM+2lT/ZJi1Bv/dm1PA7fd+?=
 =?us-ascii?Q?R0tzOis8lqkS3iHBZpB8yzeLpDRT8YosEi8wbTNoRZ5F7Tqbiw1X6YBekSJQ?=
 =?us-ascii?Q?6FfLcL7Wr9IOhrFS1CpzG8ZduUMJuKNW7A0C1gGSyLqW1Jjpeawwc+O8q9Ad?=
 =?us-ascii?Q?SvLSZcXG0GuGbVspkeTUWqS0G9ECCMXBt9M3lbtCq2fHZXspukR8WORI9HCt?=
 =?us-ascii?Q?mcoCMvV7xkFhqEUOp+kwoYKYPFA/9O+HdqTqRkUzCXg04wkFeA4SUdsDVFVh?=
 =?us-ascii?Q?SzkD3y4RWiLDIjSlRx3eB6ZZk196iucu8WFqM8vh5taYfsM5LbcXqQAsTq/K?=
 =?us-ascii?Q?xl0BR/2dxUqKvdxLMc6u9UIDuTuQnCS6BUdzpAxPkE++XcRw3KLcSRfvaNzH?=
 =?us-ascii?Q?vG1jXhh131jAjWOM8si2X+TCnyThq+/dR4kmvG9Chw/19NChtJ45uFA2vT0d?=
 =?us-ascii?Q?UBBj66sKNhDf0DnAg8D+6SKj+m6a+YmyQ8fVFrmpbQuHy2rWObC+8/4CXXBH?=
 =?us-ascii?Q?9MDfCsvLQnagBwMj9KYIXDofpbl8P/Jm+joroFDv1ItJP2TSFARDbbPJ7Tuf?=
 =?us-ascii?Q?CiYs9h8SmlP6fl2P4to5Kjh/JYvG35QVA82M5PQSXfrqrUakJjCw0VRgWRRe?=
 =?us-ascii?Q?aFGG272gNPfpIij82JtaG/MujXapHD4nAOJtGlX0KRL3n6ti5Jp3zu3o3ptZ?=
 =?us-ascii?Q?U5uv1Jg3BlIZUfIZWiifvspIhgkJR1xED4zRKqi7SegYM4GoN91RXgzBF9oJ?=
 =?us-ascii?Q?mrorV0HUWqZt7tjj8+17Lwe/i/4XqwEiNVwwUevVrncgp3wY3dQ62C/Rm2Rv?=
 =?us-ascii?Q?R+YL9ddf3AAxVrxp7zkZNMSGfV0TJswZ2FxjQg69NAF7n8DU06JoABQKOV1v?=
 =?us-ascii?Q?CTnCTUmDn3EdHut51ABqfSqOnMBVf7Z6H6Xx3rz/QbuPMOM2Ux7dIT2LNHLi?=
 =?us-ascii?Q?U0y0ycQw2NRd0HPdHEgu8a4vKjXWMkBW/4LxjKiOTQ64R+FH25algKEBPjHL?=
 =?us-ascii?Q?w+uexyp8Nsiyxa9VLsB7/mB0uEuWJwF9EnzYHEwfsvIsI5WtkqXcoMK3kz/V?=
 =?us-ascii?Q?8ab1tCmj6mWYBTcQtbIWCMQ/241/CVAQvUJTWnySXwXMURnCdCNMlTmlHlcz?=
 =?us-ascii?Q?uDkUxvwMAyOrlESS6bBR7pLmduAvEsQGCK6mcG5kwxPt1dGBZxUFyQVtcKlX?=
 =?us-ascii?Q?jfN6TXFMOmC+1i6/CJcKncttol3GMLq86URttyWxdiwm5/An73xlYtF4vJW8?=
 =?us-ascii?Q?vMEHH0KqbauN4KwWnFOuU9JGt+MB6R0Lvqy/F7PUmiyRckCz/2PRdvY3ZhiS?=
 =?us-ascii?Q?FiaFluM7k+Sm/ijfl3QpY0Mf9hDbSulugHn+kSV1v9VJCWZsKltSnwhxwD3d?=
 =?us-ascii?Q?2XIbJA=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5629.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ff295e9a-e967-4ad2-d4ad-08d9fc876c6c
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2022 20:01:21.8867 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JwytxARhmjDUWOALT29t2/esxR+KIFkcqpEfdGtzdbK9EDTwAaAPi9ptKiqaWOgjqVpAVEgNLlAdoB19D9yUp7WEQFqsQM90k6sZQk/tU7c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5124
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [net-next PATCH 11/25] ice: use
 ice_is_vf_trusted helper function
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
> Subject: [Intel-wired-lan] [net-next PATCH 11/25] ice: use ice_is_vf_trusted
> helper function
> 
> The ice_vc_cfg_promiscuous_mode_msg function directly checks
> ICE_VIRTCHNL_VF_CAP_PRIVILEGE, instead of using the existing helper
> function ice_is_vf_trusted. Switch this to use the helper function so that all
> trusted checks are consistent. This aids in any potential future refactor by
> ensuring consistent code.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_sriov.c | 20 ++++++++++----------
>  1 file changed, 10 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c
> b/drivers/net/ethernet/intel/ice/ice_sriov.c
> index d41fce16ddfb..432841ab4352 100644
> --- a/drivers/net/ethernet/intel/ice/ice_sriov.c
> +++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
> @@ -3148,6 +3148,15 @@ int ice_set_vf_spoofchk(struct net_device

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
