Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AB5464ACA79
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Feb 2022 21:32:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 469FC60C01;
	Mon,  7 Feb 2022 20:32:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IdCDZnqP7mfK; Mon,  7 Feb 2022 20:32:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4520B60B53;
	Mon,  7 Feb 2022 20:32:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 672BD1BF38C
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Feb 2022 20:32:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4EC3440422
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Feb 2022 20:32:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jJeNIZ4tM2GB for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Feb 2022 20:32:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A1D5040400
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Feb 2022 20:32:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644265952; x=1675801952;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=2knkh7ScadlNJKPgdeZVF/8Yrqn8AbnufAiNJHLJwEY=;
 b=h/m1VpDG/ywZciQkhFFGx12++oF4AmLqShlOC8nDA0/g2A6yFgpPr/xN
 nW15BXTJnOV2YbO+rI5MDnWzTRsAy87dXXaPiKtoHcc57jQUg86wdg9yq
 Rca0ZMN91Y6mBkKLINubnKrMXXMLg5/VLBISA95ql0WS0o7YK7MRUiVnD
 eZQN+IakSKFGLmZU15b5wI73YDWMSKsPleRsEPXRxBru3EzoitUMlUfu6
 8u5+uHX3I/quPdpRpBreRkaZewiYvTT0RsNbcF26a8w6/18R1FkZVoJqv
 A6agDVVpD+0obL0CbzxQIVh1WWxVW8W5Kf/nvD46638qkrvdW7Gj/IVKj Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10251"; a="248751940"
X-IronPort-AV: E=Sophos;i="5.88,350,1635231600"; d="scan'208";a="248751940"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2022 12:32:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,350,1635231600"; d="scan'208";a="540265317"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga008.jf.intel.com with ESMTP; 07 Feb 2022 12:32:24 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Mon, 7 Feb 2022 12:32:24 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Mon, 7 Feb 2022 12:32:24 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.174)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Mon, 7 Feb 2022 12:32:23 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Y/4pD8+eCsiG5GYBVU+kgR5NvM3lAvakp7U/okTtC5v44bePnQPRbiqqezge05uxUPGWC8joj4Txpr8bDn883etBYlR0NHYp3Z4U0q8Va+K+uN4+52ll6Dw7klrhKD6psoQg6st2HH7bC9slvpZvaHeySGgwD0ClLKxfc3WrTWFdNhZt/1EyCMMynSzZoDmXNhSxkCD3NbDel2F0lMBcBu82TKeEjF87XX/DBlHl3AaCZMs31nuBwtszbaLGlV5nQmDsWc0+SNbyDzaR77ZDR+G3cWdfL7ItLkNB1IGTNOvY/Tfz4rhv053Dzsxw0D2nT6IGoOhO25fWi/vgnHkZMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Nra/yAlEtDPUQR7Mp77+sz17SW+BJZ5hFEPTKDDH+lU=;
 b=bJk5ZVhOknohmTGTsliJayozrU08rfFUKoXLa/jgcyhsc0+Fd4GdlfqAu5KDZktILLSzDWsS9MtZcBQoEbzLdZ/PDST3EsK/w1Ab8lRuwWxlG2eOHhbQ7Xi1QFxP2e5jE/oSDjKf1nyU/FslfQBjbL4J8MgbXdmH7O54uhtfaN/vr5BF0mG6u0Iu7tq4WNAwhZl3OiVZZvlzyJx0rwWLC6yhTTDwjFhUlJ34MaJMonKzzQqmkns45J9XvpH+vroXUwWPsEustMH9WdcWfwGllWwQEsoaPFMmUOvVjJXbdU5NzxumYjkifgmrb/eFO9U9FUMyebafkh7SWNrmMk3bvw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by BYAPR11MB3191.namprd11.prod.outlook.com (2603:10b6:a03:79::25)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4951.14; Mon, 7 Feb
 2022 20:32:21 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::3162:31b:8e9c:173b]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::3162:31b:8e9c:173b%4]) with mapi id 15.20.4951.019; Mon, 7 Feb 2022
 20:32:21 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Brandeburg, Jesse" <jesse.brandeburg@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] ice: fix IPIP and SIT TSO
 offload
Thread-Index: AQHYCZ/4Q4ubVpvLf0Cp91IepirhQayIsDcA
Date: Mon, 7 Feb 2022 20:32:21 +0000
Message-ID: <BYAPR11MB3367141D5AA953CA64369E7EFC2C9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20220114233839.67979-1-jesse.brandeburg@intel.com>
In-Reply-To: <20220114233839.67979-1-jesse.brandeburg@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7141d96a-78f7-4746-8486-08d9ea78f168
x-ms-traffictypediagnostic: BYAPR11MB3191:EE_
x-microsoft-antispam-prvs: <BYAPR11MB31918D158ED36A3B53D89174FC2C9@BYAPR11MB3191.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:862;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: P/mbgQHFB38+q62n6a7HXWw0pgWRIyfc464K/FXYaE5AtXvWw2IhDJ5l3HIBcu8j7tTqpqFeXY/GMgvr2HTe4Lj3DF2suRuqN1sreXZMQ+5ULdyxQ/Rqc45qGvQOkPIOjH6Xk1erQTF4BK+OgQZ1DqD2e4HawuYzsP7zqBL0cld4AP19l3IN3Y4Akm/DZxQFhJWlniiFrCKDVH/2dEsXqxQaMPQVXcRcS1ogdjaPIDUaAGX9pqsWZsXDnUhSqfd7TY+kvQ7brjCepsUnm/JCG95idVofMwNraj4O8t69b5LlUUMu0v9duqepxHwaoZltUDQW5ye0+w/4MAxqkdcgxVwcVuyqWL5E/9zvWGMHmY/scpl2Zmf1rLYe0kSOIxeaeMuPolNf7KVBRT2QT0uww1RJTJbUaY90u/9lOA28IX8nec8J4ZYjAy/XXh19BdNnvNT1mc4ZmEZdrp+O2OMILLboISIeVRP61m80A8MBVaYF8CkWjmmkfr+zh1L8UBuxDcpjCT2IrkqeK7QF8QYLfaqyrpv79byYxdCmj8mraqDP7tISN9gs5lO5lf2PXnnQtxgbidzgTy8xEOiQuyQsdPtsJGfj6G1mr9pbZ86CAT194RDq2ok3Cs98CGQxIE5f1mAqyb/M5Piur11xAN0tyQilad5AWbC44Yt6RY2zLpNrJT+qtQSBFzkbOWqoNkRnS454FXxJsRsrpizYpP0Tdw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(52536014)(110136005)(33656002)(316002)(86362001)(7696005)(6506007)(9686003)(83380400001)(53546011)(8676002)(66446008)(64756008)(8936002)(66556008)(66476007)(66946007)(76116006)(82960400001)(71200400001)(122000001)(508600001)(186003)(38100700002)(26005)(38070700005)(5660300002)(55016003)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?dfO73Pv1c+rSSxcr7ozDNI5ALlm/9fBTDXD1B6oIs1TXoiHsMR7Ljjcb/s/G?=
 =?us-ascii?Q?DluMmHqqSWroHeBhbH60A6N4ESv7+imldaexdeGLlTRA+KHu5HEFklRYiw0O?=
 =?us-ascii?Q?teANUwbwUxUCGyQaEMqHi+KxXoG+vDEhi4TD0klvVjkMP9KL69TudmpOEM4m?=
 =?us-ascii?Q?Q20ZB4d1kN8eyZtViQ8CbbSLZEww8GqSDHWSjwccXSnFHtU5ahWFb0TrbI03?=
 =?us-ascii?Q?cWFXBB0v2L2iWlBL+yw4PRNDty6/AEEbPnN0ftIK9vGqn1CIyJpIYNxK2nxG?=
 =?us-ascii?Q?6v1LHb2zuTuXEzd/oJEgEuIuyuc6TIxtjF5Tz5cefevq/Huwvd5CP9zwZAtN?=
 =?us-ascii?Q?hu289KewHJfOap5N+yrHYVVhhIjQnoyjBax+kmyMJtLYobxaqCrLSCtslDko?=
 =?us-ascii?Q?a1iZP7iFRIDyMFWUwi0i+rMSWkvrl7bHrtmWuveBj8J+tJ+d8m9nOh6w1K2Z?=
 =?us-ascii?Q?6ToIzp7iZEAYXbs2WwA6eQYFd2FVo7fC7Xo8ro4rRzEjH7Ld8Yf9Y3hw6gOL?=
 =?us-ascii?Q?Ymw7x1W494VB1t/Pniun5lHWocX9oZK9skr+UUZuEJiyeTWtFVDB+jnvUjN/?=
 =?us-ascii?Q?eSM1BfDfLurvcxZvYAW5j3YCSss2sWf2bVq01AhTk57CUkucw1hhxHs93Yj9?=
 =?us-ascii?Q?qhzt5B9C4pEkYhC06rzmiYTDdeFAmVU0ft98dlc27FreLJ9sj8Qhxhh41GDs?=
 =?us-ascii?Q?aa9IYFUSm3hCA0MDC5N7uNPSgN9E0uX7tdwtGzLYMWr2wo3muKQQW/+oHIPo?=
 =?us-ascii?Q?CIUPMJ82ScsOwsnr2rEoJa56FLFTqgO7QJ5OcpGrsQt1YF+R+N0xA2hajB9X?=
 =?us-ascii?Q?rLVNp1giANwGugrnRYSCwi1lxlbQWmrmf+WZj0HGXFenK14BM+gA4iNmkbBF?=
 =?us-ascii?Q?JmlQY16h/+MWyMiIcZwoN2K8J2eRUNXbzGyZqnLBRu2MGfrqNL6d9OMxgkLC?=
 =?us-ascii?Q?TeD8P+oe3HZH+KKTR36vlch37Qp83OC/fKLH+fGtibSt8bdc68APJ7quWbP1?=
 =?us-ascii?Q?phFWBDNyehx9zTB8XdqKye7k18mdCAu3XjQJILbKgft57c7HEjPq9KjYGF3x?=
 =?us-ascii?Q?UHNpb8wsqMwTYt6ngDfxpJgxyymYudnN4GB+QRU+ZFQSLgiMjVNR3KstJ+0S?=
 =?us-ascii?Q?9gHJHDy9qek+rYkuoFjXzIGrVHNubQeXRsmgXuKOeZSCufITG5I6FI+1lQP/?=
 =?us-ascii?Q?dg04Pnc5/Vrp+CV2xrcxUFm9kANHyEtUbr3bgypKsHD1eJedjrw+On5S10Cp?=
 =?us-ascii?Q?nSSYHCaSSv5a50FYMh7+OTVCTzhYHLCLGanxqoMaFN9wwmAj7gvHy495UZ2b?=
 =?us-ascii?Q?kGW/cMoYpIvsKh9OldlolbXr/bUr+cLtL61bkZ2QMLo0kV4BhGU1HQZjJzcP?=
 =?us-ascii?Q?E+d2ri+wwaSJgFm5YcPomzW+oRzzUbHrwkZqISWPCkLFDXy6fTJTtvPiU3iU?=
 =?us-ascii?Q?C5T2a/5a6IXzdBCPaRDNO594EDoPi1Ew5yfZSw47ANYp9v/Xx0jE45ZYLFFP?=
 =?us-ascii?Q?s2Nx1UPuRYOX8kwMCdb26UsFGU6eSZP1omXhPk+fSO8Sluw/TWODb2TMmYyZ?=
 =?us-ascii?Q?4iP+hujlQ2EWXSrN8tfGBWks0kuDcCDTeuxq6TwBqLFG8uor4EutemolFDsR?=
 =?us-ascii?Q?/w=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7141d96a-78f7-4746-8486-08d9ea78f168
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Feb 2022 20:32:21.6144 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xbpIo8Sy2N5AKESdORjkOZ4jdtpU/q4HRFfujNY1HkD7Cw2pg/YYasfes2LrRyBM4IlNgnUwy6cYCbw/EdgYcQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3191
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v1] ice: fix IPIP and SIT TSO
 offload
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
> Jesse Brandeburg
> Sent: Saturday, January 15, 2022 5:09 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net v1] ice: fix IPIP and SIT TSO offload
> 
> The driver was avoiding offload for IPIP (at least) frames due to parsing the
> inner header offsets incorrectly when trying to check lengths.
> 
> This length check works for VXLAN frames but fails on IPIP frames because
> skb_transport_offset points to the inner header in IPIP frames, which meant
> the subtraction of transport_header from inner_network_header returns a
> negative value (-20).
> 
> With the code before this patch, everything continued to work, but GSO was
> being used to segment, causing throughputs of 1.5Gb/s per thread.
> After this patch, throughput is more like 10Gb/s per thread for IPIP traffic.
> 
> Fixes: e94d44786693 ("ice: Implement filter sync, NDO operations and bump
> version")
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> --
> Testing Hints: test IPIP tunnel and VXLAN tunnel, both should use TSO.
> ---
>  .../net/ethernet/intel/ice/ice_lan_tx_rx.h    |  1 +
>  drivers/net/ethernet/intel/ice/ice_main.c     | 25 +++++++++++++------
>  2 files changed, 18 insertions(+), 8 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
