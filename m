Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EF8D472EC4
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Dec 2021 15:20:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EA2A5851A1;
	Mon, 13 Dec 2021 14:20:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bAAApSWVEI2i; Mon, 13 Dec 2021 14:20:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D4A49851A6;
	Mon, 13 Dec 2021 14:20:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9556E1BF395
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Dec 2021 14:20:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 811674011D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Dec 2021 14:20:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com header.b="LdWaEhVX";
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
 header.b="JAMRAO2a"
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id R2PgTdluE0ll for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Dec 2021 14:20:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 057F9400D8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Dec 2021 14:20:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639405241; x=1670941241;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=MR/sABoLkukjwEguDq2PvWQtafcveQbdxOGxVxqE+x4=;
 b=LdWaEhVXxmFlT05htizMQsxbhV6xLBwvddyUt9ou/jPiYxK7IY0lWAJZ
 HO3h/P1vGYMTVDt0TdSXBJbWT8Ff9MbgD8PE0yoYWlaiSl27j+LEnX4Qf
 COrCD3LW1onTJjctN+0f4EYjSTXerDI7+XYUY3KRN/WJ/dWgXiCMOIMA+
 drqrXA2+2McOuHYmpJTfM4hG+9o3ZfXh+o+zgHAGE7m1vLRAd4w0D7VT0
 pepmAiHe0aLZQltpOUhiX3d6K8hP2NcNbp7pzVhZGaFizaw5wSm7N8x6E
 XukC/cHvqtJCQUs9GlLbEdqbwjstRmy5MuP8743iFklhf9Wu6q3KHlb0Q w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10196"; a="238686939"
X-IronPort-AV: E=Sophos;i="5.88,202,1635231600"; d="scan'208";a="238686939"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2021 06:20:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,202,1635231600"; d="scan'208";a="613843134"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by orsmga004.jf.intel.com with ESMTP; 13 Dec 2021 06:20:40 -0800
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Mon, 13 Dec 2021 06:20:39 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Mon, 13 Dec 2021 06:20:39 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.177)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Mon, 13 Dec 2021 06:20:39 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jpzPOtSofPqbenlnNc96L6FJfyX5sVf2ekb4UBRsdsL+5eYlVVgzxtriEoScqKnpMsFaBQZdIWhwA5xKhKSSzhsHVNuGpIb+XepjuLqYJ3Sg7AYGU2iI+F5hWm0Glt4maquLHR4NxP5MXw8EjuLkDQBXIeyjsX0nW+dd5yYENldo1H/2cDr+b7I8wstIyvLIxRDEjDZ02K6UzPscU4hjsGEusXEaIEEPsg1amN5kkNXHkSMl/5ahRjUpaDQSZCuJqawnx1N9x24DMFko9WV/9SN1coOcS+L2TjUHnaUmQZM5deloHUJ99nOoYRqkAWe5oQmj3ro83MEx/fnF1gfZZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pgbJoB4ReWfRbGnXfu8lp9X7em8JJJJas3CXpTfTwa0=;
 b=ksEfaI35VbW20axKeMlrCruKhtZ5jijiKPVzhA8UTIz94ibtkeljgbFEVhICBR/kNyE5HwvruYG9uXClxUyYL79sAQAZpQ4M4UbtBpZIl271sShdoff3GyrWauzoxvH6/BeB18ysYaWdI4ceHZ+Fh2vWB1lTcihKHm1Sz9+6MleXOO5CVLnml3oePOWZu4jg+a5j3FMI2WBPfczhU6ClYg9dkudgqSySNZyvY11ZwSfJC87ybMcaQxXWNPKdb5294Jn7Vlm3bGAcMWOqL6sQomdDtMoNIDnT58EXiovOWtkfJ02dz0kqK+0O5Vuib84h7aqVPv1q9z7Loe3ZAs7bww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pgbJoB4ReWfRbGnXfu8lp9X7em8JJJJas3CXpTfTwa0=;
 b=JAMRAO2an9buk9XcFJvykRUSeDCIp7LcBG64BW85IogBLP5354eMhCEmHdAS2/JTQxqNfxNqHFBcT86aZxxUd4nmV4pRJ2ld/cZD+hIGirnLWi4U7P2qatE+w2SxibRkGBnt2E4DuhW+oj7chChZ/XVzxzcyF8fuZE6c4aJeRlQ=
Received: from DM8PR11MB5621.namprd11.prod.outlook.com (2603:10b6:8:38::14) by
 DM4PR11MB5568.namprd11.prod.outlook.com (2603:10b6:5:39a::18) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4778.17; Mon, 13 Dec 2021 14:20:38 +0000
Received: from DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::3114:bfaa:f64d:684a]) by DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::3114:bfaa:f64d:684a%4]) with mapi id 15.20.4778.012; Mon, 13 Dec 2021
 14:20:38 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Sornek, Karen" <karen.sornek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v1] i40e: Refactor VF queue
 requesting
Thread-Index: AQHX1TsxNJSpGlNcNkmEWrzwlXH716wwrp3w
Date: Mon, 13 Dec 2021 14:20:37 +0000
Message-ID: <DM8PR11MB5621D1C88E1486D62629CAF2AB749@DM8PR11MB5621.namprd11.prod.outlook.com>
References: <20211109072744.56924-1-karen.sornek@intel.com>
In-Reply-To: <20211109072744.56924-1-karen.sornek@intel.com>
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
x-ms-office365-filtering-correlation-id: 50a8bcf8-f118-4a61-949d-08d9be43bc54
x-ms-traffictypediagnostic: DM4PR11MB5568:EE_
x-microsoft-antispam-prvs: <DM4PR11MB556816E3D3E69262461587AAAB749@DM4PR11MB5568.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1751;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: kkbo8CpEmEcHwut3mBkb24L8vofk4ewXgBYbheRLdjifgyC6DHgvvidY2QCgWScEF7DdfW1G/32RywaHgpkeW0lSjuLR7Kx/ZFXnlBoYINxPl11kOVVGyutACiWD1a/KnwAFn29q+Rn3AdUMgIquhP4FlwSvAq/yizvuPSTiQ6El6O8WLbTQTrt+FYOnrndcuqqTGGvBXiqEbpoyEtbkJ5UtWYe4xXM2Cl899YOGdusl50pU/g5i9FUNL/t4jbTuUQGMn3X+WvHzvLCbVWm2VWb/rdqkrDUIex70q+WuJ0Y+q3E328gS0YI9Y5XKKB7vpsCpO0UEr2ooKPOpl9e8iSnEOWmW9P1OpT6k8vj61WlQxTZsH8aP7KkmaszGkumQwA0R+0XKrmrfV3LEvJct3bUBGRhjm5u+6XjDuW+vLoPrqn4j4G6J/FvKRecMdN8dewJtXR8vQGJK3u1zKRFGR7kjlcYuMhI92FQiOfHsFV+IYMRDTcWOnY2+sp7kyj7KjnsB6dGPbxPWYA2M7y03NjZPw4etn8hlyFv5edz6q4Wlfk55sdkw1h+gqjM6jZDM37aTmTcqs/qceWVBLeKeL3hbCXs6GNCUW8WBo86/9t1izlOc1O2OpXVjBGqNaFbD9ZpVN11nbeueDro3onaWxNpEZIEXgJzfTqpdHL7f/jAyFZzeTCcnplp6W6Ab3LEkOEI0kkqFw4dGugnACcrEZQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5621.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(8936002)(7696005)(52536014)(82960400001)(55016003)(8676002)(76116006)(6506007)(53546011)(66946007)(66446008)(64756008)(66556008)(66476007)(38070700005)(107886003)(4326008)(5660300002)(4744005)(38100700002)(33656002)(9686003)(186003)(71200400001)(86362001)(83380400001)(508600001)(26005)(110136005)(2906002)(122000001)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?7duELomywe3K17LcE4OJ3zr8PbsWk1oOtjDscDgzomIhACHlKFXBi6cdvA6C?=
 =?us-ascii?Q?XBgP8QacrkqYMWcazkI5OkDRA8/JaxzVomOfBbFegmHb2Lj5S+nz88Po9xP+?=
 =?us-ascii?Q?VZLjKJxfquwEPDcgoNDn1ZvktLq497+VdnqKLk8OtcXt4gN+9Jv+7iUUxg1u?=
 =?us-ascii?Q?3zJ9uU9vW8QVmobtcLwI6+bzKNPgNShC5b0xWIG2fTC/Pdz7KQYItWGcbnTM?=
 =?us-ascii?Q?xb8gezeMU3WXGItzsQqWteYPH4nZBg3pH/5m1CMOVRw2mYiHJqBuGQwfQKJ5?=
 =?us-ascii?Q?hTIyvfQDPekItx+3J2t0iIyco4nK3Qufd6VU0GMzTp/2Pd5z6BF7ubgqFkcw?=
 =?us-ascii?Q?2lY43/kUZJZRuOcUG88S6hv8eUF9zvHs5GZ+IUM6L0DvWK/Iy1cUIEklof4f?=
 =?us-ascii?Q?Hcaur4Jfvw9NClGxgcoRVV2cj2vXzrDDPTG3p7bYDlt4RXgX3aj51uFGH6Tx?=
 =?us-ascii?Q?9TsM1EXSxHneIXM+MOhMtJpNKByeN48ilf9JOit9FswjJBFwLcQciXOzGjts?=
 =?us-ascii?Q?TBuiXxZFd3JbUENPrUNugvjYxL64BA3BxyPvElxYCKk7xYzy5sdEQxKhsKhz?=
 =?us-ascii?Q?lwCSHGQSfeeT2asgeR1jvQY4pxuRd71ej/4kQMrGow++h0kCPIA5957olXU9?=
 =?us-ascii?Q?/T78v2l9Ealwk7Oc2nn3No4so/TxQ66MOpW4+iWZNmoUWjwHTm+1k2eR96wj?=
 =?us-ascii?Q?C5cFYOc6Vu749PnV611Ma9J7l+jiHg03XLxJT0rqI22D+C6hJE0nYx3TJilX?=
 =?us-ascii?Q?JRbItnPwaEZztULjqMyHF8wIFLDUQKfi097b/EUHud6a/zbOmvHjdE4US7uF?=
 =?us-ascii?Q?ZKYa6XrbMMViP+4HbPXV3JoFcrr3djik6eSARMHMN6Pri7Ei65JmrvT5PFrE?=
 =?us-ascii?Q?bqOFtNtUZCBLl/oVGSLt1V7MsGb735iciWEZHvpLYN7HfyzCEbwNnImhkbjU?=
 =?us-ascii?Q?Psf4+y3Fhxqmwvxes/5o2l05MXqF0+ZIKcumWouyfTXOEgCJHSFmjRblZ4we?=
 =?us-ascii?Q?yzEKJUYvOiW4+P/50D9ZRRvFKfGgTTdDoG7kZOJtEj3eGDEsNJWcwssbmnc/?=
 =?us-ascii?Q?DJ6tfKWmSZOaHHyMe/nJrefdCbqb3C7gyI8egRWCqbEn0ijle8+dgeFCggzw?=
 =?us-ascii?Q?xQae6AtQD+dohHThLADaknr5cxkVrvYE8i/Erc+DnapybwZHbzyXKYMw46CL?=
 =?us-ascii?Q?SH8YRhrKBqOycO6ezGyzWqvHuUqAL0CO6M6ZNgofswzT+M6dmL5hk/oXui2i?=
 =?us-ascii?Q?iodASnIHxfOMIF1tWal0CwiRqYtlqCXA+pEgrS1c5a+AsPvI8KkeVbwmqvGq?=
 =?us-ascii?Q?mGpc3y71wjPszrxtwipXikv2RTM3jhAHAgKpU258auRVnd/92BvoEKJC1g/P?=
 =?us-ascii?Q?FnWgG0A6nLnv45nZwKBssIoBIzNNI3BUXlctAKsbKPlDN5a6X+5oRUwV9ip7?=
 =?us-ascii?Q?GxUCzg3i5l3WpzQ2DIB00/ELxHr3fuRxjCo8Sc6uZTKQJ/OXIkm2zvfZvvnC?=
 =?us-ascii?Q?1Jvly2GfreE60mIQr1X74oc1L1G9iMGNQbxQQ+tXum4OtMoEYaCl/VKUWAR+?=
 =?us-ascii?Q?vmqCuPmf6dROPKeUxj2URp0TGiMICDZfwnyG2gjY7nNdBLTInSYE+GuFg6T9?=
 =?us-ascii?Q?k/S35GN5rcM6Pgmyhr3TlGCGAufyY3GSgNiW8ZeN2PGHvZEybIPIXUVWFyIT?=
 =?us-ascii?Q?bEF6/g=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5621.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 50a8bcf8-f118-4a61-949d-08d9be43bc54
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Dec 2021 14:20:37.9689 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xwl+4MGl12r5AxLAghb4xr9//rlr0br9t3LaBuUnardQNiNrn3rzrGW8xhpf3Fw9SGNEWlGenDf/uvG6NMldBBpwuXfL+D8CAHn05t0f9XA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5568
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v1] i40e: Refactor VF queue
 requesting
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
Cc: "Sornek, Karen" <karen.sornek@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Karen Sornek
> Sent: wtorek, 9 listopada 2021 08:28
> To: intel-wired-lan@lists.osuosl.org
> Cc: Sornek, Karen <karen.sornek@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v1] i40e: Refactor VF queue
> requesting
> 
> Simplify changing number of queues for VF's by moving logic to another
> function, i40e_vf_set_num_queues.
> 
> Signed-off-by: Jan Sokolowski <jan.sokolowski@intel.com>
> Signed-off-by: Karen Sornek <karen.sornek@intel.com>
> ---
>  .../ethernet/intel/i40e/i40e_virtchnl_pf.c    | 72 +++++++++++--------
>  1 file changed, 42 insertions(+), 30 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> index 5a488ce545..fa881d9b0f 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> @@ -2669,6 +2669,47 @@ static int i40e_check_enough_queue(struct
> i40e_vf *vf, u16 needed)

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
