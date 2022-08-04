Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A72AA5898DC
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Aug 2022 09:56:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2ED1740926;
	Thu,  4 Aug 2022 07:56:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2ED1740926
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1659599810;
	bh=9eWZ8ke21J2W6hSY5oW1JIduC44m/n3N021iAzro0rQ=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=5srTFw9kQNgyBd14xr9GDjfJXAgswgwyOCK/8XtBRN8saR3mZ1QqaXyDlGfLcDU1v
	 PIyEAC7LkT43rtxCqVdq96uIYXwCWs9hl+nUsU4quDc/1Bwotg3c/6Jj2TbqVQlLSE
	 q0hZilcPLckRTmzTxvgEmOZMeFLe/sZWkiMsxsDopYG0iU2xdALX+HimQyAViTP+jQ
	 IWUEOJE0Ls7xO9la/1lEBA1LO8uiWujUHx9KagRgA3bMstTmrXI7Hn7qQLNwWmnofv
	 x4E30MIBEh5mKraOFnx8eyeW2GW/LywbjNR/QfIrjA6aQ21fBGQBRNVFPTun8V7EJC
	 OMiEowNLnDD9w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PFO6-CF2ElBR; Thu,  4 Aug 2022 07:56:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C84C440913;
	Thu,  4 Aug 2022 07:56:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C84C440913
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5202D1BF2C1
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Aug 2022 07:56:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3854781400
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Aug 2022 07:56:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3854781400
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ugauq_Igekid for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Aug 2022 07:56:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 60700812B8
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 60700812B8
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Aug 2022 07:56:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10428"; a="376167805"
X-IronPort-AV: E=Sophos;i="5.93,215,1654585200"; d="scan'208";a="376167805"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2022 00:56:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,215,1654585200"; d="scan'208";a="729497592"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga004.jf.intel.com with ESMTP; 04 Aug 2022 00:56:32 -0700
Received: from fmsmsx604.amr.corp.intel.com (10.18.126.84) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Thu, 4 Aug 2022 00:56:32 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Thu, 4 Aug 2022 00:56:32 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Thu, 4 Aug 2022 00:56:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=M4ashZLKvoupIAU7pDzZFcLQo0qtaXlMODbMuYZ+d/Dng/ukDdaPWAEAek7Wsu952NuM18GDJ2QWbRAOPmqAQ5FdbhWE25cX/x2IEJDAolmTy/xPlVwK0N67SaDIvwBMZ5nKn9BegJIpFrpY0LKYKvuQdJspYNQ1afdTCnUpsGdMQwAR8gRXlN3TMH7yLfs7zDTyRmavw0S7/H+my7syoE7bzEwvmSPxfnh4Bo63vC53caqRpkzxsMyUPBCqGTsou99HS+6NarvvVVdWGcnOolzyTieTLBJXcjIzbBZan9XNEJMjW8dCCLzlo7gYIKFH5xMhGcUZbKGl7UvADJbzwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5is9uzSgpjkYRTf9ic9nwbpyvG+as/yz0P6MLtjNMS8=;
 b=LMjyMXlLoZkr6pqsLGjVFL4n+4j++IYoV4QMfmcEBZyPZKKjS/Dpbn8X2uSsK5e9v6KNWrmpA/U93vua0CyMRPJclWWPr5Rfn9Ib6en/tAXQrEvqbMk6qccEgAEyGp5R+rGf1GrkW6EDwKftF0kXZLP17167Rs7Jg1SHRjS/MOXTBs6s1BX+sQfbqUJe00eyoW6USOBZZNO/giFYHu0FtdbeVEDDiil2FzahxNioZ4ITUBK3HNC6ymcqkvWa7dyvGoyVE5L+3/A3gW1wm9V3/gdLAJINPQTOdDWLTeEil33jLSyGp0oofz4GmP1wWAYQiDplXQvxbgGkq379F1VZgQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY4PR11MB1624.namprd11.prod.outlook.com (2603:10b6:910:8::12)
 by CH2PR11MB4357.namprd11.prod.outlook.com (2603:10b6:610:3d::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5504.14; Thu, 4 Aug
 2022 07:56:30 +0000
Received: from CY4PR11MB1624.namprd11.prod.outlook.com
 ([fe80::6023:b392:54a4:a0a6]) by CY4PR11MB1624.namprd11.prod.outlook.com
 ([fe80::6023:b392:54a4:a0a6%12]) with mapi id 15.20.5482.016; Thu, 4 Aug 2022
 07:56:29 +0000
From: "Szlosek, Marek" <marek.szlosek@intel.com>
To: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v2 2/2] iavf: Fix race condition
 between iavf_shutdown and iavf_remove
Thread-Index: AQHYpmZyDKhltDMRO0OcgDyvgkr3dq2eYo2g
Date: Thu, 4 Aug 2022 07:56:29 +0000
Message-ID: <CY4PR11MB1624114A9BA552C5BD77FD2FE69F9@CY4PR11MB1624.namprd11.prod.outlook.com>
References: <20220802115142.65176-1-mateusz.palczewski@intel.com>
 <20220802115142.65176-3-mateusz.palczewski@intel.com>
In-Reply-To: <20220802115142.65176-3-mateusz.palczewski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
dlp-reaction: no-action
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e897ea53-321e-4c8d-8f7d-08da75eed731
x-ms-traffictypediagnostic: CH2PR11MB4357:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: dD8DVtcxc5DlkWNS8i6NbpkjXq9aFozfAs9As62b1nvl7WV1XaKR0Oc6o9ZcNzatKjFXDmhuZ1IiUIzDEJW/L1RAYn1yuA1P9NaDSVIxFGHLPw3hzYE6HtsMtYK+BlrbGx5iqVXSwT7b3Bm9aqxjNXBLkCwUFqZQ9ZqqBcKE+Gli9lFpaUYmebQJ3VvH1V1ZFhLfyBJbYA0UOPTwJft3jaoNxfJlLc+8GmRyEKnGCifeHmqzNVKWgJEU0ddwxDSWV1AuNDD0QaECcM4VbMhKR+aieZwZEZBJdv0lAUkPWDvBiaRZKPjKFVP+xLlppzL6l1pSt8mdKzU3xpCnZvHh/SZnjLFMPiGTHPPjBgsDQ/rMqVioKOMG0sY2vMZerMi13RunB+K7Yi6DY7IjHKBODgMwhwrGeH88EfjJvQqHg+yBijFezRUlgXkxXIwphQo5wQXypzopRorIgWc30PwuNCFTQmx1uVgmrTgJuv1WfNBnCfFPW7YsSdwAL2Vv+SKc/uorhL4PrwzDe/uDRCvshDYVY15PR+puX4ievjLPsZQDvZAZl3czWZ4f8xPWvW2plb/6BtpAWgFF+BpnsOZXw2W0/Osc3LEb4jDiFuwSdDTofJc/1/4Ba5/xDCc9vwF473PeMvofdqR7UdmDRSI2hsTuUouBuWPykc9kcormdh4jM7P0IzN6KQ9Vf07mwAp2/Ulmc/jaq1agm6GaHwWmK4YVTdIZO5YL+cbNcZDZeeijzG40meNTZKNifXeLaLM/5v5FCJU35FC6aYvY1tbxrHbQFIgDl0m54f2mGm7DvBrQuwVrZufiYic0GpuV+2DV
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR11MB1624.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(396003)(366004)(39860400002)(346002)(376002)(136003)(38100700002)(33656002)(186003)(86362001)(7696005)(107886003)(26005)(71200400001)(6506007)(9686003)(41300700001)(53546011)(122000001)(316002)(55016003)(83380400001)(110136005)(66476007)(64756008)(66556008)(66446008)(66946007)(2906002)(4326008)(76116006)(8676002)(5660300002)(478600001)(52536014)(8936002)(82960400001)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?EtzaDopaYgfvxMUD0nmkxWL4pWZDVpvabixjol2uQu3rFwVr/jYcM+cjtIzh?=
 =?us-ascii?Q?4oBvs+W9t9Zs/cits1ZnkxwttQdfiDCbBDGujKjz6ktdPHRAZ++GQYxnbvj3?=
 =?us-ascii?Q?i9fGoWsCfvTE3+vGaCAL4xJM/RlkR8TqztLdbJO+y/Pjoj4rznJfQ/fiL38Z?=
 =?us-ascii?Q?+q2bcH7QNz5vxKwrWvYQHhCGiM3E2niX7MPLloBlyNcaWdjKpvsPPNYSVlWh?=
 =?us-ascii?Q?6Mx8D3gfiUEJP+Qr1vXjHkbh7EQnyIZzzSRq+/D5U2mOc2/ryNDU5fsNsI6S?=
 =?us-ascii?Q?mOaZ8FiqffhtUvmwjRKvg19Ipw56pLCNKsTtiaU1aJGAnVV5sWnsMu7gKQK9?=
 =?us-ascii?Q?ybym0DcQ78MtIj3gBvEkV8n2FIsGl22xsYOnIutk3JluMDhYjpLiOmzhtURG?=
 =?us-ascii?Q?t4+R0FCQDgp10u00X/al62AONydnC1t7/WSoBdTsITR9OeMXNS4/PYD7OACy?=
 =?us-ascii?Q?cuh8+dr3hZooo6yDlaQ4+q3cJoXCC/GhZcx8KmRew1zxfKmq3l18J/Y3dbb8?=
 =?us-ascii?Q?PgNAv6ha5LberJBLyW/kiYBzMCFueXByODh3eXChIl5ugloEpgCoPROEAtSC?=
 =?us-ascii?Q?yhVdehgjHUN4SYTVDiQAxWEzuIqySfu8G01F9ThWYGoFfnJYv5Tg1BaVkmGn?=
 =?us-ascii?Q?7en1oQIQ6oghWJe0/tXL77VETZtIuLsQ/1TlBA6i1/jVclfbLHdpjCVVJ8tO?=
 =?us-ascii?Q?/bMh/zqtQZ850oFukAwsroENnrA29UGGswfCpu/jzUIUEpdPYn+l/w4aqkGw?=
 =?us-ascii?Q?yxFmb4yYh5wsqbTZ79Fu10z1S5+K5voz+XKp5zLVO5bq8KD3W+HOF7phHNwo?=
 =?us-ascii?Q?3za9Lci87es2k2fx6ulcfELmCSB6fbPVs8Zdo21rZ5BCDoHLW3ybR+9KFbg1?=
 =?us-ascii?Q?XZtA/24zDqsWFYvCf4WYh8G5DP9yx7/4MbUvfYAB++6xglipkRA7kVcTQOXl?=
 =?us-ascii?Q?ZkfTe38rPL5ex1FuU1e14hh8Gx3QD3soPYGIrTmXtLK7fIUbOkl6lFY1phl/?=
 =?us-ascii?Q?vQCiVnhfnpaKMZq1Zd+Ttm9hti9NA8mwXeLypzv22YXT4RNEXwJE/Ym7zl6N?=
 =?us-ascii?Q?eUlaYpq+rnhV8R9Fa2hwyh4fVQJeSTfqamWyZDbA2ASNy4TIQtpO/mmXQo7G?=
 =?us-ascii?Q?QoOr9R2dXmllCJZabZBfdFhng+LCh9gKpXBnMPqh7U52MWdVyObUZfohc+YY?=
 =?us-ascii?Q?NWZ6NLDCmb59kZF4tdES9ijm9Flr4k4Bk9WO4DWxIr40m+shIt6ATmoiHB/X?=
 =?us-ascii?Q?aKMklwl0ByOH4sDVBF6+FGa9rOiXLPlgYc5wFM2nGHYIXRX207bLJZckYX8u?=
 =?us-ascii?Q?kFKs+2inB4U1LSfFLtzHD/UvXeka8U/5VI3byfVshEVoNTpaEf3/eViPsCrb?=
 =?us-ascii?Q?U+WoNIBC345BpVk6NnP96sseq6ZXyEgx8odHZ43GPn9udnINUnYc9Pz741qk?=
 =?us-ascii?Q?8kjxeSsfuL51y6gjbp+sLou06C21+96rY8OmQsQMTZigXAZql8jMkX5p1aEb?=
 =?us-ascii?Q?5FGj+XutgZUuOPLKjoEXOizFe+kwC3U6WV/6on6otVu8Yz6yfoWxmTZeGeTl?=
 =?us-ascii?Q?lJY2a6TjhkHB8XFDTLJ2G2Md1HOoFxR0ENRtRJjz?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR11MB1624.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e897ea53-321e-4c8d-8f7d-08da75eed731
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Aug 2022 07:56:29.8893 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8Hn8+WvYA0MBnAxcQFbEGuGGCUk4S5LWO4ioWmSSC1lussDTszckPl1C0ExjqXgkTn45GTyDeqvadt3ZuuQDbg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR11MB4357
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659599803; x=1691135803;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+ImHcQzUCc7FiiO+VcoCAhi15utErbEm2/IpYexqzQU=;
 b=HP+6ZlRyfbZVvfni6ZX/KAY/mnacTLh81baZ29SExSLk9FnY5mDx261k
 zio1J3fJK0FnMcK4Jvd3cof6VmeTwHRJF/kPI5BLleGXUHEmz00BEIs1g
 Ls0ZQwG4eHVpRetK4ktSE9ELHjY9XHF8u/Y/+PSQT9cEL49Wsn/+XDUqW
 p4Bgd0ox9DCMvGFigDdgQqMdR/2NMnC79i02fk6axh5fA2Io+OZVDYsnn
 JV9wLx2orPyF5dQ4eaNJO5cnFwvNsKphtSYy840nVVb7tRInjOcCLTRNp
 SXSekW5WAvVOMXm4mJsvJpI+ofKb//mCMKXNFIgqyiKrxqGx5qfqurgYT
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HP+6ZlRy
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2 2/2] iavf: Fix race condition
 between iavf_shutdown and iavf_remove
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
Cc: "Laba, SlawomirX" <slawomirx.laba@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Mateusz Palczewski
> Sent: wtorek, 2 sierpnia 2022 13:52
> To: intel-wired-lan@lists.osuosl.org
> Cc: Laba, SlawomirX <slawomirx.laba@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v2 2/2] iavf: Fix race condition between
> iavf_shutdown and iavf_remove
> 
> From: Slawomir Laba <slawomirx.laba@intel.com>
> 
> Fix a deadlock introduced by commit
> 974578017fc1 ("iavf: Add waiting so the port is initialized in remove") due to
> race condition between iavf_shutdown and iavf_remove, where iavf_remove
> stucks forever in while loop since iavf_shutdown already set
> __IAVF_REMOVE adapter state.
> 
> Fix this by checking if the __IAVF_IN_REMOVE_TASK has already been set
> and return if so.
> 
> Fixes: 974578017fc1 ("iavf: Add waiting so the port is initialized in remove")
> Signed-off-by: Slawomir Laba <slawomirx.laba@intel.com>
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> ---
>  v2: Fixed author
> ---
>  drivers/net/ethernet/intel/iavf/iavf_main.c | 19 ++++++++++---------
>  1 file changed, 10 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c
> b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index 6357dea93b99..d43e8f12d3ad 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c

Tested-by: Marek Szlosek <marek.szlosek@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
