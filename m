Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BF31315C86
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Feb 2021 02:47:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E485086144;
	Wed, 10 Feb 2021 01:47:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uL3lM19hHR0m; Wed, 10 Feb 2021 01:47:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C157286191;
	Wed, 10 Feb 2021 01:47:31 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7A4C21BF34B
 for <intel-wired-lan@osuosl.org>; Wed, 10 Feb 2021 01:47:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 72ABE87227
 for <intel-wired-lan@osuosl.org>; Wed, 10 Feb 2021 01:47:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lQF5eIQdUGcD for <intel-wired-lan@osuosl.org>;
 Wed, 10 Feb 2021 01:47:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 726C487192
 for <intel-wired-lan@osuosl.org>; Wed, 10 Feb 2021 01:47:29 +0000 (UTC)
IronPort-SDR: /9CPXXgEvdX+ooMpGaVNG3/SYdt64PWF8lbSEWSUrN1lS0pjIr6VpSKhl5G7rYp3PE1TRicGs7
 FIBfGymbg9qA==
X-IronPort-AV: E=McAfee;i="6000,8403,9890"; a="243489034"
X-IronPort-AV: E=Sophos;i="5.81,166,1610438400"; d="scan'208";a="243489034"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2021 17:47:28 -0800
IronPort-SDR: T7DAO90Znr3dqYIms5RDHILL3f4cGLqvAzPjVjHL+MKi6AlBnUm5cyEq95/qIxcg1SzttVZB/L
 OuxnlP3Rep3Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,166,1610438400"; d="scan'208";a="399003283"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga007.jf.intel.com with ESMTP; 09 Feb 2021 17:47:28 -0800
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Tue, 9 Feb 2021 17:47:28 -0800
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Tue, 9 Feb 2021 17:47:27 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Tue, 9 Feb 2021 17:47:27 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Tue, 9 Feb 2021 17:47:27 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Nncbyg/xuHPieuHkGRnTE7d0RtlY1ybUXkYvNPar+A/pzcBGVXX6/2n3VW1gr2DKDBrejRXG818k27XEqw3p/bKmD99JxdMB9Uf91RUzchmFw119GXivNLNEgOOpmhxO+OmlWswdl0nR66CYyjeWm6qeqTiBvy7UwgVrFhBy8TunHi5R9dNWu2k51Sbmkiwha+T8GqOD+ezoYruEYcp2FLPq8gszsG2JqN686312MnzjxefbmCSY9ukP15q6+hXgibquz2pwnE9lG9gxDkbLl6WtdEfAbc3xHUEzjcRNsnkgLNhOvYgL41drB6rmJmw0pR6kTMlpUB/RUm4VlURB4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SFkZuEr12KGoqczgh2lDn5iw+rSD9wf3QadqtqcxHhw=;
 b=LGPg7VYJE/BYTdbm7PtlPB01THk/EK4afwU1ILS/MAWlnkK1U1tAE/EP7HaEKRvMGYZJ5Qu2qM0OvH8JyryEInHnATHDPBAaugRy0ocwUaCcdiOd5lQGLPqRzeGFGMSeAqVFXag2JO2UWaPOjxLMdPTg8DLx8HX0oxV2DrVY6jWt+f887vO7/ZKY7zzCFm4/0swOrS5r+H5mHvOIOcsNQurXsqW082fUFoag3zsuAgR5ppH6NIw7g/HWWyoM9O7eEXZs+ShxmHk5vyFaUhN/jY+ytWa7RlAyRY8Kt1vynxNM1qdm6PrcaGQrYh6/sysHzptzXE5dpFgyualeSG49yw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SFkZuEr12KGoqczgh2lDn5iw+rSD9wf3QadqtqcxHhw=;
 b=JP78xINhVpl3fa6l84ZPOkZhLbK8pNc9b+p8WHaWPNqbJ+QfYGk44U7ZJVcphamX7+hBJrTBEguNyVVKR80E4y9mQjLTeXNdFDMFSBy/hSJ4A9B4jp48lTMujDjZm/b8JNc6fOZJPO/hyc1E/Eh/NMB1fjMpPfJbjIj+pvRQC1c=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SN6PR11MB3440.namprd11.prod.outlook.com (2603:10b6:805:cb::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3846.25; Wed, 10 Feb
 2021 01:47:26 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::85b7:921c:ff53:696e]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::85b7:921c:ff53:696e%6]) with mapi id 15.20.3825.030; Wed, 10 Feb 2021
 01:47:26 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "Patel, Vedang" <vedang.patel@intel.com>, "intel-wired-lan@osuosl.org"
 <intel-wired-lan@osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v5 9/9] igc: Add support for
 XDP_REDIRECT action
Thread-Index: AQHW/o+C+dtgxbX3LkCKWCyD/XAgWqpQoD2A
Date: Wed, 10 Feb 2021 01:47:25 +0000
Message-ID: <8c6e414e03c2bdd01916ee63f6912df3b24e86fa.camel@intel.com>
References: <20210209024141.23298-1-vedang.patel@intel.com>
 <20210209024141.23298-10-vedang.patel@intel.com>
In-Reply-To: <20210209024141.23298-10-vedang.patel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5 (3.28.5-3.fc28) 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.204]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 28ced363-e307-483f-c27c-08d8cd65d167
x-ms-traffictypediagnostic: SN6PR11MB3440:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR11MB3440E570FCA01462898BF3ADC68D9@SN6PR11MB3440.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4502;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 3MVgEbiU+ws3X8RDO11id0+VPjisEmqbCdBYFFmdvKtRz0NrHFSCUAj5YAnsfSfqdWg2yCGIimCAfixc3luEt/WMHN3h8+BTzu5c+/aJtqAj5ZeOD3PK11P+OyutWQK8qbwY1MTpKnl7UEieRq9EgyZt2K87I9bXkYcet0wsmvbA6tSDtt/TQZaPWZjF1C15d3Tl3K+gFarCGen1YJE6AceAom3tooBxI6ohvWP8B+zxkgdEA0OsMyWWQlAU2pRbmWkqvx1mYYDHIvl+cweTOTY+MGRsDDbZ++j9GPGhDlmTVs3tMMaZMp4oXerpBxk+enbdSbNViaZWTX0f8G1pciGTEvaLhcIH1f2HYi9j8NtFpcphH4OvxVniyliqT3mAz88TAm2/kskx5MIqM4MET07aU0fGTcqQkoCXuPTn41HAwWlVyoMfQm5st5SB/tcMw6YseCHoEQi+Ap7ebfCVxmJ0y3opxw8M/K4N8fGgBKN5Luey65coyPimCoKEkHtEQatsDCtOmuKjw73EXOnQuaB5EbjLi1L16A5TePPgqCxMGuz9moDUjSGWyewP5GqEXDFWpxz4bV1POpX8oAFOJ3j6lIP1mUFOCZ3XpGmSdpWQ3aLNdISSjzz2kJaUc4P3+Ta6mInWxF4RsuwLrleZrQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(39860400002)(346002)(136003)(376002)(396003)(86362001)(6486002)(107886003)(186003)(36756003)(26005)(83380400001)(2616005)(2906002)(4326008)(91956017)(64756008)(66446008)(71200400001)(66476007)(6512007)(316002)(5660300002)(66556008)(66946007)(8676002)(6506007)(8936002)(76116006)(478600001)(110136005)(99106002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?aFhWL3FERUszQUpqM2ZCbEF0Y2k4d0RPOEhkUGp2NlRoTjByN2JBcmYwQVFM?=
 =?utf-8?B?dUgxMVhyajJKb2VyT3ZZeldBRVpqVXZScDhlSkFhcWM0d1JkOTR1TEJ3ZmVi?=
 =?utf-8?B?czZZYTlYMHJ4MXdEZ20xL1d3VUhTQWVUeFMwNEM2NkYrNTF6R01rcHkybjIw?=
 =?utf-8?B?L2doT25nendmaXU0azJJQkRCN3VtYXJWZFY4Mm9nTU54RzlVd3haMFIrUis2?=
 =?utf-8?B?U0d6RmUxZHFzQ1VJL29CZ2tTaWtUUnA5U0hyNXdJaUZ1MGxiZ1RCdXdXK1RX?=
 =?utf-8?B?V2l4aWZPYi9yRU5IVEhKYnpiYzYxK1Z3MnU5WFpKNmI1cG1VVTVtMEpjMHBN?=
 =?utf-8?B?Vkp4RGprdkY3TWlJd1lIYUxVRW8xVjN4c3pPVjU3YXRkb3BXb2hqNjhubkFR?=
 =?utf-8?B?cWNZSGdYcFBROWF1VlRMcldLZXRIRTBsZXZ3RjZyNFVqRmpDckdxUllsNkFY?=
 =?utf-8?B?bzhGb1dVWmc0clhBclVQQkhsdkh2cXorZ1h5cDlRZGgvR0cvY2dCOHdaM0or?=
 =?utf-8?B?S1FScVFESEhPTUIwYW5iejh2U3VISS9NUnpORjNMd0cxckVWRllqaW1iWGRq?=
 =?utf-8?B?RG9yWWxObGNoOVZvakdUenFiYUJnYS9DbEtOQjhURjhUdkZFcjBhdVdhNENE?=
 =?utf-8?B?ay8zMHorRDdNSlVIN1VmeGRwMVdpU3VZSWpqdlhKUGJkRXZoQkRYSlVqT1VG?=
 =?utf-8?B?d0FMM3FTTkYzNjFMOUlQeWtSd2UxV2FhNkwrRkxIWjZpRkpMdTRjTW1RL2Nq?=
 =?utf-8?B?T2JQeXptaVhtMGpXajJORWpFbHhzbElRM3VmVlZxYUZpVzRJVWtrRnN0SWlj?=
 =?utf-8?B?bUlHQ3dZRzcrVU1RTEQ2MzA0QlV2UHBRcVZ6bGpXNFI2NHhHWGZZeEllb2Nj?=
 =?utf-8?B?ajhoWDYyMnVVV1QrYm1YOVhLS2I5c1F5WTg0QndUV25pVjVzaGZrUjByelVO?=
 =?utf-8?B?eG1yV3I3d0NoeWVYb0h6YVd2eU5Gb0xaZUVoK2R6cEl0UHRkdUtoUzd2TlE3?=
 =?utf-8?B?N1hxeTFhQm13OUEzZE03Y3FkS0FaTkZpVFcyaVdRc0lZQVJhZjdhejBJMTF6?=
 =?utf-8?B?TmpOYk0vbXgybzdQblBZQ0VrSXRNSWRrdkRwWjcrLzEvbzU0VU1uUzZMNS9r?=
 =?utf-8?B?R01pN2M1Rmpldjl4YjNBVGFPbDZlUjFDbXd1UXNxUXMva1I1blVBY0xYcUt0?=
 =?utf-8?B?YW9OQkpzNXE1SVRjcjM3ZDdrNXRBc0tocXBJemNPR3pvNitrQVBoOVFzTk9X?=
 =?utf-8?B?M254aitOOHE5Nm9JOElvTEQrVjZ1MTRNSlVSZFM3M2owcFpqNFk1ZXg2eUJx?=
 =?utf-8?B?RWd4V1JYRVU0VGFlN2Zwa2g3RWR6bGhSU0ZnNHZtTlp4RUZjVTFYTEFqUU1k?=
 =?utf-8?B?T01DQkdDeWdIcHFQZXpad3BZMkVNQWZXWjRTQkJabk1pcDlBeC8yb0FkL2FV?=
 =?utf-8?B?MzN4dFNQbjZCYlJtUjJDMzEzU3F0KzFTSmFiQnVtTlJvNW5sV3dkNU1ObSsz?=
 =?utf-8?B?czFCS1FlK1lYOFc3dTF6bmFGNWZQZm8rUlg2emkxd0FJRGpEbGU2R3J5VlVB?=
 =?utf-8?B?L1prSWZXcXlNcG80K2owWCtialhZVFhCTUU5dUl6YkxTcXFsTnAzWDhUZVV6?=
 =?utf-8?B?a0dRZ2xKc3RBajJnT1RVRWtSZzZENmZHTUkzOGRqYWFFYXZQL3ZWVkZlM0tW?=
 =?utf-8?B?a1YwSWhzdkdkRXlvS3BJRmtmbk1UMG4yQmJQVys1d0J2ZmZHRVJpY3hYS21n?=
 =?utf-8?B?OWtPei9wTlVWb2tlQkVrR0l6bkJINlpNaUNrMkFOUlpPQjR5VGxoMHF2bnho?=
 =?utf-8?B?Zm81UlFiRW94TmhMVmFJdz09?=
Content-ID: <EF4A47E7C8210C4EAF5D82DE967ED74A@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 28ced363-e307-483f-c27c-08d8cd65d167
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Feb 2021 01:47:26.0404 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DK5l08w8sihln+MxId7sWXRg/YkJn/+n2nJvQURysKTXs3hZ1349jRjRUirJtAJXs0hQDZzO7hXSkIEq7KJRLHNf5W/3KIY6d/E/f+7EOWg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3440
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 9/9] igc: Add support for
 XDP_REDIRECT action
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
Cc: "andre.guedes@intel.com" <andre.guedes@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 2021-02-08 at 18:41 -0800, Vedang Patel wrote:
> From: Andre Guedes <andre.guedes@intel.com>
> 
> This patch adds support for the XDP_REDIRECT action which enables XDP
> programs to redirect packets arriving at I225 NIC. It also implements
> the ndo_xdp_xmit ops, enabling the igc driver to transmit packets
> forwarded to it by xdp programs running on other interfaces.
> 
> The patch tweaks the driver's page counting scheme (as described in
> '8ce29c679a6e i40e: tweak page counting for XDP_REDIRECT' and
> implemented by other Intel drivers) in order to properly support
> XDP_REDIRECT action.
> 
> This patch has been tested with the sample apps "xdp_redirect_cpu"
> and
> "xdp_redirect_map" located in samples/bpf/.
> 
> Signed-off-by: Andre Guedes <andre.guedes@intel.com>
> Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> Signed-off-by: Vedang Patel <vedang.patel@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_main.c | 59
> +++++++++++++++++++++--
>  1 file changed, 56 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c
> b/drivers/net/ethernet/intel/igc/igc_main.c
> index d34d35789e2e..8bb1f8a54368 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -26,6 +26,7 @@
>  #define IGC_XDP_PASS		0
>  #define IGC_XDP_CONSUMED	BIT(0)
>  #define IGC_XDP_TX		BIT(1)
> +#define IGC_XDP_REDIRECT	BIT(2)
>  
>  static int debug = -1;
>  
> @@ -1708,8 +1709,8 @@ static bool igc_can_reuse_rx_page(struct
> igc_rx_buffer *rx_buffer)
>  	 * the pagecnt_bias and page count so that we fully restock the
>  	 * number of references the driver holds.
>  	 */
> -	if (unlikely(!pagecnt_bias)) {
> -		page_ref_add(page, USHRT_MAX);
> +	if (unlikely(pagecnt_bias == 1)) {
> +		page_ref_add(page, USHRT_MAX - 1);
>  		rx_buffer->pagecnt_bias = USHRT_MAX;
>  	}

All of our drivers have needed this fix[1]. I suspect this will need it
as well.

[1]https://git.kernel.org/pub/scm/linux/kernel/git/netdev/net-
next.git/commit/?id=75aab4e10ae6a4593a60f66d13de755d4e91f400
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
