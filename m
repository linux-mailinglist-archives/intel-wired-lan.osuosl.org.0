Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B2CE767C78A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Jan 2023 10:37:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BAD3681F6B;
	Thu, 26 Jan 2023 09:37:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BAD3681F6B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674725856;
	bh=675EbToGSFyOJDHT41tF5rfJrhI/7R+jdvNRWfOwJj0=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=m5J6tPduTmQUFgZfzE47IXTRTFH8jH1/+1Uib/vt15hO7W9Ew0cIcLn2d4ZuIpTG4
	 Hu5IlwsGmsLMg7OPwhPmfFvPFtwd60rK4nXjR4xvB77UcZ6YMJR0Xlw4xAC601Ep+0
	 VnDYQFU0wBKYKyk1eteRtMH5TqE2sYeblmp1SuZWAf0CdpMmzvBIUzmZ/VEQsGrr4D
	 PK/nHIhrvSY60RwvOPQ1QODHxqlyDPk+ltqmYct0Uik5sDRTv2gfarmCFKx5LMT3IF
	 wL1WmY70VTy6wqTQmFR8gQiud8WzxUoyXNeRMM6klphWlZN+cN75GqNL+o0Sh0WyEN
	 3aloOBlA+Rvsw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JmHFsEFuW_y1; Thu, 26 Jan 2023 09:37:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id AA109819F6;
	Thu, 26 Jan 2023 09:37:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AA109819F6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 22F461BF83C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Jan 2023 09:37:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 06A834091A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Jan 2023 09:37:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 06A834091A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9Aq6HwtsjHWJ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Jan 2023 09:37:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9C68440908
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9C68440908
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Jan 2023 09:37:29 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10601"; a="354068171"
X-IronPort-AV: E=Sophos;i="5.97,248,1669104000"; d="scan'208";a="354068171"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2023 01:37:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10601"; a="662797906"
X-IronPort-AV: E=Sophos;i="5.97,248,1669104000"; d="scan'208";a="662797906"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga002.jf.intel.com with ESMTP; 26 Jan 2023 01:37:28 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 26 Jan 2023 01:37:28 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 26 Jan 2023 01:37:28 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 26 Jan 2023 01:37:28 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WjOkeDuU0JpRSsw8IszjK8p/bSWE+5X7wmbf/+bNG4+HINTp55FTvZ8E4WSzUfgNa+PFC/D8JO1/sEIaeidh5RFtSIFvzsxxAsfJu/66i51YCQgC22XVJpX+0xw6E2XSp6PLzydDsG4YNGxciuaOfzF77KZCxO9CAt4s2MuH0KjcN+0PXbQjioIEAOsvlr+KqAkWF0MNJMkgpizBCxXflZZmyP2/J/Pk2yYHgY/q67z3pn5VFogrFlI248btM/L8cPKhoFCH3GrB1YIYBxbeOkEU+3SzioJrD6zcS70ZwPgMYFhskG1LSElHm3ZaAB3tgQKPu32KDTtgFqjxWT4v4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=i4QxTIB4PxSexdOr4avSIFbS58wbEvWlHo8OCscJZGk=;
 b=NtGZErrVfId7u6163OrUr+qElcL7rpQQt6KJnw/Hui3mjfrSTB1ny0rn4RWFC9o15x5U5P7MWIzC3LxIfw+R3AACdJmZ3UPg1n2RlQoxVam72WMPeJ0WvHGA/gr14k8ZcxNveUTeHwDDa3ErLzQsGIPjiFjxCzI+e0zILo7ZEQ19hmTimpi1mLZ31JQQ7A2NhmYbp0QPAeWhWT5uK/cJ0igHDX5Gd8I7GNSBHyXb6hGWsfSbXCRYfyiErOlHvVgLIjVeeEuPQZVAusqjSOZNdwUB4142GlMKWesBckrPouhpPNUe4f4cA1MLdSR2IT84ExW6vTrUY//QDq1TwQ2JBg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7364.namprd11.prod.outlook.com (2603:10b6:930:87::14)
 by DM4PR11MB5470.namprd11.prod.outlook.com (2603:10b6:5:39c::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6043.22; Thu, 26 Jan
 2023 09:37:27 +0000
Received: from CY8PR11MB7364.namprd11.prod.outlook.com
 ([fe80::d0ef:473c:502f:986e]) by CY8PR11MB7364.namprd11.prod.outlook.com
 ([fe80::d0ef:473c:502f:986e%8]) with mapi id 15.20.6043.022; Thu, 26 Jan 2023
 09:37:27 +0000
From: "Szlosek, Marek" <marek.szlosek@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v2 07/13] ice: Pull common
 tasks into ice_vf_post_vsi_rebuild
Thread-Index: AQHZK6Piun3RZMebZE+OE3WuWKeURa6wfDfg
Date: Thu, 26 Jan 2023 09:37:27 +0000
Message-ID: <CY8PR11MB73642207D7C47311AAD917EAE6CF9@CY8PR11MB7364.namprd11.prod.outlook.com>
References: <20230119011653.311675-1-jacob.e.keller@intel.com>
 <20230119011653.311675-8-jacob.e.keller@intel.com>
In-Reply-To: <20230119011653.311675-8-jacob.e.keller@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7364:EE_|DM4PR11MB5470:EE_
x-ms-office365-filtering-correlation-id: aa634059-b0f3-4566-5df7-08daff80eff9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: MzKc1PZx7v8Qkf4Y5OuVxY9UjJESnhatC1Oc45D1VTOLolFbMeV56k3efgyAExPO38/SZ+2B9hSfi3MT+pJ2dIrwj1fKEupPU5xjCZOcdC3zkr11fFlEhNlSadaUCzjb9qtD/Lv1T9s1s84Qi9DrILxDhqxY/XyA/QYZv/RmhxRYV46SMEmJyIy3sCAKyW/nVfGaEBP75G/DbDpAiXdKnfsOdv7gDfvycYSBo6anIXZ5oFyC2FrvTNm61ERILWg1t55SA1dbkykx8lU08dn/wS/jbOnvAr03PoUZc+Q5bpp0c/SCJ2K18OLzLZCeG95Hn6/7ADQ9sosN6l9UKNsJWhjkKXhJ9wbJCtrU/ktUTZNM4ywyovBWbGYEuxrZv1/rmLuPk88EX5lYwxEqzLhnUcGWowyc2QpkActR41p+YCdEgBfqBHwI6gcwSaL89JlYr1GEndDBlIVsNE+2ViaWem1J3c50RDb9E8DiENL0hI+xWk89xRmk6pDZap1r+IloaibQENMVzdL8mrwS9xXiVOaKJUkpTTsHcV/+mHavokJpkXzbGj1/Ed1SQAzbi5zsi8rHXokohp9F9tndAyHG2rtGBJzotEDGrBy7aSu9xlsKb6gZvP/qLO7SW+ZlOWbo1zjMLiTMXvIczauUDQZw4/3VtNt7qsKzX4q+yN9rktK++ndBUJM+8CwhXNv9nVgzoMCjELYq/wtOhdxj6deHhg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7364.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(376002)(366004)(346002)(39860400002)(136003)(396003)(451199018)(316002)(38100700002)(122000001)(41300700001)(8676002)(6916009)(66476007)(66556008)(64756008)(66446008)(66946007)(76116006)(5660300002)(33656002)(86362001)(8936002)(38070700005)(52536014)(55016003)(2906002)(82960400001)(53546011)(6506007)(26005)(9686003)(186003)(478600001)(7696005)(83380400001)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ctCDTEEipx4aTsyAcNmEx452unB/d1dTysxXVEJj5ft7SM7z0oJuOV02x3Ie?=
 =?us-ascii?Q?s07nw+6d6cWz9vygtfPJeowLzVO5ScAv4P7B2ieSVq7p94xSe2G1fzFy6SYl?=
 =?us-ascii?Q?8cegHy8Ob3n0LNIym2XNvoBe0wxxc51Krkq/WkV0RhY8uGLqDz/tk0N0+wgj?=
 =?us-ascii?Q?EMT3Igusp2diJl4XYKVTbIggci4SIzPB8ptK5OJnh1/9HNp4Yc9e4v8kKoz1?=
 =?us-ascii?Q?gME5QXwvMkn/jlUR/h9NBKe9Ec+/puP+q5lTS1Gj9agIqs3hbdfdeccOHw35?=
 =?us-ascii?Q?gxVVMgu2hDQcnbjkoc++8KNfbkfzzOliYcnd/W9mD4UfxX3nik4PwaQGgcC0?=
 =?us-ascii?Q?3Xfy3sFJCXCqSWvp6EjRsYzXQVAasRf6NC4Hhs0nLQgSywgRUV7WDm6mPZZC?=
 =?us-ascii?Q?RAmEBqBcfri4XYjnHOBEiHpIuuFElI+Us0QSrJx6FmNVaXxLbMqwkIhHWtbT?=
 =?us-ascii?Q?fF6C9XbVdRGJWPZqCWgoKR2f1E9+ERpVrID2pJTiOtgiGyAz1KMix1H/J1uS?=
 =?us-ascii?Q?1GIe/8iJlotNL4NuhZivfwiunRIi1qTu9VMqOgOCVt8jHQJp66ynQHt7q107?=
 =?us-ascii?Q?JVd6eJxOcWy58FcCgZJ1jHI8OdIMU/AljzboRmb0Crkr8npEzJnMb04Zcs/7?=
 =?us-ascii?Q?dGNY9P4bGTBHmEAL06MEdPeUduhRKB48DChpZipN5DS8HG6Bgr2iaQIdq/aQ?=
 =?us-ascii?Q?Kjid39EjopIEyXhN/SW7P0hvo5jSXWOgJqe/VxN7cNhkihaosfftfp3SS6Tn?=
 =?us-ascii?Q?p+O4GQT7AcaG2ptxTOfRnIx4DcUnJl/i+aDLE0FsP6Bk7j5rO7jW8mC43D8N?=
 =?us-ascii?Q?KGloF23uAW6EJKbAP7U5rQ1ZnIZgnIAtdZDJGsGMFARr5MmaDeBBffu2aSlz?=
 =?us-ascii?Q?q2uGUtUlivoO8/TddUVZXWnmYJgGMa85IsgyDAVtsnOFjsY45+p7hZbCCl2n?=
 =?us-ascii?Q?dRosU2dmBywiePVn4qL9AlPTRr71IGN1nnoWHyfeWSu7/tDrPjwqLSfq4ebe?=
 =?us-ascii?Q?iJNUGmKH5ClhApRK38Zx905S6R6hyZ8QI4EssKf9bpwiXF7nE5iAIyko+oN9?=
 =?us-ascii?Q?Uvu0SA5kuap/MyeaSztiSyGoRfPbILvcpLToWOZKoNojfJZI771ZgkI+/HdD?=
 =?us-ascii?Q?Fx0B7heMmQst0E57dzC+AOD6D4d3ZjYtWGzN8JmsKcLz0YskE/bcPA8/U9fW?=
 =?us-ascii?Q?2xF/3Cr3CyJ7brv1tEBKR02dZnyWlVbUCimP2WLnqq5UnfDwSvOb4tpYZJR3?=
 =?us-ascii?Q?4EaPFct9RYykO7nQi+FnFAJvEhgcew3m3HUCfWDz1mbgqqSxYWni/wYT7Ez2?=
 =?us-ascii?Q?PK8heLITzwrtjejRJjdbijyeElhLI9es5yoZqB8Nris2EfBcxVFTeJQi1g2J?=
 =?us-ascii?Q?KAmJB5UuVbXIHiBzviPLCk9dHivp2RFfLmC/eVSbIddb8EKm08MrMZxFF+Dg?=
 =?us-ascii?Q?TuPa/Tk9ma6cV8t0AyqLb7xq8ceGx/fR+eOefNXJAEOB5BiCK8Lgu+e8sU0N?=
 =?us-ascii?Q?9I29iBGDLHRf9bA2nAObHC7n1GYmZ14YGunCnBa7CDZFJKPrHr7jgFEotGXM?=
 =?us-ascii?Q?n/269QwFkft/m/+jNXgFZ8HaZjxtJsaO9R5L3Gtq?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7364.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aa634059-b0f3-4566-5df7-08daff80eff9
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Jan 2023 09:37:27.2871 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Pa3O9mlV1pGwEw9gVyqFoHRYWQG6HKqTe0ZsHnr/WaXFof2QnEBiC6bx+T0S5qzU1QEdD5ETYhzJ5kzcW8o74Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5470
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674725849; x=1706261849;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=FihLLYVNrlk3NnrgxorrHt2oAUFXrVEQhgnhOGGwSqI=;
 b=JzZUVHU6sVYn0K5zsGMQ0p4qId8cYtvDzq6i9JJIFltzHF+uJ/pgRTyp
 IGCNhSv/cF6kTqqUG7yYAk0XmP1lh2S0LRvkMZ2+ppGRZ+mLK49H//i4V
 c2EyQNyZW920OQ3jA2EZY1jEobZrN8PXxwJzcJ7jhO8TTOJodpvrHrbzo
 4rR7thecnQktgC6YXSXeyCwkp3zF0pHR+fBTPIWgmD3007UIbsUFp6xiL
 k6iCohwANkCEO5a7jYrYYz0KAWGmpZgqY85sEvPeu5KhNYk/dKxFuaUuG
 h9dwxm+BXGh/rjZy2WOy8hlKNAVETDCDQzNBVGxhYsfpoa4vA+5v6SKz/
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=JzZUVHU6
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 07/13] ice: Pull common
 tasks into ice_vf_post_vsi_rebuild
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
> Sent: czwartek, 19 stycznia 2023 02:17
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v2 07/13] ice: Pull common tasks
> into ice_vf_post_vsi_rebuild
> 
> The Single Root IOV implementation of .post_vsi_rebuild performs some
> tasks that will ultimately need to be shared with the Scalable IOV
> implementation such as rebuilding the host configuration.
> 
> Refactor by introducing a new wrapper function, ice_vf_post_vsi_rebuild
> which performs the tasks that will be shared between SR-IOV and Scalable
> IOV. Move the ice_vf_rebuild_host_cfg and ice_vf_set_initialized calls into
> this wrapper. Then call the implementation specific post_vsi_rebuild handler
> afterwards.
> 
> This ensures that we will properly re-initialize filters and expected settings for
> both SR-IOV and Scalable IOV.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
> No Changes since v1.
> 
>  drivers/net/ethernet/intel/ice/ice_sriov.c  |  2 --
> drivers/net/ethernet/intel/ice/ice_vf_lib.c | 19 +++++++++++++++++--
>  2 files changed, 17 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c
> b/drivers/net/ethernet/intel/ice/ice_sriov.c
> index de20e50623d7..6ff29be974c5 100644
> --- a/drivers/net/ethernet/intel/ice/ice_sriov.c
> +++ b/drivers/net/ethernet/intel/ice/ice_sriov.c

Tested-by: Marek Szlosek <marek.szlosek@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
