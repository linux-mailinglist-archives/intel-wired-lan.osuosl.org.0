Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C0675606B6A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Oct 2022 00:44:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CF60041606;
	Thu, 20 Oct 2022 22:44:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CF60041606
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1666305858;
	bh=yvhJU3rin01gC4CpX9C53pLVgMolefETs/6ZuoPN/WU=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=r9hlXzFPnZg0+4GOmZ9dG8jmQOC8sgSN/hBn7ztR44puniZE1Mj/9L+W5+QcPXnxh
	 A4haVed/FwkGmUsr1C94/CWa9zZCtUmM7zw6allRXIgVHTYambtKunErwdxEuHTj8X
	 kgN0IzNOhK+72e4OVSRHF4SBocgBNhOrkJAiK3PhmbW+HqQO9GGhfbaK22CmGxNy5H
	 3wIzD5CT5nkoWBJ/Hd8nSW6bmZugrsnqYHsLmi+6NLnXMFgypdtLlhyGUUNaq5eYyY
	 nSnyJdqBqpOLGOTuRySYLbGTNe5poCYZyFz9zMFXt8BI6vh9qVsB+2DmPssUB5F/If
	 dtB5wJ5dyFCRA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CZRQ5S46NQIW; Thu, 20 Oct 2022 22:44:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6D1124090C;
	Thu, 20 Oct 2022 22:44:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6D1124090C
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1B8D51BF398
 for <intel-wired-lan@osuosl.org>; Thu, 20 Oct 2022 22:44:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 023F184391
 for <intel-wired-lan@osuosl.org>; Thu, 20 Oct 2022 22:44:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 023F184391
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5jH3AYYAT9ve for <intel-wired-lan@osuosl.org>;
 Thu, 20 Oct 2022 22:44:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 35CD4843C3
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 35CD4843C3
 for <intel-wired-lan@osuosl.org>; Thu, 20 Oct 2022 22:44:11 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10506"; a="286573813"
X-IronPort-AV: E=Sophos;i="5.95,200,1661842800"; d="scan'208";a="286573813"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2022 15:44:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10506"; a="875291562"
X-IronPort-AV: E=Sophos;i="5.95,200,1661842800"; d="scan'208";a="875291562"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga006.fm.intel.com with ESMTP; 20 Oct 2022 15:44:09 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 20 Oct 2022 15:44:09 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 20 Oct 2022 15:44:09 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 20 Oct 2022 15:44:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lmRZXmrt58cA3bLrtzX+ngl1+BnEnIR2XehzD5bJIRBP3XkuNn9bQOiJd9VkhQOD7BYKDj3O4RA6z1pnzY+oAsBL209qPpp7vjOkhJeghe8F0hPlXRELVUeD3sOy4uDDPMtBAMiXkvmQNT7krowuzagdzqDWq6DRV2WyrUQ0oaBGt2myPAMwTyLUFrWwGHymfGUIUTaid62HIfsR4hfLCwfti54d0pBrzlxSs/bQAtoWJunSjKflsrmMJqF1cW1vlidSv6ZhczzxxoaTC2ghL10fHTAinc3huipyHmwT9ers4LVzeV3EG+9xjL9+r7RpiLAIo9UQhxypjv6nhchxew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LCuR9HywZK4NX3HLgSLzexwM4TTVHwPiXJOZCTfJ4qw=;
 b=glkV0g1dXp96jcX88yhtNrASdkY6m6NfectZO/IY21KWDpRVr1hbJzb9hG6KGivF/ue8bmDoL3V1E5YPAlWvRgdyU9+++g32Xw1cqtQ53/RRUOxYxvAJiemPZHUUEiMknr+q3Q0QmHxmnwKLDNOsuuPG9jo4ezozVe9PBcdq0OGvPUrquSlx+SO38RO0g4xYQOFeqwtHsgTVQNimnSKf8uz4Umt0mzxrsUGzjjn3pXlWb/tfBbGKNlZ3NnTyG4N6n5rjcwkIES8YiMBemKd4foiBHacxfqpD5rR9eVzrN8hddfbbQcGCUEd3M2ytGo2gmUWiaKpgMckuaXnTrCPMKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com (2603:10b6:a03:459::14)
 by SJ0PR11MB5770.namprd11.prod.outlook.com (2603:10b6:a03:421::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.33; Thu, 20 Oct
 2022 22:44:07 +0000
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::ec4c:6d34:fe3f:8c60]) by SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::ec4c:6d34:fe3f:8c60%4]) with mapi id 15.20.5723.033; Thu, 20 Oct 2022
 22:44:07 +0000
From: "Zulkifli, Muhammad Husaini" <muhammad.husaini.zulkifli@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Thread-Topic: [Intel-wired-lan] [PATCH v1] igc: Qbv scheduling enchancement
 using frst flag bit
Thread-Index: AQHY5JPtYfjzjEhfVkeqgGcFls+WCa4XYmIAgAB+z6A=
Date: Thu, 20 Oct 2022 22:44:07 +0000
Message-ID: <SJ1PR11MB6180F492E2EC503099796340B82A9@SJ1PR11MB6180.namprd11.prod.outlook.com>
References: <20221020145316.1543-1-muhammad.husaini.zulkifli@intel.com>
 <53da60fb-3741-2869-b97e-65da9a8aac67@molgen.mpg.de>
In-Reply-To: <53da60fb-3741-2869-b97e-65da9a8aac67@molgen.mpg.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
dlp-reaction: no-action
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6180:EE_|SJ0PR11MB5770:EE_
x-ms-office365-filtering-correlation-id: 68911965-d754-4cc1-1ab0-08dab2ec992a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ymdTxV26N/7pBVIII3pbTQxBUK4JjpzKByQprWVaR9KPDsUcSXtdBGTOGbJV3NxZkyFKTj+RBhmh84DGRNqsBCGnbWxMrPmBBT28BUlHXViEK4V9VrkX+IdeIHklVRsoa/mizRlw7XrNjkO79aruGukpYq2PHboGn2bnixTqBAkjxtAJui90D2hPgTQ1p/n/vG4tdBcNlZ8BcKJv3WGuA+rgdMlhAY4/BdAHXYijMrK9aVAHB3hA1/KqVymwKDiecOfwyipUFJ8hXTMc2vg+SzG1+vp7N9oF9Mq5KOJwACTntAg+SEODoICzh+0uaPXZwQ4Q+JK2fMDNsOZIj0StMtIo1gGZBkrbbF7DKvuPRRrmPdnky0DyjteS0SBSWgCz8YsDjmpeYV28GNEl1omK7Id0iQ7VbfDEqE3zv/BaL9JZTJtNi6HknfzXqGgt+OtdwXieAAQAcK4LhREOLzlG17u7VCYESvnzEe1ywCyDssARzD3RfGFFd3xQI3Dy4BAl7QGuH8kdSIgrHd4qV6ZuR5iXvVljgPTRUhCcf7xaAYJ6yZ6h9w7Jb+D7mnU/3O0+TKX7/EQBzWvG6jZlXto6kaMCdMRrpGUkVFEAKA9xbJr9a3hS3IvBxVwSJtPV+Vqmnao1TShtB6Ii634yAJYMsUyRWDz9HwPrEHsieyy6vrcvMAnKLCrmzYflrDJ7ONSrEfmdvfytwnUhwav1yL3bq3C3L6dC7qwG2iRVSFnGpicmcOSHXh0LVLzlN/3SXMdL
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6180.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(396003)(39860400002)(136003)(376002)(366004)(451199015)(9686003)(38070700005)(33656002)(6506007)(8676002)(122000001)(66476007)(26005)(7696005)(82960400001)(86362001)(4744005)(66446008)(64756008)(52536014)(4326008)(5660300002)(2906002)(8936002)(66556008)(38100700002)(41300700001)(66946007)(55016003)(76116006)(83380400001)(316002)(53546011)(186003)(6916009)(54906003)(478600001)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?YUx3QW10c05IdTNGbm1leHFpNGRkWVdZQ0MxRWdZWUZ5aE1NbkNZbEZCd25j?=
 =?utf-8?B?Qkt6UHpEY0JsWWc4VEZjVEJWNlRPN0t1empKQW11cXY5UFdVTFJUOW52RmpW?=
 =?utf-8?B?ZFNlS29yNDdhQTVWZUo5UUxjUy9VMFBiVHhpdXFEZjJtaHpya1l6QlJ1SVZp?=
 =?utf-8?B?Wm4wYU9ESVFkWjRzTytFNHdyemUvbDNZSVU0dzEvQUllZVNpdXI2RWJjdW9V?=
 =?utf-8?B?ek1TaTN6UU9Yc0pCOW8rMEZnZWdPZ0lyLzBPaG03Y3Vvd3QvalZOKzNIcWp2?=
 =?utf-8?B?M2svRHJZdUNDVER4Um16eUxxNVJEaFBUelpVTklBZGhyYnY1T3dBY29lWFQ3?=
 =?utf-8?B?blcvN29ZMEJETUo2QUFld0hKSWYrM3hGSDhnUHNIYXFST0ExQUpocW9hTHFR?=
 =?utf-8?B?eEJmN2Y5eUtXN0xxMGdJck1rK3J1UGhRZXJZeWtIRHg1WDYrbHJibUxITWF3?=
 =?utf-8?B?dElNZlZrTms3M2RZMTZsUEVzR1VvUDQ1NWRxSGxBR2hOazVsclBOTzA5R0JT?=
 =?utf-8?B?em95RDQ0ckhzRUcyN2JIUXloTUZaV0pucGowVkYwa2hYWVBueXJQRnVjQXlp?=
 =?utf-8?B?ZmJ0Um9VVGtBS2J4RzVsMmlDckdubHdNYlJKQkkzOHN1bmJ2TCtDNEYyeGVa?=
 =?utf-8?B?UGxlREdoOVMxWnByWEFodzduQWtXK203d2dnUXduNlluLzA5d2VrOXZXd09U?=
 =?utf-8?B?RGlINFdKTThrYU5mZll3REk0cWtKSEpBUmtMbUZMN2M3d3FBNWFOelNyNWtk?=
 =?utf-8?B?K3Q0Tmg3TmhoSzVlYjVZSlV3RHNCNU5Zdm5IeWVNMVR0MEMvTklmZ3RLdzFF?=
 =?utf-8?B?MVBxcW50cUV6T3VFSVBGL0dkTHpjOENUYS9nQ0djNDdnZXlKTWg5SXRHTDVQ?=
 =?utf-8?B?dGY0SHEvemVpQ1R2cUdPbEdzSzdsa1MvNkx1RTk5cUJIeFIzdXIwZDdYaVYx?=
 =?utf-8?B?aVFlRnU5a3IzOEx3bUhReUVVVHAzVXhoTU1qdjVKaXdzK3BJVTBrZDgrWStq?=
 =?utf-8?B?S1BLcXVGQjZlZEVhV3JNMlk3NnVIcnpna0JHbUpPMThrMlVEWHdSMDB0WlVy?=
 =?utf-8?B?V1Fka2pNS0hCN0xDQ2YzZFd3ZDdGb0dVbHlscmgvZnc4Y1VmWDVjY1daRSsy?=
 =?utf-8?B?UFJOM1M0ZmYvdzdVVjJrT2NRbVJzQzJab2FISisrbXRHN2g2VGJlN2tBQlFG?=
 =?utf-8?B?bHJXYzZtUmdvK2FqUjI1bEN0bGFtYk5ZQytqVjlRanRmUy9zYU9PRnBvYVRr?=
 =?utf-8?B?dWp4enNNVXVmdXdsMnBxUitvd3VpTllyc0xBTitFeFhDSHhzUWgxb2JrcnJk?=
 =?utf-8?B?NnpNajdnVHR2YW1sZFRXamE4ZGtuWXJZWTRMNXBVWnBSbDFuZGJkblFQUzVC?=
 =?utf-8?B?VElFNE8vTFBzSzI1M3pvVmtKWENjOVlXRThXWmd6bmxYZWxLZ1FEZFNsaUxX?=
 =?utf-8?B?UkxQVDY4eFhDYmJFcE1XK1ZYV2RtT0dUNVYyYk5HbDlObEd6SXlrWkNmLzZi?=
 =?utf-8?B?YlMrb1cvb0JNRTZBQkRkM3B4Y0Y3M1FtNC9ZNGZ3bnh1Q2RKREtWcEd3YUsy?=
 =?utf-8?B?elV0c1lpWmlxN0hEVWhWSE1TZHdKRE5yVzNQTEQrdksyNWdxME12ZWRISVh5?=
 =?utf-8?B?eFRGRDhZeGhLZW50VUVnZVhmc21PN2MwS3hENHMrWEgvem5JdytxbE1qT0xp?=
 =?utf-8?B?MDRuSVQvRFJPS09OZFQ5dFFHaFpxNWRIZFhQNFNEdi92eTE0TEJkeEJ5TVhB?=
 =?utf-8?B?dVl6bm03WHNINGhYSyswdnVPNVMxTzlqRE1FNnQwR25qTXhQTHFjSUtzQkpP?=
 =?utf-8?B?WTVnc3d5eE9JMEE1ajVCVnVEMHBnaDNGc2tpTkNYeS9RYXpySEw1OUhmYTMy?=
 =?utf-8?B?dy9sS1pSd0JoK3hFMzIzcDlkYXgrdU5nYWdqOVZPeVd5bjhNZ09Ka1IzdHdC?=
 =?utf-8?B?TkxoTXpIMmlPRURmcEwxNEpDZUQ3NzlKSEZ5N2grTktqT1FMYXNNSXQ0dUJJ?=
 =?utf-8?B?VGtmdDJkRTkvK1cxUGhleG1UNjI1dmNFOFZJK2h3QlNuUEZDTGpXZktWbGxE?=
 =?utf-8?B?RzRvWG13OVIrMXlyUEV4TVk1TWw5ZjNEZUczaFJVdWUvb3FOOXFwR3dTV1Ba?=
 =?utf-8?B?a2JXVTlxS2dIdS9oNkdocHZmZ1dTSnFUcXRMVmV6SUJGUHBYdllJUWlPSU4v?=
 =?utf-8?Q?q/YEJELECH9jwIgFlg22cvA=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6180.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 68911965-d754-4cc1-1ab0-08dab2ec992a
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Oct 2022 22:44:07.7420 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: akYw2WM5nNloBitUVZ+XpcUNm1rK5RSQpGHav9ZvAUlvkryzsqra/6SKcYNyLprJAh+1R/Nx9BYTjtIjg0qZcVpFOzRsRA5uXeyxEPaF5zaPj1PW9fN3+3rwfGycDvLQ
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5770
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666305851; x=1697841851;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=LCuR9HywZK4NX3HLgSLzexwM4TTVHwPiXJOZCTfJ4qw=;
 b=cF7vyoE0RxdUaTpcPc6BhL0fl7JYYLM8XVdJSVMsqwveUN/H57oiVYlv
 gSTYD83Hy+2oKLFABlAYynKlE+3B23l21oDJER3jdile1GIiqZOfrguRS
 nh9aSoY4Xg0t8UTI2GlsGEZUBvX4xQ/hJML02QUIoayASLJ9dDNzLQ+yM
 0yfyhXGXO1JkA+2IcvvD41yGMEvj2e6MXQb8TuVz89Qo0o+dimrcYyFUz
 rH3eish5+4As+DSe2GVS13wfkvKa/rlygi7Grlkp/B0izm2youQ7Mvu1i
 vE5DluPs62eU91FjmndOVMix+IlIfdAnEeEQ22tWuDSk2VTdNGbf/rTQV
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cF7vyoE0
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v1] igc: Qbv scheduling enchancement
 using frst flag bit
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
Cc: "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>, "Chilakala,
 Mallikarjuna" <mallikarjuna.chilakala@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SGkgUGF1bCwNCg0KVGhhbmtzIGZvciB0aGUgcmV2aWV3Lg0KDQo+IC0tLS0tT3JpZ2luYWwgTWVz
c2FnZS0tLS0tDQo+IEZyb206IFBhdWwgTWVuemVsIDxwbWVuemVsQG1vbGdlbi5tcGcuZGU+DQo+
IFNlbnQ6IFRodXJzZGF5LCAyMCBPY3RvYmVyLCAyMDIyIDExOjA4IFBNDQo+IFRvOiBadWxraWZs
aSwgTXVoYW1tYWQgSHVzYWluaSA8bXVoYW1tYWQuaHVzYWluaS56dWxraWZsaUBpbnRlbC5jb20+
DQo+IENjOiBDaGlsYWthbGEsIE1hbGxpa2FyanVuYSA8bWFsbGlrYXJqdW5hLmNoaWxha2FsYUBp
bnRlbC5jb20+OyBpbnRlbC13aXJlZC0NCj4gbGFuQG9zdW9zbC5vcmcNCj4gU3ViamVjdDogUmU6
IFtJbnRlbC13aXJlZC1sYW5dIFtQQVRDSCB2MV0gaWdjOiBRYnYgc2NoZWR1bGluZyBlbmNoYW5j
ZW1lbnQNCj4gdXNpbmcgZnJzdCBmbGFnIGJpdA0KPiANCj4gRGVhciBNdWhhbW1hZCwNCj4gDQo+
IA0KPiBUaGFuayB5b3UgZm9yIHRoZSBwYXRjaC4NCj4gDQo+IFRoZXJlIGlzIGEgc21hbGwgdHlw
byBpbiB0aGUgc3VtbWFyeS90aXRsZTogZippKnJzdC4gQWxzbyBpdOKAmWQgYmUgbmljZSBpZiB5
b3UNCj4gbWFkZSBpdCBhIHN0YXRlbWVudC4gTWF5YmU6DQo+IA0KPiA+IGlnYzogRW5oYW5jZSBR
YnYgc2NoZWR1bGluZyBieSB1c2luZyBmaXJzdCBmbGFnIGJpdA0KDQpUaGUgYml0IHdhcyBtZW50
aW9uZWQgYXMgImZyc3QgZmxhZyIgYml0IGluIHRoZSBzb2Z0d2FyZSB1c2VyIG1hbnVhbC4NCg0K
PiANCj4gDQo+IEtpbmQgcmVnYXJkcywNCj4gDQo+IFBhdWwNCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QK
SW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
