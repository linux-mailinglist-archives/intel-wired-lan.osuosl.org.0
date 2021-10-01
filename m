Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C4AC41F0F1
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 Oct 2021 17:13:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DAE36614E4;
	Fri,  1 Oct 2021 15:13:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LDYHhnsQqQHP; Fri,  1 Oct 2021 15:13:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E933A614E8;
	Fri,  1 Oct 2021 15:13:45 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 308161BF41E
 for <intel-wired-lan@osuosl.org>; Fri,  1 Oct 2021 15:13:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1E130402C8
 for <intel-wired-lan@osuosl.org>; Fri,  1 Oct 2021 15:13:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id K4S_oEezUUPd for <intel-wired-lan@osuosl.org>;
 Fri,  1 Oct 2021 15:13:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 45FFB401F3
 for <intel-wired-lan@osuosl.org>; Fri,  1 Oct 2021 15:13:37 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10124"; a="222261659"
X-IronPort-AV: E=Sophos;i="5.85,339,1624345200"; d="scan'208";a="222261659"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2021 08:12:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,339,1624345200"; d="scan'208";a="565056301"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga002.fm.intel.com with ESMTP; 01 Oct 2021 08:12:20 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 1 Oct 2021 08:12:20 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Fri, 1 Oct 2021 08:12:20 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.44) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Fri, 1 Oct 2021 08:12:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gkKDdzkrer4NNHzuy8IWBE61d+QbJyPFTrNWL1npEbbpZmxmy7KthsaMFw+88rFC30X5AOfNKevkW0iVZXdfvxtTfGWzaYfCJZmH8UuDBoRliBxHoPdfVb0thr0SnEDFS9hrhGl9xdkL+M4LOJheD23wr0gaodkQCNRWREq1fiy+y/Ux60CtKrPmaMCUKhO6SSFoBfxXlHplV/dI9ZLZPOo5jj07UMv+Q19N6EtYwtqkvuzdmv8wJ73qZQSDxcrgLQZmCLR4lMw5zFfVJi74mMBX/eZoBvqkzVyfZVSOyqfENGxq7Doe12ELLuHKW8VSRJPrSNee9Epa7Z6WChx2Dg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=W9eBYjELRLrkCJO5yDkS8vKpewjnxxJtHUu352HOCBM=;
 b=Yla1805Vuj3lXMnq1yvABI84uF8LAkku5QUjWiHxAbqZE0uH2RMD4MjE3IfU0omVn9dm6dVGdYMp7u4Q8EhJDyivZh4BTbLQtLj2QxK15zMh6w+vL54jH/MFrHEsB//iBscxhzJ6z7ua84EC/YJ3aFDCCox4mdF/tikfOYFtpifDphwT8tPkxqVmnlnqNYfE6L0/jAgyRGbqxAp1L3EcF6GA/wUUbgxMRreIxoHmBsCvnRZiX8ypiFkJlroVUmRVb8gucgfYzgDrfzUnI+nlH2+uP8s7msFMXfedysaJuQ26RlJtKdrAd44BkF57/WM3MLY+2Ni95CBn54ogyjfuOw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=W9eBYjELRLrkCJO5yDkS8vKpewjnxxJtHUu352HOCBM=;
 b=w6p/y4nSyC2FDWsdfv+TS2GGyUzHoU3e3njoqvzg/6MdNKqsJicpPzWLVcZ0qU3i5N6+5rZdrRLFngRMyygjb8FVA/SPsgp4Dd1Sp8Nzb7hexZhIWVbJ4ks+4F1+pcUbkMXhOKG6RsFuRwjUtbXcTqx3Pz/5UaA21ENgaeQiI8M=
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by BYAPR11MB3333.namprd11.prod.outlook.com (2603:10b6:a03:19::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4566.19; Fri, 1 Oct
 2021 15:12:18 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::90d0:abd2:bb85:56e2]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::90d0:abd2:bb85:56e2%3]) with mapi id 15.20.4566.015; Fri, 1 Oct 2021
 15:12:18 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>, "Swiatkowski, Michal"
 <michal.swiatkowski@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH net-next] ice: fix getting UDP tunnel
 entry
Thread-Index: AQHXqjnNv4iH24mRVkeZrKgMla67YKu+VaLwgAAB76CAAABxwIAAAI1g
Date: Fri, 1 Oct 2021 15:12:18 +0000
Message-ID: <BYAPR11MB3367AF7DB2EA07601748E4E1FCAB9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20210914232505.8117-1-user@wasp>
 <BYAPR11MB3367264BEB0D2D3900A07035FCAB9@BYAPR11MB3367.namprd11.prod.outlook.com>
 <BYAPR11MB3367E3C1301A94EE962CC629FCAB9@BYAPR11MB3367.namprd11.prod.outlook.com>
 <BYAPR11MB336720434076C532018850BBFCAB9@BYAPR11MB3367.namprd11.prod.outlook.com>
In-Reply-To: <BYAPR11MB336720434076C532018850BBFCAB9@BYAPR11MB3367.namprd11.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
authentication-results: osuosl.org; dkim=none (message not signed)
 header.d=none;osuosl.org; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 553dc460-6e68-4180-784d-08d984eddc28
x-ms-traffictypediagnostic: BYAPR11MB3333:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR11MB33338A3C14BD476F6C78581DFCAB9@BYAPR11MB3333.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3826;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: OO85mnMkV5i/prOukhiAHWnWlH8w99f26FnrNW5Trts0cU/rGkSMZ/G64ahEnYfYCtA3xyj1CAdAlnDjaEq+pUccnvlnI6KaCR7pFBsL7/iZagi9iYOsDnmRSE/TrXMzot4efj8nP2vOWxVYMaXhtAy8kRQdCIcI84Jq3dusn6eYu5uoSMK3AWAnqOjprUoQ6evmjWNR868G5CTS1/ZAoBl2XEtGAXT1hkECSKMzLtCviq2tbmYCeeJ+8vlw9xQ6Zs8Ng1JWBwNdXU+UsNwNSaivcCZ1HTy/8nErRXaFP8rwynmW7TQG6BVI37mIppCZzCrRsOKCYDmSQU1C2nU++t3b+hyJjprqcrFvJ01Gi7WHDn2EklCE90x2VfH4jdUy9ydUKhEebZ9f4fq7eWakC97w7VraUKxuXA9lQk+5H9HcwzPu68AR6tq0jEk2X06P6G5KAMrkNSD+F8EC8d6eAoxhbeLbLMaiajHplCv9DvL9krCGnBwP3YviVutqGDszIpPjkv4L/lCSPYBkTx9gn+QRTacT+QFqenmmuI+iPaGxMmsW9JP+bkbLrYMnZo9Kw0CRLBwSJaWf3rsigZvI2yZiER3ZcbH1vvJwWU8ePf11c4r4AiZQwTY9eV0eqwbLQJtgot7mzzx9Sib0k9wf0EJizSASMjGRHUWe8DfKCrtZ7+PFmEALVjrIHvxMWefP3dT+Thfy+GmTRyWDEjYcAQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(4744005)(186003)(55016002)(53546011)(6506007)(2906002)(2940100002)(7696005)(26005)(76116006)(66556008)(64756008)(86362001)(66476007)(9686003)(66446008)(71200400001)(5660300002)(52536014)(66946007)(122000001)(38100700002)(83380400001)(110136005)(38070700005)(33656002)(316002)(8936002)(8676002)(6636002)(508600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?6plUHbu3Ow95s/C3ux9r64SVYHnNlGRJl38HrHp8oUFdOgpJ5XLrliMlj7er?=
 =?us-ascii?Q?NHEg+jLoRd39/5fDxIksRA1RhO457PzgiKHLYSXLumDz9bN2L2CF8qN0xzpC?=
 =?us-ascii?Q?+GtMsWYaOorCY2aTYiMtuqDmIudPK7MT1LHbb5VWKjcdICpenA72y8oZ4I5f?=
 =?us-ascii?Q?Vb2FIAi9zFVOqNgLzvBBh4Hzf7hTffBLKml6/EOgWtOx37UHCxuVg0N5iG8O?=
 =?us-ascii?Q?BNtqHZCfZzX0gVdnvu0I0yDMhCvpChbjzECvN1E6Q4cG0qsDzTMfVEPMjhHt?=
 =?us-ascii?Q?yRDQ6Us9ompDyvPX+GjYBGwJBqzzve2+0PdKLM+iynpFnsjNhAeyCub762f2?=
 =?us-ascii?Q?E6sNo+UVCOu2pJ8nUKhKyejsibi3PlEnX1eqkFafeBgdzzcBeYe5o8ZMd/d7?=
 =?us-ascii?Q?fs+esUFiYmTr9W0mlTb6l62iH7Yyae2Z4wVyieRwXVlskJ8TCDxSHokgntj0?=
 =?us-ascii?Q?V/w1ySZzBY8NU2EDNtxQbaOBBGHSTLkkPPzR2/IM7yvDJxFdyu3rB1GpvDwF?=
 =?us-ascii?Q?r8W3AVFgVWufsXVhxUCp3cbC1k2yu9FJV7VZQBrDDnUDInp1Gav1jOL243MF?=
 =?us-ascii?Q?BXoWT5q/OpY6h0wYGLu4QN3VX6KYWfksOWyzIZxXJTzG+2ta83tybQjFtJlA?=
 =?us-ascii?Q?P7cBEq+VIotsqTT9+WMtjqhI45rz1UVY99JsnGGzvWlsGO2LCOAePMlD5Mc/?=
 =?us-ascii?Q?d2WBUsXlMUpFodjlEh7Bs8TtyyIGHLEfrrR1VhtQ+2Tq4t58uup4XaRsaL1v?=
 =?us-ascii?Q?6761NE2IiqrFaWLbQ2k7RnHGrBSLbzRVKarx2MarrXpNimTY/A8gLcb0Ou91?=
 =?us-ascii?Q?Ev9N+1U0mtyQ3Js7hzdXfXJnBolTkLBtZiOpNSh/mdCdsJZKxIp2kwAaCSj0?=
 =?us-ascii?Q?k3hXbcCuE+IOyyxmO5awr7ZTZB3ejmt3k3R8Ox67jLLPOI4dFTy2dj2Sx0ym?=
 =?us-ascii?Q?fUJ7SseHd1NSoBFvatwDwHiihO6pO3H1DmycBDF8SO8F5uAgAQEW/W682VBl?=
 =?us-ascii?Q?a1WBWGU45l7dPkTtLfNd9YjugYHUEJZ/CsT8aIiLkTORIPDlWFl556cHLO2C?=
 =?us-ascii?Q?aV4mKkr6z3290OKE9QFDKvjegNXl+DmfKmDq5HKki48dyAIaR4i1v2/7jRQL?=
 =?us-ascii?Q?e/pVaISEsvKyYn/ovXJ9ajdtXfXYkBRX1lOPm/mQSYcMOA8PaZAgkA/epwm9?=
 =?us-ascii?Q?G21cI7UwEv6VoVdl3LrwEtrdx9UO1Oi2x/JS6+PNrwVPAJo1OUhxGUu7P2IG?=
 =?us-ascii?Q?tAHb/bejGWSMXN1qzydWe+9BprL3mjFWZRiw3YLeppV5TDgcgOjiallPfVhR?=
 =?us-ascii?Q?ZJ01s15/KZLaJ3/2DQ8NgqEK?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 553dc460-6e68-4180-784d-08d984eddc28
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Oct 2021 15:12:18.4331 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yHlXNQAEYk8MNsf5EomADChh4dSOiYcl+vW7w4o5CMpV6F6ai/vJg6WxZE48PJyM/97arboFillQVATEisye/g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3333
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next] ice: fix getting UDP tunnel
 entry
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Michal Swiatkowski
> Sent: Wednesday, September 15, 2021 4:55 AM
> To: intel-wired-lan@osuosl.org
> Subject: [Intel-wired-lan] [PATCH net-next] ice: fix getting UDP
> tunnel entry
>
> From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
>
> Correct parameters order in call to ice_tunnel_idx_to_entry function.
>
> Entry in sparse port table is correct when the idx is 0. For idx 1 one
> correct entry should be skipped, for idx 2 two of them should be
> skipped
etc.
> Change if condition to be true when idx is 0, which means that
> previous valid entry of this tunnel type were skipped.
>
> Fixes: b20e6c17c468 ("ice: convert to new udp_tunnel infrastructure")
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_flex_pipe.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
