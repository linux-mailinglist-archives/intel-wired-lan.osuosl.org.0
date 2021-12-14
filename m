Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FC0F47449D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Dec 2021 15:17:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A64FC813F6;
	Tue, 14 Dec 2021 14:17:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i7w0IUU55oFM; Tue, 14 Dec 2021 14:17:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 932DE813E7;
	Tue, 14 Dec 2021 14:17:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0E7061BF2A5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Dec 2021 14:17:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EC66D40476
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Dec 2021 14:17:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com header.b="ZQOWDiIq";
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
 header.b="wu6D6+H0"
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id S30mHuE2lw-Z for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Dec 2021 14:17:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9F57F400DA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Dec 2021 14:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639491428; x=1671027428;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=AwCQpZ3Z43DwnAr2AAnahFNrshB/28tiIWnl8dmWnOs=;
 b=ZQOWDiIqHwdYKEtkTVkS9+u+KwYYcu+BQ8pKee5a4bcqZYLRMegAC8uV
 bBEdLFQc/rSIUVpZmFG0abgqutep0TMZmGKnn8R3aDraVq5nspIifnwz9
 tuyKmEqmOx7XZYqBN006F5IwyQDsCmuBGemww35vziuWHOBMVX7+FUHI4
 yvCZxWfe1PZ1PuOUDzaTvfYOZMb5iyfs2SFPb6YWlR4UdKEhF/Sx7ceLF
 Bpfp/UHrJnUXE8P3ksbXcKs7nTJI3UqUfkNK14JnwalvhzcvLAMSRPsk0
 JfXRrGdZ3WXVxXd98byEZe0m2KkFqxu+zyYA1J8jNWkG4eZ/DGPRf+xvi g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10197"; a="236517337"
X-IronPort-AV: E=Sophos;i="5.88,205,1635231600"; d="scan'208";a="236517337"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2021 06:17:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,205,1635231600"; d="scan'208";a="519232601"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga007.fm.intel.com with ESMTP; 14 Dec 2021 06:17:01 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 14 Dec 2021 06:17:01 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Tue, 14 Dec 2021 06:17:01 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.103)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Tue, 14 Dec 2021 06:17:00 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=J711AFL/slSge4unHFqMSAEjoV3Jq3flGpwB0WwgWs878urOETkOy9JOsCkrpW9jVbrVzc929tidll3NPphdwHpicGKZWvg6jekiipt0pD1elcrsDDHcDWxmqniK+tzIWtUdmvuesDeDtDZiq2BuOO0GvhQDObjgEjWHq+8kyETi3eC1X7q3+HJL0etnKwhSpI6wki+rg/zvpFr4t9ghLSl0ZYh0VUb0tl98BBi6EN/9wMi8Q1/Rmv3/INbpsDAga7Ymh3EJfn9I6D2CjISA9UA8ZhDIyvdHVsQdWeTyOoGCCn2RGJ1wI18a/Bd8+h9il2E5pgMFNAP/4UkavSKRnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YZOF8MSF7OQc0y0KbCPiRSBeDJRzfZo4vDhZjaMQF/4=;
 b=IvD38vE1zDJMiAyNYisp61D8cI6lVL9sfPNWKA19h8B+x1CUd1s2jyqZPcNWJqjh5Y6nugAV6lv149pV+tQPzHzt4LCOWsBs6hiy3Uc1TGcuRmLQgngt7WJttVWnbOABA7iJiD3YLsWeppHQ3s9IuoJKC2k0PTFowt0trVbxamoE+NhME0CHv4K11laxmRIMVDCbC+/ecOAXsp4yTewOwBUUMvHoR70iljvUj3+/2wXA6cxXPApK7YKvtMOrn2OgIuc+k6+VrmfMJTtSUk8lhz6WoAm+iG95O14Fz+d7pGDdLuZNzK5EHQo3k3Rpy6ByLjPXxpQUsxPQs+ouRDH+Bw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YZOF8MSF7OQc0y0KbCPiRSBeDJRzfZo4vDhZjaMQF/4=;
 b=wu6D6+H0Ml3Xh0c5XFJ5mA6GgC2gA7KuHadMz4fIorc/AVunab0Ki4v58qe2yUt3MThWwJVR2E7GVPYwMQCHBGPlcnkJ+Ks+lNUiiKIdyhgQo8Iuc/fB3E2UgaFLCLmyRnO1OxhtlNVwwQh7/Qr1+BNRdHO+uQO1FAwxdZMFLx0=
Received: from DM8PR11MB5621.namprd11.prod.outlook.com (2603:10b6:8:38::14) by
 DM8PR11MB5638.namprd11.prod.outlook.com (2603:10b6:8:27::13) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4755.11; Tue, 14 Dec 2021 14:16:59 +0000
Received: from DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::3114:bfaa:f64d:684a]) by DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::3114:bfaa:f64d:684a%4]) with mapi id 15.20.4778.012; Tue, 14 Dec 2021
 14:16:59 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Sornek, Karen" <karen.sornek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] iavf: Fix limit of total number
 of queues to active queues of VF
Thread-Index: AQHXnwIl60lWe8cZSUOzXhj/vQ/IBKwyrF7Q
Date: Tue, 14 Dec 2021 14:16:59 +0000
Message-ID: <DM8PR11MB5621E06A56D7FB893A7E47C8AB759@DM8PR11MB5621.namprd11.prod.outlook.com>
References: <20210901072146.71558-1-karen.sornek@intel.com>
In-Reply-To: <20210901072146.71558-1-karen.sornek@intel.com>
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
x-ms-office365-filtering-correlation-id: 8f4dbe42-da1b-468e-4ecf-08d9bf0c6452
x-ms-traffictypediagnostic: DM8PR11MB5638:EE_
x-microsoft-antispam-prvs: <DM8PR11MB563818FA5FEAEEF0180209D3AB759@DM8PR11MB5638.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 8198/GztCjiV73pG1T4P+XMCCcV/AvkphovR4ziYTuWbtDXN30SftdFC7L46d8K0LtaxASvx3uEi4PUVSfKIVvg+HIw6M3ybJBvKZlkQTagd31sPw3QR3HLXyy787j8MKfqvGK/UGuk3BI7xUAmA6eHqxwmnC+kpMBIkioLLFbB0fnzbylMJjvH0f2qWHixK2RBHVc6apDAqcy79nxlYJd7WDmXn6MLxLtX26DE3gXGJdsMX4hwAqnvU1XdDH7Pe6Ibuw4dpR60KVYIrrcM1VnlHyYJt82nh2akjCcjtfZpvIyr0cd+jlbi1xMWeuC/C4ZdKZkDczVnOzbWJlp91destWXgW54mYy0+45jxCuZJE9wtRMU4iyU/8opANISCFP7kapp/Laa8iCd42hPA+JlNOMYGPQ3Grs9jXYbsYxtd7GjsMqzJ50304PqiY2yj7JuQMz3c8I+VCT+0sjgkiixmlxojbyZWg2Pj2e4FeBxh1dOVPbJKDfLcR/GbfjcjeWfyXKwUDAzQbDPONyK+bXpqqPjYQqe/TUEtNPT3r29YCtVE041SRyH21LYixy09JWDFDvFTAb7zaPwR6eVcgbGm78m5uxsrISj8nZMSTM6YZblFOojbf/sdvehM0dhR6NpxMQmCtmHb67nJ9cqVHBPlGGlTpQePco3MiYK1Wm9DvaZ3u0NSzf5PZINGgqMb1iMYPrFeT4FBI90a+u3jA9A==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5621.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(4326008)(107886003)(5660300002)(66946007)(8936002)(83380400001)(38100700002)(316002)(2906002)(508600001)(110136005)(71200400001)(53546011)(6506007)(122000001)(8676002)(86362001)(66556008)(66574015)(7696005)(66476007)(64756008)(26005)(55016003)(76116006)(186003)(33656002)(82960400001)(54906003)(66446008)(38070700005)(9686003)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?AuCMV6Ypz+yZELO9ysajh+vFoBTv5105bT9bRM/DClka0Msqsq0R0h4B2Z?=
 =?iso-8859-2?Q?JBvtbHG/R9OEGmx/zWN93/O6G2H9mnO8Wfk00sDSM/nTTe0qL+w2YOSyIV?=
 =?iso-8859-2?Q?dF8oo+AgGYzIN4B1Z5pY60/w31bjdSWwZhLkLQlWe4RBlsNC20AHjVn2Lh?=
 =?iso-8859-2?Q?NG4064Ad3Q9FZqzRDR/mc5gr5rzUNPEr7qCsp3BdZh02EOIqWlhj6/kowx?=
 =?iso-8859-2?Q?qv2DdItW9oYvJ+guVUnJuVlMAkmpYBSU6bIqthFUsSqEwXkfiY/BKmBOS4?=
 =?iso-8859-2?Q?nzBtikEzfwQlhEtB526zjkWvqLhAui+y25PwFeC5AnZQ9H9euiuuGaSKyz?=
 =?iso-8859-2?Q?c5apUYJppbZ0ij2hlcsp+TIgxgJzwiWOfeF2KZlzEPAqqF5gHwTopxZkaC?=
 =?iso-8859-2?Q?CeTGok/2SKf8UHpL/yB8Flbm1IrE4Eqfp3QIarQC1E67bQXr2vTpGTQUGz?=
 =?iso-8859-2?Q?f9a1IWjJMgIlnvPrqlJ03ciD4p/mq/m3XhjhBXq6XwLtwpdtagkBvF6/Bb?=
 =?iso-8859-2?Q?rlp2Z6nUFsTe04BknDruJ0XdRk4wuDzRGMiYkhYegn5dfhl4MvoeSwY1GO?=
 =?iso-8859-2?Q?wpsLxOLuuSJ+YLQdHV+Rsr15RtbrzeYXVRPkM8uxSU5SPHgsw8bpIkSPk5?=
 =?iso-8859-2?Q?6ubyTY9U5SuFSN8qWpD7wxwx8xVA4cxgGpFrc9JnVx3LdzaTEusTb6gEdR?=
 =?iso-8859-2?Q?jyjyGqPkyz6ESefDHZ5la42Ots5QME6OM2eNsl9IdqvkLzZGJrtqqCJyNf?=
 =?iso-8859-2?Q?h9xjkRCaDYESaB5nCEtBWZKAyV7t6rR2L0d1NmqreLNlcWls+TXmdIL1i2?=
 =?iso-8859-2?Q?0pSI/RIDVXu6JHaOkrF7gxukVXckfdnMZnBXFYsj3Gv4KeKK9//EF+WKa0?=
 =?iso-8859-2?Q?uum8OEtmZ3alLOhHExA3n3hHdpEnWYxa0JULwUGxZ1cSbUyp2/s51JyIe5?=
 =?iso-8859-2?Q?zIOUE1jHKj3tysSvdU2BNkw0bsKcgWXT8rPtFzRPBiBa0a212fr4Uu3RHk?=
 =?iso-8859-2?Q?RgSHdyiAhG1GC8l0ZO69rIr0dz63wiBVSO6K6GjJ/d3OvjP8CZ0NTq5gRH?=
 =?iso-8859-2?Q?yAM5EwJkQbWZvBj9+iTgksV0TQkNs19HYKUHhd4b02UsqelD5+ntKup4L5?=
 =?iso-8859-2?Q?JUzw48m0TfB5jUIkqymjrlgWCHEZ4qEIptGt66o3DrfuT4bSp9Sz7gMf2l?=
 =?iso-8859-2?Q?d04mn1s0uOL8TyuO2Fj/y/oxCqqsOkFMf5AyjRsjLkJnksp4aQJExNp9uG?=
 =?iso-8859-2?Q?Qz/K7icP2LX7oDmhJhtLhwgXX0vXZ7LSM/qzH7BCFWGXoP4IOU9o0TnZ2u?=
 =?iso-8859-2?Q?y7XZj22XDJ6nN6AbDbNFWy+ls5uIjreTlV+QRegwYYwDQT769oU0JTH5+H?=
 =?iso-8859-2?Q?Skf2jCaZnOnFdS4Ur0swACD8yd78cFp3rU7Lro2fGQZEuyz/DTIbhOO35l?=
 =?iso-8859-2?Q?P1jcPz1d5H8xHVFXEO0/WFMCJizU6+PcuwItXXP4O365CSGhITvxKc4T23?=
 =?iso-8859-2?Q?GuauIrE5/OJdnxh5c/oymtFq7jS4mkMUK9q4eSOiGBRro0kAYCRzfWWeph?=
 =?iso-8859-2?Q?NzB0is+jRRFkFbQMYOXGPQcBoqdGr3/5pKqVq+Loi/3HaX2A2ukBIEZkgJ?=
 =?iso-8859-2?Q?tl2vxKa9s2tPKGh5Z2gcQJcaEHGsP/MZWyE3pMy1ZId6ABIsyiZZluoUKT?=
 =?iso-8859-2?Q?5QbdKNoPSUMODB0paK7lAixa+/6LBUVMg+cfHE3MEXPFlSXCMcj3PKiWzb?=
 =?iso-8859-2?Q?NYGg=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5621.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8f4dbe42-da1b-468e-4ecf-08d9bf0c6452
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Dec 2021 14:16:59.2159 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ImuMLwHhCc+6wGEQ4O5uWdTfll+ZQzVjse3TvmqxB2ERisqohQsVFtlNFyQfou2YCewGAwiZnM9EKcRpk7tzZiHjOfb+1LsvP2M9HDFeMGA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR11MB5638
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v1] iavf: Fix limit of total
 number of queues to active queues of VF
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
Cc: Ashwin Vijayavel <ashwin.vijayavel@intel.com>, "Sornek,
 Karen" <karen.sornek@intel.com>
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Karen Sornek
> Sent: =B6roda, 1 wrze=B6nia 2021 09:22
> To: intel-wired-lan@lists.osuosl.org
> Cc: Ashwin Vijayavel <ashwin.vijayavel@intel.com>; Sornek, Karen
> <karen.sornek@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v1] iavf: Fix limit of total number=
 of
> queues to active queues of VF
> =

> In the absence of this validation, if the user requests to configure queu=
es
> more than the enabled queues, it results in sending the requested number
> of queues to the kernel stack (due to the asynchronous nature of VF
> response), in which case the stack might pick a queue to transmit that is=
 not
> enabled and result in Tx hang. Fix this bug by limiting the total number =
of
> queues allocated for VF to active queues of VF.
> =

> Fixes: d5b33d024496 ("i40evf: add ndo_setup_tc callback to i40evf")
> Signed-off-by: Ashwin Vijayavel <ashwin.vijayavel@intel.com>
> Signed-off-by: Karen Sornek <karen.sornek@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf_main.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> =

> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c
> b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index 80437ef26..c215ca503 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> @@ -2647,8 +2647,11 @@ static int iavf_validate_ch_config(struct

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
